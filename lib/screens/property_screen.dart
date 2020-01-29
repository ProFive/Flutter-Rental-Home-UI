import 'package:flutter/material.dart';
import 'package:rental_home_ui/data/data.dart';

class PropertyScreen extends StatefulWidget {
  final Property property;
  PropertyScreen({this.property});
  @override
  _PropertyScreenState createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  int selectedIdx = 0;

  final List<String> categories = [
    'Malibu House',
    'Luxury House',
    'Castle Villa',
    'Sunrise House',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0, -30, 0),
                child: Image(
                  height: 445,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.property.imageUrl),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 70,
                  horizontal: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () => print('Toggle Favorite'),
                      icon: Icon(Icons.favorite_border),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                right: 25,
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        5,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '\$${widget.property.price} / night',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.property.name,
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.property.location,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '${widget.property.rating} ⭐️',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '${widget.property.reviews} reviews',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '${widget.property.temperature} ℃',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIdx = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          color: index == selectedIdx
                              ? Theme.of(context).primaryColor
                              : Colors.grey[300],
                          fontSize: 18),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
            color: Colors.white,
            height: 150,
            child: SingleChildScrollView(
              child: Text(
                widget.property.description,
                style: TextStyle(
                    color: Colors.grey[350],
                    wordSpacing: 2,
                    fontSize: 15,
                    letterSpacing: 0.5),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(0, 4), blurRadius: 4),
          ],
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        margin: EdgeInsets.fromLTRB(25, 0, 25, 45),
        height: 55,
        width: double.infinity,
        child: FlatButton(
          child: Text(
            'Book This House',
            style:
                TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 1),
          ),
          onPressed: () => print('Book This House'),
        ),
      ),
    );
  }
}
