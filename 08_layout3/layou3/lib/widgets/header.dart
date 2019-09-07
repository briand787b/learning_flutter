import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/mountain_proj.jpeg',
              fit: BoxFit.contain,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'MOUNTAIN',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'PROJECT',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
