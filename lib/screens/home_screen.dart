import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      // Search Icon
                      Icon(Icons.search, color: Colors.grey),

                      SizedBox(width: 15),

                      // Search Ideas
                      SearchBar(),
                    ],
                  ),

                  // Icon Profile
                  const ProfileIcon()
                ],
              ),

              // Texts
              const SizedBox(height: 20),
              const Text(
                'Welcome back, Jhin!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Got some bright \nideas today?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),

              // Categories
              ListCategories(height: 100, width: 400, size: 70, border: 30),
              const SizedBox(height: 30),

              // Recently added
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recently added',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          'See all',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.arrow_right_alt, color: Colors.grey)
                      ],
                    ),
                  ),
                ],
              ),

              // Ideas list
              ListIdeas(ideas: Idea.demoIdeas),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
