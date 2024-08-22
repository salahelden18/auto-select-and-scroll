import 'package:auto_select_and_scroll/models/category_model.dart';
import 'package:auto_select_and_scroll/models/constants.dart';
import 'package:flutter/material.dart';

class HeaderItemWidget extends StatelessWidget {
  const HeaderItemWidget({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPress,
  });

  final CategoryModel category;
  final bool isSelected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? primaryColor : Colors.white,
        ),
        child: Text(
          category.title,
          style: TextStyle(color: isSelected ? Colors.white : null),
        ),
      ),
    );
  }
}
