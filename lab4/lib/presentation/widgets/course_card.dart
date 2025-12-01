import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String? imageAsset;
  final String? imageUrl;
  final String title;
  final String subtitle;
  final double rating;


  final double? progressWidth;
  final String? progressText;
  final int? progressPercent;

  const CourseCard({
    super.key,
    this.imageAsset,
    this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
    this.progressWidth,
    this.progressText,
    this.progressPercent,
  }) : assert(imageAsset != null || imageUrl != null,
  'Furnizează imageAsset sau imageUrl');

  @override
  Widget build(BuildContext context) {
    const totalBarWidth = 205.0;
    final double fgWidth = progressPercent != null
        ? (totalBarWidth * (progressPercent!.clamp(0, 100) / 100))
        : (progressWidth ?? 0).clamp(0, totalBarWidth);
    final String pctText = progressPercent != null
        ? '${progressPercent!.clamp(0, 100)}% Completed'
        : (progressText ?? '');

    Widget imageWidget;
    if (imageUrl != null) {
      imageWidget = Image.network(
        imageUrl!,
        width: 87,
        height: 58,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          width: 87,
          height: 58,
          color: const Color(0xFFD9D9D9),
          alignment: Alignment.center,
          child: const Icon(Icons.error_outline, color: Colors.red),
        ),
      );
    } else {
      imageWidget = Image.asset(
        imageAsset!,
        width: 87,
        height: 58,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          width: 87,
          height: 58,
          color: const Color(0xFFD9D9D9),
        ),
      );
    }

    return SizedBox(
      width: 333,
      height: 77,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 333,
              height: 77,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: imageWidget,
            ),
          ),
          Positioned(
            left: 110,
            top: 13,
            child: SizedBox(
              width: 167,
              height: 18,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF00434C),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.28,
                ),
              ),
            ),
          ),
          Positioned(
            left: 110,
            top: 31,
            child: SizedBox(
              width: totalBarWidth,
              height: 9,
              child: Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF00707E),
                  fontSize: 7,
                  fontFamily: 'Plus Jakarta Sans',
                  height: 0,
                  letterSpacing: 0.14,
                ),
              ),
            ),
          ),
          Positioned(
            left: 110,
            top: 42,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Opacity(
                  opacity: 0.90,
                  child: Icon(Icons.star, size: 9, color: Color(0xFF00707E)),
                ),
                const SizedBox(width: 2),
                Text(
                  rating.toStringAsFixed(1),
                  style: const TextStyle(
                    color: Color(0xFF00707E),
                    fontSize: 6,
                    fontFamily: 'Plus Jakarta Sans',
                    height: 0,
                    letterSpacing: 0.12,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 110,
            top: 55,
            child: SizedBox(
              width: totalBarWidth,
              height: 6,
              child: Stack(
                children: [
                  Container(
                    width: totalBarWidth,
                    height: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    width: fgWidth,
                    height: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00707E),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 266,
            top: 64,
            child: Text(
              pctText,
              style: const TextStyle(
                color: Color(0xFF6C6C6C),
                fontSize: 6,
                fontFamily: 'Plus Jakarta Sans',
                height: 0,
                letterSpacing: 0.12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
