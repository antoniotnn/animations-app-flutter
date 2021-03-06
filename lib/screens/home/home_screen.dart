import 'package:animations/screens/home/widgets/stagger_animation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart' show timeDilation;


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000)
    );

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    //timeDilation = 5;

    return StaggerAnimation(
      controller: _controller,
    );
  }
}