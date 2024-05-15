import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryTab(title: 'Recommend'),
          CategoryTab(title: 'Top'),
          CategoryTab(title: 'Indoor'),
          CategoryTab(title: 'Outdoor'),
        ],
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;

  CategoryTab({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
