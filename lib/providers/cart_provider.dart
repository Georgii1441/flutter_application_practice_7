import 'package:flutter/material.dart';
import '../models/service.dart';

class CartProvider extends ChangeNotifier {
  final List<Service> _items = [];

  List<Service> get items => _items;

  void addItem(Service service) {
    final bool isItemExists =
        _items.any((item) => item.serviceId == service.serviceId);

    if (isItemExists) {
      _items
          .firstWhere((item) => item.serviceId == service.serviceId)
          .quantity++;
    } else {
      _items.add(Service(
        serviceId: service.serviceId,
        title: service.title,
        price: service.price,
        duration: service.duration,
        quantity: 1,
      ));
    }

    notifyListeners();
  }

  void increaseQuantity(Service service) {
    _items.firstWhere((item) => item.serviceId == service.serviceId).quantity++;

    notifyListeners();
  }

  void decreaseQuantity(Service service) {
    final item =
        _items.firstWhere((item) => item.serviceId == service.serviceId);
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      _items.removeWhere((item) => item.serviceId == service.serviceId);
    }

    notifyListeners();
  }

  void removeItem(Service service) {
    _items.removeWhere((item) => item.serviceId == service.serviceId);

    notifyListeners();
  }

  int get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price * item.quantity);
  }
}
