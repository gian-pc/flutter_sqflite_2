import 'package:flutter/material.dart';

class ListBandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282A3C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gian PC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "Mis bandas",
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
