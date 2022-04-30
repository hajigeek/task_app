import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          //we gonna need row to put all to each other
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//lets put the icon here
//basically here we wrapped the icon with container to make it look kinda sexy and greyish
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey[800], shape: BoxShape.circle),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  )),
              SizedBox(
                width: 15,
              ),

              //the text and short text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Go premuim',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  //give more space between them height
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Get unlimited access \n to all features',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15)),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        )
      ],
    ));
  }
}
