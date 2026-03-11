import 'package:flutter/material.dart';
import 'product.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({super.key});

  @override
  State<MyProduct> createState() => MyProductState();
}

class MyProductState extends State<MyProduct> {
  final List<Product> products = const [
    Product(
      id: 1,
      name: 'Apple',
      unit: 'Kg',
      price: 20,
      imageUrl: 'https://images.unsplash.com/photo-1630563451961-ac2ff27616ab?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGV8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Mango',
      unit: 'Doz',
      price: 30,
      imageUrl: 'https://images.unsplash.com/photo-1601493700631-2b16ec4b4716?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuZ298ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 3,
      name: 'Banana',
      unit: 'Doz',
      price: 10,
      imageUrl: 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFuYW5hfGVufDB8fDB8fHww',
    ),
    Product(
      id: 4,
      name: 'Grapes',
      unit: 'Kg',
      price: 35,
      imageUrl: 'https://images.unsplash.com/photo-1596363505729-4190a9506133?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JhcGVzfGVufDB8fDB8fHww',
    ),
    Product(
      id: 5,
      name: 'Watermelon',
      unit: 'Pc',
      price: 25,
      imageUrl: 'https://images.unsplash.com/photo-1593558628703-535b2556320b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHdhdGVybWVsb258ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 6,
      name: 'Kiwi',
      unit: 'Pc',
      price: 40,
      imageUrl: 'https://images.unsplash.com/photo-1618897996318-5a901fa6ca71?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8a2l3aXxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 7,
      name: 'Orange',
      unit: 'Doz',
      price: 15,
      imageUrl: 'https://images.unsplash.com/photo-1580052614034-c55d20bfee3b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8b3JhbmdlfGVufDB8fDB8fHww',
    ),
    Product(
      id: 8,
      name: 'Peach',
      unit: 'Kg',
      price: 18,
      imageUrl: 'https://media.istockphoto.com/id/2242133634/fr/photo/p%C3%AAche-rose-avec-feuille-isol%C3%A9e-sur-fond-blanc-p%C3%AAche-blanche-japonaise-fra%C3%AEche-sur-fond-blanc.webp?a=1&b=1&s=612x612&w=0&k=20&c=bB-t16oUYx9lBy9WkQbo1k83VdW5nPG27HsR7G1EiFs=',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: products.length,
        itemBuilder: (context, index) => _productItem(products[index]),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.black,
      centerTitle: true,
      elevation: 3,
      title: const Text(
        'Product List',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }

  Widget _productItem(Product p) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              p.imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 70,
                  height: 70,
                  color: Colors.grey.shade300,
                  alignment: Alignment.center,
                  child: const Icon(Icons.image_not_supported_outlined),
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Name: ${p.name}',
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text('Unit: ${p.unit}', style: const TextStyle(fontSize: 13)),
                const SizedBox(height: 2),
                Text('Price: \$${p.price.toStringAsFixed(0)}',
                    style: const TextStyle(fontSize: 13)),
              ],
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Added ${p.name} to cart')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              elevation: 0,
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
