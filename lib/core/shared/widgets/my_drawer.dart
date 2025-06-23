import 'package:flutter/material.dart';
import 'package:ross_portfolio/core/constants/string_constants.dart';
import 'package:ross_portfolio/core/theme/dimen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(

                  ),
                  const SizedBox(width: 20,),
                  Text(name, style: TextThemes(context).headlineSmall.copyWith(
                    fontWeight: TextWeights.weight900
                  ),),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.work),
              title: const Text('Work'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.folder),
              title: const Text('Projects'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.info),
              title: const Text('About'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.phone),
              title: const Text('Contact'),
            )
          ],
        ),
      ),
    );
  }
}
