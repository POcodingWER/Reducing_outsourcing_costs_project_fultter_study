import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('brouhaha AppBar'),
          centerTitle: true,
          elevation: 1,
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('carts');
                },
                icon: const Icon(Icons.shopping_cart)),
            IconButton(
                onPressed: () {
                  debugPrint('searchs');
                },
                icon: const Icon(Icons.search))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('cs.lim'),
                accountEmail: const Text('cs.lim@cc.c'),
                onDetailsPressed: () {
                  debugPrint('zzzzzzzzzzzzz');
                },
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                  ),
                ],
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0x838CD3DE),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey[850]),
                title: Text('HOME'),
                onTap: () {
                  debugPrint('11111');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[850]),
                title: Text('setting'),
                onTap: () {
                  debugPrint('22222');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.question_answer, color: Colors.grey[850]),
                title: Text('question'),
                onTap: () {
                  debugPrint('3333333');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('ScaffoldMessenger')));
                },
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 15, color: Colors.white)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text("ElevatedButton"),
              ),
            );
          },
        ));
  }
}
