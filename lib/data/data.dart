class Property {
  final String name;
  final String category;
  final String rating;
  final String price;
  final String description;
  final String imageUrl;
  final String reviews;
  final String location;
  final String temperature;

  Property({
    this.name,
    this.category,
    this.rating,
    this.price,
    this.description,
    this.imageUrl,
    this.reviews,
    this.location,
    this.temperature,
  });
}

List<Property> superProperties = [
  Property(
    name: 'Malibu House',
    category: 'Super',
    rating: '5.0',
    price: '77',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    imageUrl: 'assets/images/super1.png',
    reviews: '60',
    location: 'Sanremo, Italy',
    temperature: '23',
  ),
  Property(
    name: 'Luxury House',
    category: 'Super',
    rating: '4.5',
    price: '92',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    imageUrl: 'assets/images/super2.png',
    reviews: '170',
    location: 'Sanremo, Italy',
    temperature: '27',
  ),
];

List<Property> popularProperties = [
  Property(
    name: 'Castle Villa',
    category: 'Popular',
    rating: '4.7',
    price: '72',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    imageUrl: 'assets/images/popular1.png',
    reviews: '140',
    location: 'Valencia, Spain',
    temperature: '29',
  ),
  Property(
    name: 'Sunrise House',
    category: 'Popular',
    rating: '4.1',
    price: '120',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
    imageUrl: 'assets/images/popular2.png',
    reviews: '12',
    location: 'Valencia, Spain',
    temperature: '31',
  ),
];
