import 'package:flutter/material.dart';
import 'package:baitap_flutter/exam/bai1/my_place.dart';
import 'package:baitap_flutter/exam/bai2/my_classroom.dart';
import 'package:baitap_flutter/exam/bai3/my_product.dart';
import 'package:baitap_flutter/exam/bai4/my_list_place.dart';
import 'package:baitap_flutter/exam/bai5/form_login.dart';
import 'package:baitap_flutter/exam/bai6/form_register.dart';
//import 'package:baitap_flutter/exam/bai7/form_feedback.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _MenuItem(1, Icons.home, 'My Place', const MyPlace()),
      _MenuItem(2, Icons.school, 'My Classroom', const MyClassroom()),
      _MenuItem(3, Icons.person, 'My Product', const MyProduct()),
      _MenuItem(4, Icons.palette, 'My List Place', const MyListPlace()),
      _MenuItem(5, Icons.login, 'Form Login', const FormLogin()),
      _MenuItem(6, Icons.person_add, 'FormRegister', const FormRegister()),
      _MenuItem(7, Icons.feedback, 'FormFeedback', const FormFeedback()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách bài tập Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xFFF9F6EE),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Bài tập Flutter\nChọn bài tập để xem',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ...items.map((it) => Column(
                children: [
                  ListTile(
                    leading: Icon(it.icon, color: Colors.blueGrey.shade700),
                    title: Text(
                      '${it.index}. ${it.title}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    hoverColor: Colors.blue.withOpacity(0.07),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => it.page),
                      );
                    },
                  ),
                  const Divider(height: 1, thickness: 0.5),
                ],
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '👈 Chọn một mục ở bên trái để xem nội dung',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _MenuItem {
  final int index;
  final IconData icon;
  final String title;
  final Widget page;
  const _MenuItem(this.index, this.icon, this.title, this.page);
}
