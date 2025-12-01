import 'package:flutter/material.dart';

class LecturesBlock extends StatelessWidget {
  const LecturesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 318,
        height: 80,
        child: Stack(
          children: const [
            // Left labels
            Positioned(
              left: 26,
              top: 0,
              child: Text(
                'Lectures',
                style: TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.70,
                ),
              ),
            ),
            Positioned(
              left: 26,
              top: 31,
              child: Text(
                'Learning Time',
                style: TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.70,
                ),
              ),
            ),
            Positioned(
              left: 26,
              top: 62,
              child: Text(
                'Certification',
                style: TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.70,
                ),
              ),
            ),

            // Right values
            Positioned(
              left: 206,
              top: 2,
              child: Text(
                '50+ Lectures',
                style: TextStyle(
                  color: Color(0xFF6C6C6C),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ),
            Positioned(
              left: 206,
              top: 33,
              child: Text(
                '4 Weeks',
                style: TextStyle(
                  color: Color(0xFF6C6C6C),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ),
            Positioned(
              left: 206,
              top: 64,
              child: Text(
                'Online Certificate',
                style: TextStyle(
                  color: Color(0xFF6C6C6C),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ),

            // Left icons
            Positioned(
              left: 0,
              top: 2,
              child: _IconAsset(path: 'assets/icons/carte.png'),
            ),
            Positioned(
              left: 0,
              top: 33,
              child: _IconAsset(path: 'assets/icons/ceas.png'),
            ),
            Positioned(
              left: 0,
              top: 62,
              child: _IconAsset(path: 'assets/icons/medalie.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconAsset extends StatelessWidget {
  final String path;
  const _IconAsset({required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: 15,
      height: 15,
      fit: BoxFit.contain,
    );
  }
}

