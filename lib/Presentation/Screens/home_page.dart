import 'package:flutter/material.dart';
import 'package:pip_app_demo/Presentation/Screens/background_screen.dart';
import 'package:pip_view/pip_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(builder: (context, isFloating) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'PIP View in Flutters',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            PIPView.of(context)?.presentBelow(const BackgroundScreens());
          },
          child: Text('Open pip view'),
        )),
      );
    });
  }
}
