import 'package:flutter/material.dart';

class SuggestionCard extends StatefulWidget {
  final String? imageAsset;
  final String? imageUrl;
  final String title;
  final String subtitle;
  final double rating;
  final VoidCallback? onTap;
  final bool initialBookmarked;
  final ValueChanged<bool>? onBookmarkChanged;

  const SuggestionCard({
    super.key,
    this.imageAsset,
    this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
    this.onTap,
    this.initialBookmarked = false,
    this.onBookmarkChanged,
  }) : assert(imageAsset != null || imageUrl != null,
  'Furnizează imageAsset sau imageUrl');

  @override
  State<SuggestionCard> createState() => _SuggestionCardState();
}

class _SuggestionCardState extends State<SuggestionCard> {
  static const Color _primaryDark = Color(0xFF00434C);
  static const Color _grayText = Color(0xFF6C6C6C);
  static const Color _accent = Color(0xFF00707E);
  static const Color _placeholder = Color(0xFFD9D9D9);

  late bool _bookmarked;

  @override
  void initState() {
    super.initState();
    _bookmarked = widget.initialBookmarked;
  }

  void _toggleBookmark() {
    setState(() => _bookmarked = !_bookmarked);
    widget.onBookmarkChanged?.call(_bookmarked);
  }

  @override
  Widget build(BuildContext context) {
    final img = widget.imageUrl != null
        ? Image.network(widget.imageUrl!, width: 130, height: 92, fit: BoxFit.cover,
        errorBuilder: (_, __, ___) =>
            Container(width: 130, height: 92, color: _placeholder))
        : Image.asset(widget.imageAsset!, width: 130, height: 92, fit: BoxFit.cover,
        errorBuilder: (_, __, ___) =>
            Container(width: 130, height: 92, color: _placeholder));

    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        width: 130,
        height: 152,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 130,
                  height: 92,
                  decoration: BoxDecoration(
                    color: _placeholder,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 67, 76, 0.25),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
                ClipRRect(borderRadius: BorderRadius.circular(5), child: img),
                Positioned(
                  right: 4,
                  top: 5,
                  child: SizedBox(
                    width: 20.85,
                    height: 24.0,
                    child: Material(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: _toggleBookmark,
                        child: Center(
                          child: Icon(
                            _bookmarked
                                ? Icons.bookmark_rounded
                                : Icons.bookmark_border_rounded,
                            size: 14,
                            color: _accent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: 130,
              height: 28,
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _primaryDark,
                  fontSize: 12,
                  height: 1.15,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: 130,
              height: 10,
              child: Text(
                widget.subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _grayText,
                  fontSize: 10,
                  height: 1.0,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              height: 10,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star_rounded, size: 10, color: _primaryDark),
                  SizedBox(width: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
