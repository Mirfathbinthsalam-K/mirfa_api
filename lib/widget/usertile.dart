
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../models/users.dart';

class userTile extends StatelessWidget {
  final Users welcome;
  userTile(this.welcome);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('id:${welcome.id.toString()}'),
              Text('Email:${welcome.email.toString()}'),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Username:${welcome.username.toString()}'),
              Text('Website:${welcome.website.toString()}'),
            ],
          ),

        ],
      ),
    );
  }
}