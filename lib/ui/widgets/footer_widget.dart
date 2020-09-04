import 'package:blog/constants.dart';
import 'package:blog/core/services/network/network.dart';
import 'package:blog/ui/shared/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 30),
      child: Row(
        children: <Widget>[
          IconWidget(
            icon: const FaIcon(FontAwesomeIcons.github, size: 20),
            onPressed: () => Network.launchURL(Constants.githubUrl),
          ),
          IconWidget(
            icon: const FaIcon(FontAwesomeIcons.linkedin, size: 20),
            onPressed: () => Network.launchURL(Constants.linkedInUrl),
          ),
          IconWidget(
            icon: const Icon(Icons.mail, size: 20),
            onPressed: () => Network.launchURL(Constants.emailAddressScheme),
          ),
        ],
      ),
    );
  }
}
