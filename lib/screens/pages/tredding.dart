import 'dart:convert';
import 'package:challenge_neobrain/models/git_hub_reponse.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:challenge_neobrain/models/git_hub_reponse.dart';
import 'package:challenge_neobrain/models/repository.dart';
import '../detailsScreen.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  void initState() {
    super.initState();
  _getGitHubRepositories();
  }

  _getGitHubRepositories() async {
    var queryParameters = {
      'q': 'created:>2017-10-22',
      'sort': 'stars',
      'order': 'desc' 
    };

    var uri = Uri.https(BASE_GITHUB_URL, GITHUBSEARCH, queryParameters);
    final reponse = await http.get(uri);

    if (reponse.statusCode == 200) {
      var reponseDecoded = GitHubReponse.fromJson(json.decode(reponse.body));
      return reponseDecoded;
    }
    else {
      print("Error");
    }
  }


@override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getGitHubRepositories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return _buildBody(snapshot.data);
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return AlertDialog(
            title: Text('Error'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Close"))
            ],
          );
        }
      },
    );
  }

  Container _buildBody(GitHubReponse gitHubReponse) {
    return Container(
      child: ListView.builder(
        itemCount: gitHubReponse.items.length,
        itemBuilder: (BuildContext context, int index) =>
            buildUserCard(gitHubReponse.items[index]),
      ),
    );
  }

  buildUserCard(Repository repository) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(repository: repository),
        )
      ),
      child: Padding(
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
                  repository.name ?? 'N/A',
                  style: TextStyle(fontSize: 20, fontFamily: 'Muli'),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: Text(
                    repository.description ?? 'N/A',
                    style: TextStyle(fontSize: 15, fontFamily: 'Muli'),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Container(
                        width: 30,
                        height: 30,
                        child: Image.network(repository.owner.avatar_url)
                        ),
                    SizedBox(width: 5),
                    Text(repository.owner.name ?? 'N/A', 
                      style: TextStyle(fontSize: 15, fontFamily: 'Muli'),
                    ),
                    Spacer(),
                    Icon(Icons.star_outlined, color: Colors.black),
                    SizedBox(width: 5),
                    Text(repository.stars.toString() ?? 'N/A')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
