import 'package:flutter/material.dart';
import 'package:laboratorul2/widgets/welcome_page2.dart';
import 'package:laboratorul2/widgets/typography.dart';
import 'package:laboratorul2/widgets/CourseDetail.dart';
import 'package:laboratorul2/widgets/lectures_block.dart';
import 'package:laboratorul2/widgets/skills_cards.dart';
import 'package:laboratorul2/widgets/sign_up_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          WelcomePage2(), // imaginea de sus
          SizedBox(height: 21),
          TypographyWidget(),   // la 21px sub imagine
          SizedBox(height: 21),
          CourseDetail(),       // detalii curs
          SizedBox(height: 21),
          LecturesBlock(),      // bloc cu iconite (carte, ceas, medalie)
          SizedBox(height: 24),
          Center(
            child: SizedBox(
              width: 347, // aliniere cu CourseDetail
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Skills',
                  style: TextStyle(
                    color: Color(0xFF00707E),
                    fontSize: 18,
                    fontFamily: 'Plus Jakarta Sans',
                    height: 0,
                    letterSpacing: 0.90,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: SizedBox(
              width: 347,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 338,
                  child: Wrap(
                    spacing: 6, // micșorat pentru a încăpea primul rând
                    runSpacing: 13,
                    children: const [
                      SkillChip(text: 'Typography', width: 97),
                      SkillChip(text: 'Layout composition', width: 149),
                      SkillChip(text: 'Branding', width: 79),
                      SkillChip(text: 'Visual communication', width: 162),
                      SkillChip(text: 'Editorial design', width: 122),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 35),
          SignUpButton(),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Start your 7-day free Trial',
              style: TextStyle(
                color: Color(0xFF6C6C6C),
                fontSize: 12,
                fontFamily: 'Plus Jakarta Sans',
                decoration: TextDecoration.underline,
                height: 0,
                letterSpacing: 0.24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
