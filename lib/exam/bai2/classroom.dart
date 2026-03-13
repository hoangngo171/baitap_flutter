class Course {
  final String title;
  final String code;
  final int student;
  final String image;

  const Course({
    required this.title,
    required this.code,
    required this.student,
    required this.image,
  });
}

// Dữ liệu mẫu (tách khỏi UI)
const List<Course> courses = [
  Course(
    title: "XML và ứng dụng - Nhóm 1",
    code: "2025-2026.1.TIN4583.001",
    student: 58,
    image:
        "https://media.istockphoto.com/id/504263659/fr/photo/banque-internet-en-ligne.webp?a=1&b=1&s=612x612&w=0&k=20&c=bZtdjmNQbjgBtdMObBgikx-8byNkyPXyIdtJgliBCaA=",
  ),
  Course(
    title: "Lập trình ứng dụng cho các thiết bị di động - Nhóm 6",
    code: "2025-2026.1.TIN4403.006",
    student: 55,
    image:
        "https://images.unsplash.com/photo-1616469829139-f7f1702d2036?w=600",
  ),
  Course(
    title: "Lập trình ứng dụng cho các thiết bị di động - Nhóm 5",
    code: "2025-2026.1.TIN4403.005",
    student: 52,
    image:
        "https://images.unsplash.com/photo-1616469829526-7057a1427626?w=600",
  ),
  Course(
    title: "Lập trình ứng dụng cho các thiết bị di động - Nhóm 4",
    code: "2025-2026.1.TIN4403.004",
    student: 50,
    image:
        "https://images.unsplash.com/photo-1616469832424-6927678c6b4b?w=600",
  ),
  Course(
    title: "Lập trình ứng dụng cho các thiết bị di động - Nhóm 3",
    code: "2025-2026.1.TIN4403.003",
    student: 52,
    image:
        "https://images.unsplash.com/photo-1616469829167-0bd76a80c913?w=600",
  ),
];
