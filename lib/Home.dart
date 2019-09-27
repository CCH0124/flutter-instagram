import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar(),
      body: new Text("ASD"),
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget topBar() {
    return new AppBar(
      backgroundColor: Colors.white,
      leading: new Icon(Icons.camera_alt),
      title: new SizedBox(
        height: 30,
        child: Image.asset("images/Instagram_logo.svg"),
      ),
      actions: <Widget>[
        new Row(
          children: <Widget>[
            new Container(
                child: new Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.live_tv),
            )),
            new Container(
              child: new Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(Icons.send),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget bottomBar() {
    return new Container(
      child: new BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // row
          children: getBottomBarButtonItem(),
        ),
      ),
    );
  }

  List<Widget> getBottomBarButtonItem() {
    return bottomBarButtonItems.map((f) {
      return new IconButton(
        icon: f.icon,
        onPressed: f.onPress,
      );
    }).toList();
  }
}

class BottomBarButton {
  final Icon icon;
  final Function onPress;
  BottomBarButton({@required this.icon, @required this.onPress});
}

List<BottomBarButton> bottomBarButtonItems = [
  new BottomBarButton(icon: Icon(Icons.home), onPress: null),
  new BottomBarButton(icon: Icon(Icons.search), onPress: null),
  new BottomBarButton(icon: Icon(Icons.add), onPress: null),
  new BottomBarButton(icon: Icon(Icons.favorite_border), onPress: null),
  new BottomBarButton(icon: Icon(Icons.account_box), onPress: null),
];
