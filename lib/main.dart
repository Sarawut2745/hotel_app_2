import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(HotelApp());
}

class Hotel {
  late String name;
  late int rating;
  late String description;
  late int price;
  late String img;

  Hotel({
    required this.name,
    required this.rating,
    required this.description,
    required this.price,
    required this.img,
  });
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final List<Hotel> hotels = [
    Hotel(
      name: 'Songphunburi',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/img_1.jpg',
    ),
    Hotel(
      name: 'Songphunburi 2',
      price: 20,
      description: 'Wifi include',
      rating: 3,
      img: 'images/img_2.jpg',
    ),
    Hotel(
      name: 'Songphunburi 3',
      price: 10880,
      description: 'Wifi include',
      rating: 2,
      img: 'images/img_3.jpg',
    ),
    Hotel(
      name: 'Songphunburi 4',
      price: 130,
      description: 'Wifi include',
      rating: 1,
      img: 'images/img_4.jpg',
    ),
    Hotel(
      name: 'Songphunburi 5',
      price: 1000,
      description: 'Wifi include',
      rating: 3,
      img: 'images/img_5.jpg',
    ),
    Hotel(
      name: 'Songphunburi 6',
      price: 100,
      description: 'Wifi include',
      rating: 4,
      img: 'images/img_6.jpg',
    ),
    Hotel(
      name: 'Songphunburi 7',
      price: 1050,
      description: 'Wifi include',
      rating: 3,
      img: 'images/img_7.jpg',
    ),
    Hotel(
      name: 'Songphunburi 8',
      price: 10770,
      description: 'Wifi include',
      rating: 5,
      img: 'images/img_8.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hotel App",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Sarawut'),
          ),
          body: GridView.builder(
            itemCount: hotels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (_, int index) {
              List<Widget> children = [
                SizedBox(
                  width: 200, 
                  height: 100, 
                  child: Image.asset(
                    hotels[index].img,
                    fit: BoxFit.cover, 
                  ),
                ),
                Text(hotels[index].name + ' Mike'),
                Text(
                    'Rating: ${hotels[index].rating}'), 
                Text(
                    'Price: \$${hotels[index].price}'), 
              ];

              return InkWell(
                child: GridTile(
                  child: Container(
                    color: const Color.fromARGB(255, 12, 154, 215),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: children,
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
