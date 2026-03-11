import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String ratingText;
  final String location;
  final String room;
  final String price;
  final String? highlight;
  final String? warning;
  final bool showStars;
  final String? noPrepay;

  const PlaceItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.ratingText,
    required this.location,
    required this.room,
    required this.price,
    this.highlight,
    this.warning,
    this.noPrepay,
    this.showStars = false,
  });

  Widget _buildStars() {
    return Row(
      children: [
        Icon(Icons.star, size: 14, color: Colors.orange),
        Icon(Icons.star, size: 14, color: Colors.orange),
        Icon(Icons.star, size: 14, color: Colors.orange),
        Icon(Icons.star, size: 14, color: Colors.orange),
        Icon(Icons.star_half, size: 14, color: Colors.orange),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'Genius',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                child: Image.network(
                  imageUrl,
                  width: 120,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),

              // Badge trên ảnh
              if (highlight != null)
                Positioned(
                  top: 1,
                  left: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      highlight!,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
            ],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(Icons.favorite_border, size: 18),
                    ],
                  ),

                  if (showStars) ...[
                    const SizedBox(height: 4),
                    _buildStars(),
                  ],

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          rating,
                          style: const TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(ratingText, style: const TextStyle(fontSize: 12)),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          location,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Text(room, style: const TextStyle(fontSize: 12)),

                  if (noPrepay != null)
                    Row(
                      children: [
                        const Icon(Icons.check, size: 14, color: Colors.green),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            noPrepay!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(height: 6),

                  if (warning != null)
                    Text(
                      warning!,
                      style: const TextStyle(fontSize: 12, color: Colors.red),
                    ),

                  const SizedBox(height: 6),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}