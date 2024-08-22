import 'package:auto_select_and_scroll/models/product_model.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  height: constraints.maxHeight * 0.55,
                  width: double.infinity,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Text(
                product.price.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        );
      },
    );
  }
}
