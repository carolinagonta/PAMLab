import 'package:flutter/material.dart';

class AppIcons {
  static Widget notification() {
    return Image.asset(
      'assets/icons/notification.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        // Fallback vizibil în debug ca să confirmăm path-ul greșit
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

  static Widget search() {
    return Image.asset(
      'assets/icons/cautare.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.search, color: Colors.grey, size: 15);
      },
    );
  }
  static Widget uiux() {
    return Image.asset(
      'assets/icons/uiux.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }
  static Widget welcome2() {
    return Image.asset(
      'assets/icons/p2welcome.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }
  static Widget graphic() {
    return Image.asset(
      'assets/icons/graphic.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }
  static Widget s1() {
    return Image.asset(
      'assets/images/s1.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

  static Widget s2() {
    return Image.asset(
      'assets/images/s2.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

  static Widget s3() {
    return Image.asset(
      'assets/images/s3.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

  static Widget top1() {
    return Image.asset(
      'assets/images/top1.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

  static Widget top2() {
    return Image.asset(
      'assets/images/top2.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }
  static Widget top3() {
    return Image.asset(
      'assets/images/top3.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red, size: 20);
      },
    );
  }

}

