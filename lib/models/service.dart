class Service {
  final int serviceId;
  final String title;
  final int price;
  final String duration;
  int quantity;

  Service({
    required this.serviceId,
    required this.title,
    required this.price,
    required this.duration,
    this.quantity = 0,
  });
}
