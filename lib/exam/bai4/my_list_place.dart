import 'package:flutter/material.dart';
import 'package:baitap_flutter/exam/bai4/list_place.dart';
class MyListPlace extends StatelessWidget {
  const MyListPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // quay lại màn hình trước
          },
        ),
        title: const Text('My List Place'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          PlaceItem(
            imageUrl: 'https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8fDA%3D',
            title: 'EMM Hotel Hue',
            rating: '9.1',
            ratingText: 'Tuyệt hảo · 677 đánh giá',
            location: 'Huế · Cách bạn 300m',
            room: '1 phòng khách sạn: 1 giường đôi hoặc 2 giường đơn',
            price: 'US\$38',
            highlight: 'Bao bữa sáng',
            noPrepay: 'Đã bao gồm thuế và phí',
            showStars: true,
          ),
          PlaceItem(
            imageUrl: 'https://images.unsplash.com/photo-1549294413-26f195200c16?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8fDA%3D',
            title: 'LittleBloom homestay',
            rating: '10',
            ratingText: 'Xuất sắc · 4 đánh giá',
            location: 'Thôn Trường Giang · Cách bạn 300m',
            room: '1 phòng riêng: 1 giường',
            price: 'US\$15',
            warning: 'Chỉ còn 1 căn với giá này trên Booking.com',
            noPrepay: 'Không cần thanh toán trước',
          ),
          PlaceItem(
            imageUrl: 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGhvdGVsfGVufDB8fDB8fHww',
            title: 'Mặt Ong HOUSE',
            rating: '10',
            ratingText: 'Xuất sắc · 2 đánh giá',
            location: 'Huế · Cách bạn 3500m',
            room: '1 phòng riêng: 1 giường',
            price: 'US\$13',
            warning: 'Chỉ còn 2 căn với giá này trên Booking.com',
          ),
        ],
      ),
    );
  }
}


