import 'package:flutter/material.dart';

class MyPlace extends StatefulWidget {
  const MyPlace({super.key});

  @override
  State<MyPlace> createState() => _MyPlaceState();
}

class _MyPlaceState extends State<MyPlace> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _detailsKey = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToDetails() {
    final ctx = _detailsKey.currentContext;
    if (ctx == null) return;

    Scrollable.ensureVisible(
      ctx,
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeInOut,
      alignment: 0.05,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              block1(onScrollDown: _scrollToDetails),

              SafeArea(
                top: false,
                child: Column(
                  children: [
                    Container(key: _detailsKey, child: block2()),
                    block3(),
                    block4(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget block1({required VoidCallback onScrollDown}) {
    const src =
        "https://images.unsplash.com/photo-1732682953527-b137648a0220?q=80&w=1173&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.black12,
            child: Image.network(
              src,
              fit: BoxFit.cover,
              alignment: const Alignment(0, 1),
              width: double.infinity,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Icon(Icons.broken_image, size: 40));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget block2() {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Điện Kiến Trung",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  "Hoàng thành Huế, Việt Nam",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.red),
              SizedBox(width: 4),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }

  Widget block3() {
    Widget buildButton(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton(Icons.call, "CALL"),
          buildButton(Icons.near_me, "ROUTE"),
          buildButton(Icons.share, "SHARE"),
        ],
      ),
    );
  }

  Widget block4() {
    const data =
            "Điện Kiến Trung là một công trình kiến trúc đặc biệt nằm trong Hoàng thành Huế, "
            "được xây dựng vào đầu thế kỷ XX dưới triều vua Khải Định và hoàn thiện dưới "
            "thời vua Bảo Đại. Công trình nổi bật với sự kết hợp độc đáo giữa kiến trúc "
            "truyền thống cung đình Việt Nam và phong cách châu Âu hiện đại. Mặt tiền của "
            "điện được trang trí cầu kỳ với nhiều họa tiết, phù điêu và hệ thống cửa sổ "
            "màu đỏ đặc trưng. Đây từng là nơi sinh hoạt và làm việc của vua Bảo Đại – "
            "vị hoàng đế cuối cùng của triều Nguyễn. Ngày nay, sau quá trình trùng tu, "
            "Điện Kiến Trung trở thành một điểm tham quan nổi bật trong quần thể di tích "
            "Cố đô Huế, thu hút đông đảo du khách đến tham quan và tìm hiểu lịch sử.";

    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        data,
        style: TextStyle(fontSize: 14, height: 1.4),
      ),
    );
  }
}