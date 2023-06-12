import 'package:flutter/material.dart';
import 'package:flutter_andomie/widgets.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const RawTextView(
          text: "Home",
          textSize: 20,
          textColor: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Button(
          text: "Go Details",
          borderRadius: 12,
          widthMin: 100,
          onClick: (context) => context.go(
            '/details',
            extra: "Hi, I'm Omie...!",
          ),
        ),
      ),
    );
  }
}
