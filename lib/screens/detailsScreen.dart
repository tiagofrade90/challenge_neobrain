import 'package:flutter/material.dart';
import 'package:challenge_neobrain/models/repository.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/details';

  final Repository repository;

  const DetailsScreen({Key key, this.repository}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.repository.name ?? 'N/A',
            style: TextStyle(
              fontFamily: 'Muli',
            ),
          ),
        ),
        body: Card(
          margin: EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.network(widget.repository.owner.avatar_url, width: 80, height: 80),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Text(
                    'Owner',
                    style: TextStyle(fontFamily: 'Muli', fontSize: 20),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      widget.repository.owner?.name ?? 'N/A',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Text(
                    'Language',
                    style: TextStyle(fontFamily: 'Muli', fontSize: 20),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      widget.repository?.language ?? 'N/A',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Text(
                    'License Name',
                    style: TextStyle(fontFamily: 'Muli', fontSize: 20),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      widget.repository.license?.licenseName ?? 'N/A',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Description:',
                  style: TextStyle(fontFamily: 'Muli', fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  widget.repository.description,
                  style: TextStyle(fontFamily: 'Muli', fontSize: 15)
                ),
              )
            ],
          ),
        ));
  }
}
