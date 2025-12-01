import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String text;
  final double? width; // dacă e null, se mulează pe conținut
  final double height;

  const SkillChip({
    super.key,
    required this.text,
    this.width,
    this.height = 29,
  });

  @override
  Widget build(BuildContext context) {
    final inner = Container(
      constraints: BoxConstraints(minHeight: height),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDDDDDD)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        softWrap: false,
        style: const TextStyle(
          color: Color(0xFF00434C),
          fontSize: 12,
          fontFamily: 'Plus Jakarta Sans',
          height: 1.0,
          letterSpacing: 0.60,
        ),
      ),
    );

    if (width != null) {
      return ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: width),
        child: Center(child: inner),
      );
    }

    return inner;
  }
}
