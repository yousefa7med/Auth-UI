import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff9C28B2),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
