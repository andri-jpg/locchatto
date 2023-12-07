import 'package:flutter/material.dart';
import '../app.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Halaman Profil'),
          ElevatedButton(
            onPressed: () {
              // Change the theme on button press
              ThemeData currentTheme = Theme.of(context);
              ThemeData newTheme = currentTheme.copyWith(
                primaryColor: currentTheme.primaryColor == Colors.blue
                    ? Colors.red
                    : Colors.blue,
              );
              Navigator.pop(context); // Pop current page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text('Ubah Tema'),
          ),
        ],
      ),
    );
  }
}
