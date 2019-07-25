import 'dart:io';
import 'package:flutter_account_kit/flutter_account_kit.dart';
import 'package:flutter/material.dart';
//import './pkg_jp/screen_1.dart';


void main()
{
  Jp();
}

  void Jp() async{
     FlutterAccountKit akt = new FlutterAccountKit();
     LoginResult result = await akt.logInWithPhone();
     switch (result.status)
     {
       case LoginStatus.loggedIn:
       _sendTokenToServer(result.accessToken.token);
       _showLoggedInUI();
       break;
      case LoginStatus.cancelledByUser:
       _showCancelledMessage();
      break;
      case LoginStatus.error:
       _showErrorOnUI();
      break;
     }
}

void _showLoggedInUI()
     {
       print("login Success ");
     }
      void  _showCancelledMessage()
      {
        print("cancel ");
      }

      void _showErrorOnUI()
      {
        print("error");
      }

      void  _sendTokenToServer(String)
      {
        print("object;");
      }

// int count=0;
// void main()
// {
//   runApp(
//     new Login()
//       // new MyApp()
// //     Center(
// //       child: Text("ehehehehe",textDirection: TextDirection.ltr,),
// //     )
//    );
// }

// class MyAppy extends StatelessWidget {
//   @override
//   Widget build(BuildContext ctxt) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new FlutterAccountKit(),
//     );
//   }
// }

class Login extends StatelessWidget 
{

       
     void _showLoggedInUI()
     {
       print("login Success ");
     }
      void  _showCancelledMessage()
      {
        print("cancel ");
      }

      void _showErrorOnUI()
      {
        print("error");
      }

      void  _sendTokenToServer(String)
      {
        print("object;");
      }

     void Jp() async{
     FlutterAccountKit akt = new FlutterAccountKit();
     LoginResult result = await akt.logInWithPhone();
     switch (result.status)
     {
       case LoginStatus.loggedIn:
       _sendTokenToServer(result.accessToken.token);
       _showLoggedInUI();
       break;
      case LoginStatus.cancelledByUser:
       _showCancelledMessage();
      break;
      case LoginStatus.error:
       _showErrorOnUI();
      break;
     }
}
 @override
  Widget build (BuildContext ctxt)
   {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Text("\nDEVELOPED",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.green),),
              
            ]
          ),
        ),
      );
              
          
   }
}

  



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new FirstScreen(count),
                
    );
  }
}


class FirstScreen extends StatelessWidget {
  int count;
  FirstScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Text("\nDEVELOPED BY ",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.green),),
              Text("\n JAYA PRAKASH REDDY \n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.red),),
              ShowImage(),
          FlatButton(
          child: Text("ABOUT"),
          color: Colors.red,
          onPressed: (){
            count=0;
            Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new AboutScreen(count)),
            );

          },
        ),
              FlatButton(
                child: Text("START"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                ctxt,
                new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
              );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}



class AboutScreen extends StatelessWidget {
  int count;
  AboutScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    int CallMe(){
      count=0;
      return count;
    }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
            Text("ABOUT:",style:TextStyle(fontSize:35.0,color:Colors.green[500])),  
            Text("This app is about to show the rating of mobile addiction by person.\n\nAnd You can exit the APP anytime by clicking the EXIT button in every Page.\n\nYou need to give correct information and should answer to every question.\n\nQuestions start by clicking READY button below or START button in HOME PAGE.\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 20.0,color:Colors.red[500]),),
            Text("Your score starts from ${CallMe()}\n",style:TextStyle(fontSize:25.0,color:Colors.green[500])),
            FlatButton(
              child: Text("HOME PAGE"),
              color: Colors.red,
              onPressed: (){
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                );
              },
            ),
            Text("\n"),
              FlatButton(
                child: Text("READY"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
                  );

                },
              ),
              Text("\n"),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}




//class SecondScreen extends StatelessWidget {
//  @override
//  Widget build (BuildContext ctxt) {
//    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text("Mobile Addiction Rating Application"),
//        ),
//        ,
//
//        body:
//    );
//  }
//}
class SecondScreen extends StatelessWidget {
  int count;
  SecondScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("1",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2(),
              Text("Do you Use yor mobile early in the morning on the bed ?",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange  ,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ThirdScreen(count)),
                  );
                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ThirdScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}





class ThirdScreen extends StatelessWidget {
  int count;
  ThirdScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("2",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage3(),
              Text("Do you Use yor mobile while driving ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.red,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FourthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.red,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FourthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}
class FourthScreen extends StatelessWidget {
  int count;
  FourthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("3",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage4(),
              Text("Do you play atleast 2-3 hours on Mobile games ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.red[200],
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FifthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.red[200],
                onPressed: (){
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FifthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}


class FifthScreen extends StatelessWidget {
  int count;
  FifthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("4",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage5(),
              Text("Do you check your moble with anxiety frequently without any need ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
             
              FlatButton(
                child: Text("Yes"),
                color: Colors.green,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SixthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.green,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SixthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
               FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )

            ],
          ),
        )

    );
  }
}


class SixthScreen extends StatelessWidget {
  int count;
  SixthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("5",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage6(),
              Text("Do you influence by socialmedia to take any Decisions ?",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.green,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SeventhScreen(count)),
                  );

                },
               ),
              FlatButton(
                child: Text("No"),
                color: Colors.green,
                onPressed: (){
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SeventhScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}


class SeventhScreen extends StatelessWidget {
  int count;
  SeventhScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Text("6",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 35.0),),
              ShowImage7(),
              Text("Do you use mobile while eating ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.blue,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EndScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.blue,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EndScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}


class EndScreen extends StatelessWidget {
  int count;
  String Ans;
  EndScreen(this.count);
  int CallMe(count)
  {
    return count;
  }
  String Rating(count)
  {
    if(count>=0 && count<=4)
    {
      return "You are well";
    }
    else if(count>4 && count<=8)
    {
      return "You need to control yourself from Addiction";
    }
    else if(count>8 && count<=12)
    {
      return "You need to consult a psychiatrist to stop addicting from mobile";
    }
    else
    {
      return "you went wrong somewhere, please START AGAIN";
    }
  }
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Rating\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.deepOrange),),
              Text("If your score is between 2 and 4  = You are well\n"
                  " If your score is between 4 and 8  =You need to control yourself from addiction\n"
                  "If your score is between 8 and 12  =You need to consult a psychiatrist to stop addicting from mobile\n"
                  ,textDirection: TextDirection.ltr,style:TextStyle(fontSize: 15.0,color:Colors.lightGreen),),
              Text("Your score is ${CallMe(count)}\n",style: TextStyle(fontSize: 20.0,color: Colors.black),),
              Text("${Rating(count)}\n",style: TextStyle(fontSize: 25.0,color: Colors.blue),),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              Text("\n"),
              FlatButton(
                child: Text("START AGAIN"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
                  );

                },
              ),
              Text("\nTHANKING YOU\n",style: TextStyle(fontSize: 35.0,color:Colors.deepOrangeAccent),),
              // RaisedButton(
              //   child: Text("EXIT"),
              //   color: Colors.indigo,
              //   onPressed: (){
              //     count=0;
              //     exit(0);

              //   },
              // ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  count=0;
                  exit(0);

                },
              )
            ],
          ),
        )

    );
  }
}







class ShowImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/1.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}

class ShowImage2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/mrg.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}
class ShowImage3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/dr.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}


class ShowImage4 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/game.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}


class ShowImage5 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/anx.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}


class ShowImage6 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/Social.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}

class ShowImage7 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/eat.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}


