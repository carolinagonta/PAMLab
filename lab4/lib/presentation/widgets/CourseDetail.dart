import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 347,
        height: 117,
        child: Stack(
          children: [
            const Positioned(
              left: 0,
              top: 0,
              child: Text(
                'Course Details',
                style: TextStyle(
                  color: Color(0xFF00707E),
                  fontSize: 18,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.90,
                ),
              ),
            ),
            Positioned(
              left: 2,
              top: 33,
              child: SizedBox(
                width: 345,
                child: Text.rich(
                  TextSpan(
                    children: const [
                      TextSpan(
                        text:
                            "Visual Communication College's Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts  ",
                        style: TextStyle(
                          color: Color(0xFF6C6C6C),
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          height: 0,
                          letterSpacing: 0.17,
                        ),
                      ),
                      TextSpan(
                        text: 'Read More...',
                        style: TextStyle(
                          color: Color(0xFF00434C),
                          fontSize: 11,
                          fontFamily: 'Plus Jakarta Sans',
                          height: 0,
                          letterSpacing: 0.17,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
