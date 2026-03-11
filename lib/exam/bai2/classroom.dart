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
        "https://images.unsplash.com/photo-1501362343565-93d7318347cf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8JUM0JTkxJUM2JUIwJUUxJUJCJTlEbmclMjBjaCVDMyVBMm4lMjB0ciVFMSVCQiU5RGl8ZW58MHx8MHx8fDA%3D",
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
