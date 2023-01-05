import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeMeetingButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback OnPressed;
  const HomeMeetingButton(
      {Key? key,
      required this.OnPressed,
      required this.text,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(0, 4),
                  ),
                ]),
            width: 60,
            height: 60,
            child: Icon(icon, size: 30, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
