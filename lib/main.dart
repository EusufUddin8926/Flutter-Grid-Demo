import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridDemo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class GridDemo extends StatelessWidget {
   GridDemo({super.key});

  var listItem = [
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Recycler Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Garbase Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Remove Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    }
  ];

  MySnackBarMsg(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Demo"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.2
        ),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBarMsg(context, listItem[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 12.0,
                    ),
                  ]),
              child: Image.network(
                listItem[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
