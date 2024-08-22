import 'package:auto_select_and_scroll/models/category_model.dart';
import 'package:auto_select_and_scroll/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class SectionItemWidget extends StatelessWidget {
  const SectionItemWidget({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            category.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        // adding the list of the products here
        GridView.builder(
          padding: const EdgeInsets.all(10),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 200,
          ),
          itemBuilder: (ctx, index) =>
              ItemWidget(product: category.products[index]),
          itemCount: category.products.length,
        ),
      ],
    );
  }
}
