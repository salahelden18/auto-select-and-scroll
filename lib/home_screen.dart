import 'package:flutter/material.dart';
import 'models/category_model.dart';
import 'models/constants.dart';
import 'widgets/header_item_widget.dart';
import 'widgets/section_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController categoriesController = ScrollController();
  final ScrollController productsController = ScrollController();

  CategoryModel? selectedCategory;
  Map<int, GlobalKey> productsKeys = {};
  Map<int, GlobalKey> categoriesKeys = {};
  bool shouldScroll = true;

  @override
  void initState() {
    super.initState();
    selectedCategory = data[0];

    // Initialize global keys for products and categories
    _initializeGlobalKeys();

    // Add listener for products scrolling
    productsController.addListener(_productsScrollListener);
  }

  _productsScrollListener() {
    // Get the height of the toolbar and app bar combined
    final topOffset = kToolbarHeight + MediaQuery.of(context).padding.top;

    for (var entry in productsKeys.entries) {
      final keyContext = entry.value.currentContext;
      if (keyContext != null) {
        final RenderBox renderBox = keyContext.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);

        // getting the item height
        final itemHeight = renderBox.size.height;

        // checking if the item is in the screen
        // this means this is the visible one
        if (position.dy <= topOffset &&
            (position.dy + itemHeight) >= topOffset) {
          final newCategory =
              data.firstWhere((elemnt) => elemnt.id == entry.key);

          if (shouldScroll && newCategory.id != selectedCategory?.id) {
            _scrollToCategory(newCategory.id);
          }

          // only rebuild if the category actually changes
          if (newCategory.id != selectedCategory!.id) {
            setState(() {
              selectedCategory = newCategory;
            });
          }

          break;
        }
      }
    }
  }

  Future _scrollToCategory(int id) async {
    // used to avoid animating this list while we selecting item
    if (!shouldScroll) return;

    double width = 0;
    // calculate the total offset that we should scroll
    for (int i = 1; i < id; i++) {
      final categoryContext = categoriesKeys[i]!.currentContext;
      if (categoryContext != null) {
        final RenderBox renderBox =
            categoryContext.findRenderObject() as RenderBox;
        // get all the previous items and add the with of them to this one
        width += renderBox.size.width;
      }
    }

    // Get the maximum scroll extent
    final maxScrollExtent = categoriesController.position.maxScrollExtent;

    // Clamp the target width to avoid exceeding the maximum scroll extent
    // used to avoid the bouncing happens while the offset is bigger than the scroll extent
    final targetOffset = width > maxScrollExtent ? maxScrollExtent : width;

    await categoriesController.animateTo(targetOffset,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  Future<void> _scrollToSection(int id) async {
    final keyContext = productsKeys[id]?.currentContext;

    if (keyContext != null) {
      await Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(milliseconds: 300),
        alignment: 0.02,
        curve: Curves.linear,
      );
    }
  }

  _initializeGlobalKeys() {
    for (var item in data) {
      GlobalKey globalKey = GlobalKey();
      GlobalKey categoryKey = GlobalKey();
      productsKeys.putIfAbsent(item.id, () => globalKey);
      categoriesKeys.putIfAbsent(item.id, () => categoryKey);
    }
  }

  @override
  void dispose() {
    super.dispose();
    productsController.dispose();
    categoriesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // categories sections
            SizedBox(
              height: 40,
              child: SingleChildScrollView(
                controller: categoriesController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    data.length,
                    (index) => Row(
                      children: [
                        if (index == 0) const SizedBox(width: 10),
                        HeaderItemWidget(
                          onPress: () async {
                            // avoid scrolling the category section when selecting
                            shouldScroll = false;
                            await _scrollToSection(data[index].id);
                            // reassigning the scrolling again

                            shouldScroll = true;
                          },
                          category: data[index],
                          isSelected: selectedCategory?.id == data[index].id,
                          key: categoriesKeys[data[index].id],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // products section
            if (selectedCategory != null)
              Expanded(
                child: SingleChildScrollView(
                  controller: productsController,
                  child: Column(
                    children: List.generate(
                        data.length,
                        (index) => SectionItemWidget(
                              category: data[index],
                              key: productsKeys[data[index].id],
                            )),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
