import 'package:flutter/material.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(36)),
            border: Border.all(width: 2.0, color: Colors.blueGrey),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.jpg'),
            radius: 36,
          ),
        ),
      ],
    );
  }
}
