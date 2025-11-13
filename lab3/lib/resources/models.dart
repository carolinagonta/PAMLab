class UserModel {
  final String name;
  final int notifications;
  UserModel({required this.name, required this.notifications});
  factory UserModel.fromJson(Map<String, dynamic> j) =>
      UserModel(name: j['name'] ?? '', notifications: j['notifications'] ?? 0);
}

class CourseItem {
  final String id, title, institute, image;
  final double rating;
  final int? progress; // null pentru listele fără progres
  CourseItem({
    required this.id,
    required this.title,
    required this.institute,
    required this.image,
    required this.rating,
    this.progress,
  });
  factory CourseItem.fromJson(Map<String, dynamic> j) => CourseItem(
    id: j['id'],
    title: j['title'],
    institute: j['institute'] ?? '',
    image: j['image'] ?? '',
    rating: (j['rating'] as num).toDouble(),
    progress: j['progress'],
  );
}

class CategoryItem {
  final String id, name;
  CategoryItem({required this.id, required this.name});
  factory CategoryItem.fromJson(Map<String, dynamic> j) =>
      CategoryItem(id: j['id'], name: j['name']);
}

class HomeData {
  final UserModel user;
  final List<CourseItem> continueWatching, suggestions, topCourses;
  final List<CategoryItem> categories;
  HomeData({
    required this.user,
    required this.continueWatching,
    required this.categories,
    required this.suggestions,
    required this.topCourses,
  });
  factory HomeData.fromJson(Map<String, dynamic> j) => HomeData(
    user: UserModel.fromJson(j['user']),
    continueWatching: (j['continueWatching'] as List)
        .map((e) => CourseItem.fromJson(e))
        .toList(),
    categories:
    (j['categories'] as List).map((e) => CategoryItem.fromJson(e)).toList(),
    suggestions:
    (j['suggestions'] as List).map((e) => CourseItem.fromJson(e)).toList(),
    topCourses:
    (j['topCourses'] as List).map((e) => CourseItem.fromJson(e)).toList(),
  );
}

// --- detalii ---
class CourseDetails {
  final String id, title, institute, description, thumbnail, duration, certification;
  final double rating;
  final int price, lectures, enrolledStudents;
  final List<String> skills;
  CourseDetails({
    required this.id,
    required this.title,
    required this.institute,
    required this.description,
    required this.thumbnail,
    required this.duration,
    required this.certification,
    required this.rating,
    required this.price,
    required this.lectures,
    required this.enrolledStudents,
    required this.skills,
  });
  factory CourseDetails.fromJson(Map<String, dynamic> j) => CourseDetails(
    id: j['id'],
    title: j['title'],
    institute: j['institute'] ?? '',
    description: j['description'] ?? '',
    thumbnail: j['thumbnail'] ?? '',
    duration: j['duration'] ?? '',
    certification: j['certification'] ?? '',
    rating: (j['rating'] as num).toDouble(),
    price: j['price'] ?? 0,
    lectures: j['lectures'] ?? 0,
    enrolledStudents: j['enrolledStudents'] ?? 0,
    skills: (j['skills'] as List).map((e) => e.toString()).toList(),
  );
}
