import 'package:flutter/material.dart';
import '../data/services.dart';
import '../components/service_card_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Каталог услуг',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: services.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final service = services[index];
          return ServiceCard(service);
        },
      ),
    );
  }
}
