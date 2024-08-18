import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ross_portfolio/shared/widgets/social_button.dart';
import 'package:url_launcher/url_launcher.dart';

Widget linkedButton() {
  final linkedInUrl = Uri.parse('https://www.linkedin.com/in/chinmaymangela/');
  return SocialButton(
    icon: FontAwesomeIcons.linkedin,
    onPressed: () async {
      if (await canLaunchUrl(linkedInUrl)) {
        launchUrl(linkedInUrl);
      } else {
        throw Exception('Could not launch $linkedInUrl');
      }
    },
  );
}

Widget githubButton() {
  final githubUrl = Uri.parse('https://github.com/ChinmayMangela');
  return SocialButton(
    icon: FontAwesomeIcons.github,
    onPressed: () async {
      if(await canLaunchUrl(githubUrl)) {
        launchUrl(githubUrl);
      } else {
        throw Exception('Could not launch $githubUrl');
      }
    },
  );
}

Widget instagramButton() {
  final instagramUrl = Uri.parse('https://www.instagram.com/___monty28/');
  return SocialButton(
    icon: FontAwesomeIcons.instagram,
    onPressed: () async {
      if(await canLaunchUrl(instagramUrl)) {
        launchUrl(instagramUrl);
      } else {
        throw Exception('Could not launch $instagramUrl');
      }
    },
  );
}

Widget twitterButton() {
  return SocialButton(
    icon: FontAwesomeIcons.twitter,
    onPressed: () {},
  );
}

