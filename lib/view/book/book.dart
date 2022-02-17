import 'package:flutter/material.dart';
import 'package:flutter_social_media_app_sample_simple/model/book_info.dart';
import 'package:flutter_social_media_app_sample_simple/view/book/elements/books_detail.dart';
import 'package:provider/provider.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    List image = Provider.of<BookInfo>(context).bookImage;
    List authorName = Provider.of<BookInfo>(context).bookAuthor;
    List bookName = Provider.of<BookInfo>(context).bookName;
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
            buildCardOfBook(context, image[0], authorName[0], "13", bookName[0]),
            buildCardOfBook(context, image[1], authorName[1], "15", bookName[1]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCardOfBook(context, image[2], authorName[2], "20", bookName[2]),
            buildCardOfBook(context, image[3], authorName[3], "14", bookName[3]),
          ],
        ),
      ],
    );
  }

  buildCardOfBook(BuildContext context, String imagePath, String author, String price, String name) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetail(imagePath, author, price, name)));
      },
      child: Hero(
        tag: imagePath,
        child: Card(
          elevation: 4,
          shadowColor: Colors.blue,
          child: SingleChildScrollView(
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
      ),
    );
  }
}
