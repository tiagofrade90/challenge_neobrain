import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => buildUserCard(),
      ),
    );
  }

  buildUserCard() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(1),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 25, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'name',
                style: TextStyle(fontSize: 20, fontFamily: 'Muli'),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.70,
                child: Text(
                  'description',
                  style: TextStyle(fontSize: 15, fontFamily: 'Muli'),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                      width: 30,
                      height: 30,
                      child: Text('imagem'),
                  ),
                  SizedBox(width: 5),
                  Text('owner', 
                    style: TextStyle(fontSize: 15, fontFamily: 'Muli'),
                  ),
                  Spacer(),
                  Icon(Icons.star_outlined, color: Colors.black),
                  SizedBox(width: 5),
                  Text('stars')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
