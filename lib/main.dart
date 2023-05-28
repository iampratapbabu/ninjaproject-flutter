import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home:MyApp()
      ));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja Id Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

        //giving margina and padding
        // body:Container(
        //   //padding: EdgeInsets.all(20.0),
        //   //padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        //   margin: EdgeInsets.all(10),
        //   color:Colors.green[100],
        //   child:Text("heo"),
        // )

      // body:Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   //crossAxisAlignment: CrossAxisAlignment.stretch,
      //   //rossAxisAlignment: CrossAxisAlignment.start,
      //   //rossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Text("Hello world"),
      //     TextButton(
      //         onPressed: (){},
      //         style:TextButton.styleFrom(
      //           backgroundColor: Colors.yellow
      //         ),
      //         child: Text("button")
      //     ),
      //     Container(
      //       color:Colors.cyan,
      //       padding: EdgeInsets.all(30),
      //       child:Text("container")
      //     )
      //   ],
      // )

      // body: Column(
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   //mainAxisAlignment: MainAxisAlignment.start,
      //   //mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //
      //   children: [
      //     Row(
      //       children: [
      //         TextButton(onPressed: (){}, child: Text("insider button")),
      //         Text("inside text"),
      //       ],
      //     ),
      //     TextButton(onPressed: (){}, child: Text("hello")),
      //     Text("Normal text"),
      //     Container(
      //       padding: EdgeInsets.all(20),
      //       color: Colors.yellow,
      //       child:Text("container")
      //     ),
      //     Container(
      //         padding: EdgeInsets.all(20),
      //         color: Colors.green,
      //         child:Text("container")
      //     ),
      //     Container(
      //         padding: EdgeInsets.all(20),
      //         color: Colors.red,
      //         child:Text("container")
      //     ),
      //   ],
      // ),


      // body:Row(
      //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   //crossAxisAlignment: CrossAxisAlignment.center,
      //   //crossAxisAlignment: CrossAxisAlignment.stretch,
      //   //rossAxisAlignment: CrossAxisAlignment.start,
      //   //rossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Expanded(
      //       flex:5,
      //         child:Image.network('https://images.unsplash.com/photo-1684755343416-f402793a7d23?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80'),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         color:Colors.cyan,
      //         padding: EdgeInsets.all(20),
      //         child:Text("1")
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //           color:Colors.red,
      //           padding: EdgeInsets.all(20),
      //           child:Text("2")
      //       ),
      //     ),
      //     Expanded(
      //       flex:2,
      //         child:Container(
      //             color:Colors.yellow,
      //             padding: EdgeInsets.all(20),
      //             child:Text("3")
      //         )
      //     )
      //
      //   ],
      // )



      //ninja id project
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor:Colors.grey[850],
        elevation:0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assests/MyImage.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
                color: Colors.grey,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Tej Pratap",
              style: TextStyle(
                  color:Colors.amberAccent[200],
                  letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "NInja Level",
              style: TextStyle(
                  color:Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color:Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  "tejpratap.5463@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}





