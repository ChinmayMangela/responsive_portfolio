import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
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
                  Text('Ross', style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
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
