import 'package:flutter/material.dart';

class CategorieWidget extends StatelessWidget {
  const CategorieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: 349,
        height: 33.10,
        child: Stack(
          children: const [
            _ChipPositioned(
              left: 0.0,
              width: 110.92,
              height: 32.92,
              label: 'Graphic Design',
            ),
            _ChipPositioned(
              left: 120.12,
              width: 104.04,
              height: 33.10,
              label: 'User Interface',
            ),
            _ChipPositioned(
              left: 232.67,
              width: 116.33,
              height: 33.10,
              label: 'User Experience',
            ),
          ],
        ),
      ),
    );
  }
}

class _ChipPositioned extends StatelessWidget {
  final double left;
  final double width;
  final double height;
  final String label;

  const _ChipPositioned({
    required this.left,
    required this.width,
    required this.height,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: 0,
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          padding: const EdgeInsets.all(9.46),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.95,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFF00707E),
              ),
              borderRadius: BorderRadius.circular(18.92),
            ),
          ),
          child: Center(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: const TextStyle(
                color: Color(0xFF00434C),
                fontSize: 11.35,
                fontFamily: 'Plus Jakarta Sans',
                height: 0,
                letterSpacing: 0.57,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


