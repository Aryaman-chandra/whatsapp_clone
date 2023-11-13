import 'package:flutter/material.dart';

List<String> title = <String>['Chats', 'Status', 'Calls'];

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    const int tabsCount = 3;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          initialIndex: 0,
          length: tabsCount,
          child: Scaffold(
            appBar: AppBar(
                title: Text('Whatsapp'),
                backgroundColor: Color.fromARGB(255, 0, 103, 77),
                actions: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.message_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
                bottom: TabBar(indicatorColor: Colors.white, tabs: <Widget>[
                  Tab(text: title[0]),
                  Tab(text: title[1]),
                  Tab(text: title[2])
                ])),
            body: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                children: [
                  Chat(name: 'Aryaman', preview: 'Helloo...',notify:true),
                  Chat(name: 'Shreyansh', preview: 'I\'m using whatsapp'),
                  Chat(
                      name: 'President', preview: 'Sir!....We need your help!'),
                  Chat(
                      name: 'My imaginary Girlfriend',
                      preview: 'We need to break up!'),
                  Chat(name: 'Swarnim', preview: 'Yo'),
                  Chat(name: 'p', preview: 'Helloo...'),
                  Chat(name: 'e', preview: 'Helloo...'),
                  Chat(name: 'r', preview: 'Helloo...'),
                  Chat(name: 's', preview: 'Helloo...'),
                  Chat(name: 'o', preview: 'Helloo...'),
                  Chat(name: 'n', preview: 'Helloo...'),
                  Chat(name: 'Aryaman', preview: 'Helloo...'),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  Chat({super.key, this.name, this.preview, this.notify});
  final String? name;
  final String? preview;
  final bool? notify;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListTile(
        shape: LinearBorder.bottom(side: BorderSide(color: Colors.grey)),
        leading: CircleAvatar(
            radius: 35,
            backgroundColor: const Color.fromARGB(255, 211, 211, 211),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                ))),
        title: Text(name ?? '', style: (notify?? false)? TextStyle(color: Colors.black,fontWeight: FontWeight.bold):TextStyle(color: Colors.black)),
        subtitle: Text(preview ?? ' ', style: (notify?? false)?TextStyle(color:Colors.grey,fontWeight: FontWeight.bold):TextStyle(color: Colors.grey)),
      ),
    );
  }
}
