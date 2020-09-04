import 'package:blog/constants.dart';
import 'package:blog/route_generator.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String avatarUrl;
  HeaderWidget({this.avatarUrl = Constants.placeholderImageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 75),
        Flexible(
          flex: 10,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(avatarUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          flex: 5,
          child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, RouteGenerator.initialRoute),
            child: Container(
              width: double.infinity,
              child: Text(
                Constants.displayName,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
