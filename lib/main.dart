import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      title: "counter app",
      home: const Home(),
    );
   
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
    int counter =0;
    bool target = true;
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text("Frist Task"),centerTitle: true,) ,
        body:Center(
          child: Text("$counter",style: TextStyle(fontSize: 60),)
        ) ,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(counterUpdate);
          },
          child: Icon(target?Icons.add:Icons.remove),
        ),
      );
    }

    void counterUpdate(){
      if(target){
        counter++;
        if(counter==20){
          target = false;
        }
      }
      else{
        counter--;
        if(counter==0){
          target = true;
        }
      }
    }
}