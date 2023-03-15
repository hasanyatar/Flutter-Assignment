import 'package:app/config/env.dart';
import 'package:app/production/utilities/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                context.router.push(DetailsRoute());
              },
            ),
          ],
        ),
        body: Center(
          child: Text('${Env.baseUrl}'),
        ));
  }
}
