import 'package:flutter/material.dart';
import '../components/profile_option_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Георгий',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '+7 900 800-55-33',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'epishin.g.a@edu.mirea.ru',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32),
            const ProfileOption(
              iconPath: 'assets/icons/Order.png',
              title: 'Мои заказы',
            ),
            const ProfileOption(
              iconPath: 'assets/icons/Cards.png',
              title: 'Медицинские карты',
            ),
            const ProfileOption(
              iconPath: 'assets/icons/Adress.png',
              title: 'Мои адреса',
            ),
            const ProfileOption(
              iconPath: 'assets/icons/Settings.png',
              title: 'Настройки',
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Ответы на вопросы',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Политика конфиденциальности',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Пользовательское соглашение',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Выход',
                    style:
                        TextStyle(color: Colors.red, fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
