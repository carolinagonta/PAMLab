import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const SignUpButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 320,
        height: 50,
        child: Material(
          color: const Color(0xFF00707E), // (0,112,126)
          borderRadius: BorderRadius.circular(5),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: onPressed,
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'ENROLL NOW',
                  style: TextStyle(
                    color: Color(0xFFD9EFF2),
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    height: 0,
                    letterSpacing: 0.32,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
