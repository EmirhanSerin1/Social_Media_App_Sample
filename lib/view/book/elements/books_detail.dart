import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookDetail extends StatefulWidget {
  var imagePath;
  var authors;
  var name;
  var price;

  BookDetail(this.imagePath, this.authors, this.price, this.name);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
              tag: widget.imagePath,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.contain),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 50 * 41,
              left: 50,
              child: Container(
                width: MediaQuery.of(context).size.width / 4 * 3,
                height: MediaQuery.of(context).size.height / 5.5,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Name :",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 160,
                          child: Text(
                            widget.name,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Author :",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 160,
                          child: Text(
                            widget.authors,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Price :",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "${widget.price} USD",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
