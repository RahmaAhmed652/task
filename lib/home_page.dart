import 'package:flutter/material.dart';
import 'package:task1/config_size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Navbar
          Container(
            width: screenWidth,
            height: 60,
            color: Colors.red[900],
            child: const Center(
              child: Text(
                'Navbar',
                style: TextStyle(color: Colors.orange, fontSize: 13),
              ),
            ),
          ),

          // Body
          Expanded(
            child: Row(
              children: [
                if (ConfigSize.isWeb(context))
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                      child: Container(
                        color: Colors.red[900],
                        child: const Center(
                          child: Text(
                            'Sidebar',
                            style: TextStyle(color: Colors.orange, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                      color: Colors.cyan[900],
                      child: const Center(
                        child: Text(
                          'Body',
                          style: TextStyle(color: Colors.orange, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Footer (Web only)
          if (ConfigSize.isWeb(context))
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: screenWidth,
                height: 60,
                color: Colors.red[900],
                child: const Center(
                  child: Text(
                    'Footer',
                    style: TextStyle(color: Colors.orange, fontSize: 13),
                  ),
                ),
              ),
            ),

          // Bottom Navigation (Mobile only)
          if (ConfigSize.isMobile(context))
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: screenWidth,
                height: 60,
                color: Colors.red[600],
                child: const Center(
                  child: Text(
                    'Bottom NavBar',
                    style: TextStyle(color: Colors.orange, fontSize: 13),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
