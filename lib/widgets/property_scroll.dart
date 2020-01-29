import 'package:flutter/material.dart';
import 'package:rental_home_ui/data/data.dart';
import 'package:rental_home_ui/screens/property_screen.dart';

class PropertyScroll extends StatelessWidget {
  final List<Property> properties;
  PropertyScroll({this.properties});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 240,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: properties.length,
            itemBuilder: (BuildContext context, int index) {
              Property property = properties[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PropertyScreen(
                        property: property,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 345,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 165,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage(property.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(0.0, 0.4),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                color: property.category == 'Super'
                                    ? Color(0xFFe66759)
                                    : Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                              ),
                              width: 90,
                              height: 30,
                              child: Center(
                                child: Text(
                                  property.category,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  property.name,
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  '${property.rating} ⭐️',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: [
                                  TextSpan(
                                    text: '\$${property.price}',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: ' / night',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
