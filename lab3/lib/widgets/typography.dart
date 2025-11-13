import 'package:flutter/material.dart';

class TypographyWidget extends StatelessWidget {
  const TypographyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 343,
        height: 67,
        child: Stack(
          children: const [
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 343,
                child: Text(
                  'Typography and Layout Design             ',
                  style: TextStyle(
                    color: Color(0xFF00434C),
                    fontSize: 21,
                    fontFamily: 'Plus Jakarta Sans',
                    height: 0,
                    letterSpacing: 1.05,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 2,
              top: 31,
              child: Text(
                'Visual Communication College',
                style: TextStyle(
                  color: Color(0xFF00707E),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.28,
                ),
              ),
            ),
            Positioned(
              left: 2,
              top: 54,
              child: SizedBox(
                width: 129.65,
                height: 11.10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _VectorOmIcon(),
                    SizedBox(width: 2.55),
                    Text(
                      '3.4k students already enrolled',
                      style: TextStyle(
                        color: Color(0xFF00707E),
                        fontSize: 7.64,
                        fontFamily: 'Plus Jakarta Sans',
                        height: 0,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 298,
              top: 41,
              child: Text(
                '35\$',
                style: TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 21,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 1.05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VectorOmIcon extends StatelessWidget {
  const _VectorOmIcon();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/VectorOm.png',
      width: 12.1,
      height: 11.1,
      fit: BoxFit.contain,
    );
  }
}
