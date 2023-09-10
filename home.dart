import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_flutter/guotes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic generating'),
      ),
      body: ListView.builder(itemCount: listofguotes.length,itemBuilder: (BuildContext context, int index) {      
        return builit(index);
      }),
    );
  }
}
String chooserandomguote(){
  int indexx = Random().nextInt(listofguotes.length);
  return listofguotes[indexx]; 
}
//----------------------------------------------------------    proměnné
List<int?>alreadyseenpage = [];
List<String>alreadyseenquotes = [];
//----------------------------------------------------------
//----------------------------------------------------------  vse dohromady
Widget builit(int index) {
  debugPrint('BUILD SOMETHING');
if(  /*index >= 0 && index < 10*/alreadyseenpage.length <= index){
  //int number = alreadyseenpage[index]; 
debugPrint('no there is no number here'); 
 alreadyseenpage.add(1);  // zdeje ze zacatku 10 x 1
  return Container(
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    height: 200,
    color: Colors.blue,
    child: Text(' ${() {
  String myLocalVariable = chooserandomguote();
  alreadyseenquotes.add(myLocalVariable);
  return myLocalVariable;
}()}'),
  );
}
else
{
debugPrint('yes the is a number');
  debugPrint('buildOld $index');
  int? ses = index;
  return Container(
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    height: 200,
    color: Colors.blue,
    
    child: Text(alreadyseenquotes[ses]),
  );
}
}
/* -----------------------------------------------------------    stary zpusob
Widget buildNew(int index) {
  debugPrint('buildNew $index');
  alreadyseenpage.add(index);  // zdeje ze zacatku 0 1 2 3
  return Container(
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    height: 200,
    color: Colors.blue,
    child: Text(' ${() {
  String myLocalVariable = chooserandomguote();
  alreadyseenquotes.add(myLocalVariable);
  return myLocalVariable;

}()}'),
  );
}
Widget getOld(int index) {
  debugPrint('buildOld $index');
  return Container(
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
    height: 200,
    color: Colors.blue,
    child: Text(alreadyseenquotes[index]),
  );
}---------------------------------------------------------------------
*/