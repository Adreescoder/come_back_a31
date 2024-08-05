import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String name;
  final double rating;
  final int reviews;
  final double price;

  const ProductCard({super.key,
    required this.imageUrl,
    required this.category,
    required this.name,
    required this.rating,
    required this.reviews,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(image: AssetImage( imageUrl,),
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              category,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  '($reviews)',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              '\$$price',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}