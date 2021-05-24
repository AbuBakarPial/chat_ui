import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    onPressed: null),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              itemCount: favorites.length,
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext contex, int index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
