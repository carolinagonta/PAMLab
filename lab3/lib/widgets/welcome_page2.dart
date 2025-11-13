import 'package:flutter/material.dart';

const Color kPillBg = Color(0xFFD9EFF2);
const Color kTeal   = Color(0xFF00707E);

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  bool bookmarked = false;
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Stack(
          children: [
            // imaginea full-width
            Positioned.fill(
              child: Image.asset(
                'assets/icons/p2welcome.png',
                fit: BoxFit.cover,
              ),
            ),

            // overlay teal semitransparent
            Positioned.fill(
              child: Container(color: kTeal.withOpacity(0.55)),
            ),

            Positioned(
              left: 16,
              right: 16,
              top: 11,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SĂGEATĂ
                  InkWell(
                    onTap: () => Navigator.maybePop(context),
                    borderRadius: BorderRadius.circular(24),
                    child: const Padding(
                      padding: EdgeInsets.all(6),
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: kPillBg,
                      ),
                    ),
                  ),

                  // BOOKMARK
                  InkWell(
                    onTap: () => setState(() => bookmarked = !bookmarked),
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      width: 18.24,
                      height: 21.0,
                      decoration: BoxDecoration(
                        color: kPillBg,
                        borderRadius: BorderRadius.circular(5.625),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        bookmarked ? Icons.bookmark : Icons.bookmark_border,
                        size: 12.5, // aprox. din Figma
                        color: kTeal,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // buton PLAY/Pause pe centru (cerc 41 x 41, fundal #D9EFF2, icon #00707E)
            Center(
              child: InkWell(
                onTap: () => setState(() => playing = !playing),
                customBorder: const CircleBorder(),
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: const BoxDecoration(
                    color: kPillBg,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    playing ? Icons.pause : Icons.play_arrow,
                    size: 28, // se potrivește vizual cu 41px cerc
                    color: kTeal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
