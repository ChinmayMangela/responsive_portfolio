import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ross_portfolio/core/shared/widgets/social_button.dart';
import 'package:url_launcher/url_launcher.dart';

Widget linkedInButton() {
  const linkedInUrl = 'https://www.linkedin.com/in/chinmaymangela/';
  return SocialButton(
    icon: FontAwesomeIcons.linkedin,
    onPressed: () async {
      final uri = Uri.parse(linkedInUrl);
      try {
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          throw Exception('Could not launch $linkedInUrl');
        }
      } catch(e) {
        print('Error launching URL: $e');
      }
    },
  );
}

Widget githubButton() {
  const  githubUrl = 'https://github.com/ChinmayMangela';
  return SocialButton(
    icon: FontAwesomeIcons.github,
    onPressed: () async {
      final uri = Uri.parse(githubUrl);
      try {
        if(await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          throw Exception('Could not launch $githubUrl');
        }
      } catch(e) {
        print('Error launching URL: $e');
      }
    },
  );
}

Widget instagramButton() {
  const instagramUrl = 'https://www.instagram.com/___monty28/';
  return SocialButton(
    icon: FontAwesomeIcons.instagram,
    onPressed: () async {
      final uri = Uri.parse(instagramUrl);
      try {
        if(await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          throw Exception('Could not launch $instagramUrl');
        }
      } catch(e) {
        print('Error launching URL: $e');
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

