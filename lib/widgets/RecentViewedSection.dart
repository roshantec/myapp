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
            'Recent Viewed',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RecentViewedItem(
                title: 'Green plant',
                subtitle: 'Indoor ornamental plant',
                imageUrl:
                    'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg',
              ),
              RecentViewedItem(
                title: 'Cactus',
                subtitle: 'Indoor cactus plant',
                imageUrl:
                    'https://www.istockphoto.com/photo/stylish-room-interior-with-beautiful-potted-cacti-gm1319996586-406696802',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentViewedItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  RecentViewedItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl, height: 100),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
