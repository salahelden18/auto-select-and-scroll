import 'package:auto_select_and_scroll/models/category_model.dart';
import 'package:flutter/material.dart';

import 'product_model.dart';

const imageUrl = "assets/laptop.jpg";

List<CategoryModel> data = [
  CategoryModel(
    id: 1,
    title: "Electronics",
    products: [
      ProductModel(
          id: 1,
          categoryId: 1,
          title: "Smartphone",
          price: 699.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 2,
          categoryId: 1,
          title: "Laptop",
          price: 1299.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 3,
          categoryId: 1,
          title: "Tablet",
          price: 499.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 4,
          categoryId: 1,
          title: "Smartwatch",
          price: 199.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 5,
          categoryId: 1,
          title: "Headphones",
          price: 149.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 6,
          categoryId: 1,
          title: "Camera",
          price: 899.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 7,
          categoryId: 1,
          title: "Speaker",
          price: 299.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 8,
          categoryId: 1,
          title: "Monitor",
          price: 249.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 9,
          categoryId: 1,
          title: "Keyboard",
          price: 99.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 10,
          categoryId: 1,
          title: "Mouse",
          price: 79.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 2,
    title: "Clothing",
    products: [
      ProductModel(
          id: 11,
          categoryId: 2,
          title: "T-Shirt",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 12,
          categoryId: 2,
          title: "Jeans",
          price: 49.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 13,
          categoryId: 2,
          title: "Jacket",
          price: 89.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 14,
          categoryId: 2,
          title: "Sneakers",
          price: 69.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 15,
          categoryId: 2,
          title: "Hat",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 16,
          categoryId: 2,
          title: "Socks",
          price: 9.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 17,
          categoryId: 2,
          title: "Scarf",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 18,
          categoryId: 2,
          title: "Gloves",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 19,
          categoryId: 2,
          title: "Belt",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 20,
          categoryId: 2,
          title: "Sunglasses",
          price: 49.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 3,
    title: "Home Appliances",
    products: [
      ProductModel(
          id: 21,
          categoryId: 3,
          title: "Refrigerator",
          price: 799.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 22,
          categoryId: 3,
          title: "Washing Machine",
          price: 599.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 23,
          categoryId: 3,
          title: "Microwave",
          price: 199.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 24,
          categoryId: 3,
          title: "Vacuum Cleaner",
          price: 149.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 25,
          categoryId: 3,
          title: "Air Conditioner",
          price: 499.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 26,
          categoryId: 3,
          title: "Blender",
          price: 49.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 27,
          categoryId: 3,
          title: "Coffee Maker",
          price: 89.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 28,
          categoryId: 3,
          title: "Dishwasher",
          price: 699.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 29,
          categoryId: 3,
          title: "Oven",
          price: 899.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 30,
          categoryId: 3,
          title: "Toaster",
          price: 29.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 4,
    title: "Books",
    products: [
      ProductModel(
          id: 31,
          categoryId: 4,
          title: "Fiction Novel",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 32,
          categoryId: 4,
          title: "Science Fiction",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 33,
          categoryId: 4,
          title: "Biography",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 34,
          categoryId: 4,
          title: "Self-help",
          price: 18.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 35,
          categoryId: 4,
          title: "Cookbook",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 36,
          categoryId: 4,
          title: "Children's Book",
          price: 12.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 37,
          categoryId: 4,
          title: "History Book",
          price: 21.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 38,
          categoryId: 4,
          title: "Mystery Novel",
          price: 16.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 39,
          categoryId: 4,
          title: "Fantasy Novel",
          price: 22.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 40,
          categoryId: 4,
          title: "Graphic Novel",
          price: 19.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 5,
    title: "Toys",
    products: [
      ProductModel(
          id: 41,
          categoryId: 5,
          title: "Action Figure",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 42,
          categoryId: 5,
          title: "Board Game",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 43,
          categoryId: 5,
          title: "Doll",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 44,
          categoryId: 5,
          title: "Puzzle",
          price: 9.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 45,
          categoryId: 5,
          title: "Toy Car",
          price: 7.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 46,
          categoryId: 5,
          title: "Building Blocks",
          price: 39.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 47,
          categoryId: 5,
          title: "Stuffed Animal",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 48,
          categoryId: 5,
          title: "Remote Control Car",
          price: 49.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 6,
    title: "Toys",
    products: [
      ProductModel(
          id: 41,
          categoryId: 6,
          title: "Action Figure",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 42,
          categoryId: 6,
          title: "Board Game",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 43,
          categoryId: 6,
          title: "Doll",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 44,
          categoryId: 6,
          title: "Puzzle",
          price: 9.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 45,
          categoryId: 6,
          title: "Toy Car",
          price: 7.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 46,
          categoryId: 6,
          title: "Building Blocks",
          price: 39.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 47,
          categoryId: 6,
          title: "Stuffed Animal",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 48,
          categoryId: 6,
          title: "Remote Control Car",
          price: 49.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 7,
    title: "Toys",
    products: [
      ProductModel(
          id: 41,
          categoryId: 7,
          title: "Action Figure",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 42,
          categoryId: 7,
          title: "Board Game",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 43,
          categoryId: 7,
          title: "Doll",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 44,
          categoryId: 7,
          title: "Puzzle",
          price: 9.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 45,
          categoryId: 7,
          title: "Toy Car",
          price: 7.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 46,
          categoryId: 7,
          title: "Building Blocks",
          price: 39.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 47,
          categoryId: 7,
          title: "Stuffed Animal",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 48,
          categoryId: 7,
          title: "Remote Control Car",
          price: 49.99,
          imageUrl: imageUrl),
    ],
  ),
  CategoryModel(
    id: 8,
    title: "Toys",
    products: [
      ProductModel(
          id: 41,
          categoryId: 8,
          title: "Action Figure",
          price: 14.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 42,
          categoryId: 8,
          title: "Board Game",
          price: 29.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 43,
          categoryId: 8,
          title: "Doll",
          price: 19.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 44,
          categoryId: 8,
          title: "Puzzle",
          price: 9.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 45,
          categoryId: 8,
          title: "Toy Car",
          price: 7.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 46,
          categoryId: 8,
          title: "Building Blocks",
          price: 39.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 47,
          categoryId: 8,
          title: "Stuffed Animal",
          price: 24.99,
          imageUrl: imageUrl),
      ProductModel(
          id: 48,
          categoryId: 8,
          title: "Remote Control Car",
          price: 49.99,
          imageUrl: imageUrl),
    ],
  ),
];

const primaryColor = Color(0xff486966);
