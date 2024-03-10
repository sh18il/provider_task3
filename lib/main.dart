import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task8/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Change(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Change>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('change Color'),
          SizedBox(
            height: 20,
          ),
          Consumer<Change>(builder: (context, pro, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: pro.colur == true ? Colors.red : Colors.blue,
                ),
                CircleAvatar(
                  backgroundColor: pro.colur == true ? Colors.blue : Colors.red,
                ),
              ],
            );
          }),
          Container(
            child: TextButton(onPressed: () {
              provider.Value();
            }, child: Consumer<Change>(builder: (context, pro, _) {
              return Center(
                  child: pro.colur == true ? Text('change') : Text('done'));
            })),
          )
        ],
      ),
    );
  }
}
