import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Vrplanet extends StatefulWidget {
  const Vrplanet({super.key});

  @override
  State<Vrplanet> createState() => _VrplanetState();
}

class _VrplanetState extends State<Vrplanet> {
  late Object _planet; // Declare _planet as late

  @override
  void initState() {
    super.initState();
    // Initialize _planet in initState
    _planet = Object(fileName: 'assets/earth .glb');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            // Add the _planet object to the scene
            scene.world.add(_planet);
            scene.camera.position.z = 5; // Adjust camera position
          },
        ),
      ),
    );
  }
}
