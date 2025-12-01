import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laboratorul2/presentation/widgets/welcome.dart';
import 'package:laboratorul2/presentation/widgets/cautare.dart';
import 'package:laboratorul2/presentation/widgets/course_card.dart';
import 'package:laboratorul2/presentation/widgets/SuggestionCard.dart';
import '../controllers/home_controller.dart';

class MainPage extends GetView<HomeController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.isLoading.value) return const Center(child: CircularProgressIndicator());
        if (controller.error.value != null) return Center(child: Text('Eroare: ${controller.error.value}'));
        final home = controller.data.value!;

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              WelcomeWidget(name: home.user.name),
              const SearchBarWidget(),
              const SizedBox(height: 17),
              const _ContinueWatchingTitle(),
              const SizedBox(height: 11),

              // două carduri din JSON
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: CourseCard(
                  imageUrl: home.continueWatching[0].image,
                  title: home.continueWatching[0].title,
                  subtitle: home.continueWatching[0].institute,
                  rating: home.continueWatching[0].rating,
                  progressPercent: home.continueWatching[0].progress ?? 0,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: CourseCard(
                  imageUrl: home.continueWatching[1].image,
                  title: home.continueWatching[1].title,
                  subtitle: home.continueWatching[1].institute,
                  rating: home.continueWatching[1].rating,
                  progressPercent: home.continueWatching[1].progress ?? 0,
                ),
              ),
              const SizedBox(height: 20),

              const _Capegories(),
              const SizedBox(height: 10),

              // chips categorie din JSON (înlocuiește CategorieWidget static)
              SizedBox(
                width: 348,
                child: Wrap(
                  spacing: 8, runSpacing: 8,
                  children: home.categories.map((c) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF00707E)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(c.name, style: const TextStyle(color: Color(0xFF00434C), fontSize: 12, fontFamily: 'Plus Jakarta Sans')),
                  )).toList(),
                ),
              ),

              const SizedBox(height: 17),
              const _SuggestionHeader(),
              const SizedBox(height: 12),

              // carusel Suggestions din JSON
              SizedBox(
                height: 152,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    children: [
                      for (final s in home.suggestions) ...[
                        SuggestionCard(
                          imageUrl: s.image,
                          title: s.title,
                          subtitle: s.institute,
                          rating: s.rating,
                          onTap: () => Get.toNamed('/details', arguments: s.id),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
              const TopCoursesHeader(),
              const SizedBox(height: 11),

              // carusel Top Courses din JSON
              SizedBox(
                height: 152,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    children: [
                      for (final t in home.topCourses) ...[
                        SuggestionCard(
                          imageUrl: t.image,
                          title: t.title,
                          subtitle: t.institute,
                          rating: t.rating,
                          onTap: () => Get.toNamed('/details', arguments: t.id),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// titluri (păstrate ca ale tale)
class _ContinueWatchingTitle extends StatelessWidget {
  const _ContinueWatchingTitle();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 349,
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Continue Watching',
          style: TextStyle(color: Color(0xFF00434C), fontSize: 18, fontFamily: 'Plus Jakarta Sans', letterSpacing: 0.90),
        ),
      ),
    );
  }
}
class _Capegories extends StatelessWidget {
  const _Capegories();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348, height: 30,
      child: Row(children: const [
        Text('Categories', style: TextStyle(color: Color(0xFF00434C), fontSize: 18, fontFamily: 'Plus Jakarta Sans', letterSpacing: 0.90)),
        Spacer(),
        Text('See All', style: TextStyle(color: Color(0xFF6C6C6C), fontSize: 10, fontFamily: 'Plus Jakarta Sans', decoration: TextDecoration.underline)),
      ]),
    );
  }
}
class _SuggestionHeader extends StatelessWidget {
  const _SuggestionHeader();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348, height: 23,
      child: Stack(children: const [
        Positioned(left: 0, top: 0, child: Text('Suggestions for You',
            style: TextStyle(color: Color(0xFF00434C), fontSize: 18, fontFamily: 'Plus Jakarta Sans', letterSpacing: 0.90, height: 1.0))),
        Positioned(right: 0, top: 10, child: Text('See All',
            style: TextStyle(color: Color(0xFF6C6C6C), fontSize: 10, fontFamily: 'Plus Jakarta Sans', decoration: TextDecoration.underline, letterSpacing: 0.20, height: 1.0))),
      ]),
    );
  }
}

class TopCoursesHeader extends StatelessWidget {
  const TopCoursesHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348, height: 23,
      child: Stack(children: const [
        Positioned(left: 0, top: 0, child: Text('Top Courses',
            style: TextStyle(color: Color(0xFF00434C), fontSize: 18, fontFamily: 'Plus Jakarta Sans', letterSpacing: 0.90, height: 1.0))),
        Positioned(right: 0, top: 10, child: Text('See All',
            style: TextStyle(color: Color(0xFF6C6C6C), fontSize: 10, fontFamily: 'Plus Jakarta Sans', decoration: TextDecoration.underline, letterSpacing: 0.20, height: 1.0))),
      ]),
    );
  }
}
