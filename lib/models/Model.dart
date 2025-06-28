// models/coffee_model.dart
class Coffee {
  final String id;
  final String name;
  final String subtitle;
  final String price;
  final String image;
  final String description;
  final double rating;
  final int reviews;

  Coffee({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.description,
    required this.rating,
    required this.reviews,
  });
}

// data/coffee_data.dart
class CoffeeData {
  static List<Coffee> coffees = [
    Coffee(
      id: '1',
      name: 'Cappuccino',
      subtitle: 'with Oat milk',
      price: '\$ 99.9',
      image: 'images/1.png',
      description:
          'Cappuccino is a classic Italian coffee drink renowned for its harmonious balance of bold espresso, creamy steamed milk, and frothy milk foam. Perfect for coffee enthusiasts who appreciate traditional brewing methods.',
      rating: 4.5,
      reviews: 230,
    ),
    Coffee(
      id: '2',
      name: 'Cardamom',
      subtitle: 'with milk',
      price: '\$ 60.9',
      image: 'images/2.png',
      description:
          'Aromatic cardamom coffee blends traditional spices with rich coffee beans, creating a unique Middle Eastern inspired beverage. The perfect combination of warmth and exotic flavors.',
      rating: 4.2,
      reviews: 180,
    ),
    Coffee(
      id: '3',
      name: 'Black Bull',
      subtitle: 'with pure milk',
      price: '\$ 50.9',
      image: 'images/3.png',
      description:
          'Strong and bold black coffee with a touch of pure milk. This powerful blend delivers an intense caffeine kick perfect for those who need serious energy.',
      rating: 4.7,
      reviews: 340,
    ),
    Coffee(
      id: '4',
      name: 'Janan',
      subtitle: 'with pure milk',
      price: '\$ 99.9',
      image: 'images/4.png',
      description:
          'Premium Janan coffee beans sourced from high-altitude farms, combined with pure milk for a smooth and refined taste experience.',
      rating: 4.3,
      reviews: 150,
    ),
    Coffee(
      id: '5',
      name: 'Latte',
      subtitle: 'with Oat milk',
      price: '\$ 99.9',
      image: 'images/5.png',
      description:
          'Creamy latte made with oat milk for a dairy-free alternative. Smooth espresso base with perfectly steamed oat milk creates a velvety texture.',
      rating: 4.6,
      reviews: 290,
    ),
    Coffee(
      id: '6',
      name: 'Cold Mocha',
      subtitle: 'with Oat milk',
      price: '\$ 99.9',
      image: 'images/6.png',
      description:
          'Refreshing cold mocha combining rich chocolate and espresso with oat milk. Perfect for hot days when you need your caffeine fix.',
      rating: 4.4,
      reviews: 200,
    ),
  ];
}
