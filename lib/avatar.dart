import 'package:flutter/material.dart';
import 'package:instagram/them.dart';
import 'package:instagram/user_data.dart';

class AvatarWidget extends StatelessWidget {
  final User user;
  final bool isCurrentUserStory;
  const AvatarWidget({
    @required this.user,
    this.isCurrentUserStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 1.0),
          height: 70,
          width: 70,

          /// https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20
          /// tarnslate [https://github.com/SunshowerC/blog/issues/12]
          decoration: new BoxDecoration(
            shape: BoxShape.circle,

            /// border NOT USE gradient
            gradient: SweepGradient(
              colors: avatarCircleRender,
            ),
          ),
          child: new Stack(
            alignment: Alignment.center, // default topStart
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(color: Colors.white),
                ),
                child: new CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage(user.imageUrl),
                ),
              ),
              new Positioned(
                right: 2.0,
                bottom: 0.0,
                child: new Container(
                  child: Icon(Icons.add, size: 15, color: Colors.white),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15.0),
          child: Text(
            isCurrentUserStory ? 'Your Story' : user.id,
            textScaleFactor: 0.8,
          ),
        ),
      ],
    );
  }
}

class StoriesBarWidget extends StatelessWidget {
  final _users = <User>[
    itachi,
    kakashi,
    naruto,
    sakura,
    gai,
    hinata,
    jiraiya,
    kyubi
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) {
          return AvatarWidget(
            user: _users[i],
            isCurrentUserStory: i == 0,
          );
        },
        itemCount: _users.length,
      ),
    );
  }
}
