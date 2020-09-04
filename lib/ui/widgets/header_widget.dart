import 'package:blog/constants.dart';
import 'package:blog/route_generator.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String _avatarUrl;
  HeaderWidget({String avatarUrl = Constants.placeholderImageUrl})
      : _avatarUrl = avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(flex: 5),
        Flexible(
          flex: 10,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(_avatarUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
       const Spacer(),
        Flexible(
          flex: 5,
          child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, RouteGenerator.initialRoute),
            child: Container(
              width: double.infinity,
              child: Text(
                Constants.userName,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
