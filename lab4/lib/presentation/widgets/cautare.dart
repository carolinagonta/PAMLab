import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 390, // latime totala ca in design
        child: Padding(
          padding: const EdgeInsets.only(left: 21, right: 24, top: 22),
          child: Center(
            child: Container(
              width: 349, // dimensiunea din Figma
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  color: const Color(0xFFD5DADD), // gri deschis
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA6A8AB), // culoarea textului
                        height: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/icons/cautare.png', // imaginea ta
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
