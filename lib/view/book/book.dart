import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/view/book/elements/books_detail.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Colors.grey.shade900,
            ),
            child: Center(
              child: Text(
                "Books You May Like",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCardOfBook(context, "assets/image/books/book.jpg", "Andrea Bartz", "13", "The Lost Night"),
            buildCardOfBook(context, "assets/image/books/book2.jpg", "Helen Oyeyemi", "15", "Ginger Bread"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCardOfBook(context, "assets/image/books/book3.jpg", "Candice Carty-Williams", "20", "QUEENİE"),
            buildCardOfBook(context, "assets/image/books/book4.jpg", "Erin Lee Carr", "14", "All That You Leave Behind"),
          ],
        ),
      ],
    );
  }

  buildCardOfBook(BuildContext context, String imagePath, String author, String price, String name) {
    return InkWell(
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetail(imagePath: 'assets/image/books/book.jpg'")));
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetail(imagePath, author, price, name)));
      },
      child: Hero(
        tag: imagePath,
        child: Card(
          elevation: 4,
          shadowColor: Colors.blue,
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
