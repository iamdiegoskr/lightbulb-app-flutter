
import 'package:flutter/material.dart';

class BombilloPage extends StatefulWidget {
  const BombilloPage({Key? key}) : super(key: key);

  @override
  _BombilloPageState createState() => _BombilloPageState();
}

class _BombilloPageState extends State<BombilloPage> {

  bool stateBombillo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOMBILLO APLICATION'),
      ),
      body: Container(
        padding:  const EdgeInsets.all(40),
        child:  Center(
          child: (!stateBombillo)?
          const Image(
            image:  AssetImage('assets/bomon.png'),
          ) :
          const Image(image: AssetImage('assets/bomoff.png')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_circle),
        onPressed: (){
          setState(() {
            stateBombillo = !stateBombillo;
          });
        }
        ),
    );
  }

}