import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key, required this.name, required this.imageName});

  final String name;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Hi,$name!",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Image(image: AssetImage("assets/icons/hi.png")),
              )
            ],
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "assets/icons/$imageName",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
