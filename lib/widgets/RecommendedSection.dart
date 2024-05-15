import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RecommendedItem(
                  title: 'Flower pot',
                  price: '\$27.30',
                  imageUrl:
                      'https://media.istockphoto.com/id/1144281903/photo/peace-lily-plant-in-a-bright-home.jpg?s=2048x2048&w=is&k=20&c=0jkP7MeSFEe-BP9ziD6nAU2j7XgDpuPrA__50atBZbY=',
                  backgroundColor: Colors.orange,
                ),
                RecommendedItem(
                  title: 'Potted lily',
                  price: '\$36.20',
                  imageUrl:
                      'https://media.istockphoto.com/id/1247359984/photo/peace-lily-plant-in-a-bright-home.jpg?s=2048x2048&w=is&k=20&c=ggo2ed4EauwwaaNbDohYZtQXlUDp-jGTyuW0EKE7FHc=',
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final Color backgroundColor;

  RecommendedItem({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 100, width: 200),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: const Color.fromARGB(255, 62, 50, 50),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
