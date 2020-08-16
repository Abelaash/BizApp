import 'package:flutter/material.dart';


class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget> [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

 Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Abelaash Giritharan",
          style: TextStyle(fontSize: 20.9,
          color: Colors.white,
          fontWeight: FontWeight.w500) ,),
          Text("MOBILE DEVELOPER",
            style: TextStyle(fontSize: 15.9,
            color: Colors.white,
                fontWeight: FontWeight.w400) ,),

          Text("abelaash.giritharan@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("Tel: (647) 294-5977")
            ],
          )
        ],
      ),
    );

  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover )
      ),
    );
  }
}



class ScaffoldExample extends StatelessWidget {

  _tapButton(){
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: [
          IconButton(icon: Icon(Icons.email), onPressed: ()=> debugPrint("Email Tapped!")),
          IconButton(icon: Icon(Icons.settings), onPressed: _tapButton)

        ],

      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed),
     onPressed: () => debugPrint("Hello") ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second")),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Third"))

      ], onTap: (int index) => debugPrint("Tapped item : $index") ,),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CustomButton()

              /*InkWell(
                child: Text("Tap Me",
                style: TextStyle(fontSize: 23.4),),

                onTap: () => debugPrint("tapped...."),
              )*/

            ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Hello Again"),
        backgroundColor: Colors.amberAccent.shade700,
        );

        Scaffold.of(context).showSnackBar(snackBar);


      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Button"),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,

      child: Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.4,
                fontStyle: FontStyle.italic
            ),
          )),
    );

  }
}

