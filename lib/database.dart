import 'package:flutter/material.dart';

Widget customListTile({
  required String title,
  required String singer,
  required String image,
  onTap,
}) {

  //Rogannh_he on Instagram
  //CoderBine on Github
  //waddleBine on youtue

  return Container(
    padding: EdgeInsets.all(8),
    child: InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                singer,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
