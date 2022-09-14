import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            actions:  [
              Icon(Icons.search),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                        value: 1,
                        child: Text('New Group')),
                    const PopupMenuItem(
                        value: 2,
                        child: Text('New Broadcast')),
                    const PopupMenuItem(
                        value: 3,
                        child: Text('Linked Devices')),
                    const PopupMenuItem(
                        value: 4,
                        child: Text('Starred Masseges')),
                    const PopupMenuItem(
                        value: 5,
                        child: Text('Settings')
                    ),

            ],
        ),
              
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('CHATS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                Tab(child: Text('STATUS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                Tab(child: Text('CALLS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
              ],
            ),
          ),
          body:  TabBarView(
            children: [

              Icon(Icons.camera_alt),

              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return  ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/aamir.jpg'),
                        ),

                        title: Text('Aamir'),
                        subtitle: Text("hello how are you"),
                        trailing: index / 2==0? Text('7:40 am'):Text('3:30 pm,'),
                      );
                    }),
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return  index/ 2== 0? ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/tajz.jpg'),
                        ),

                        title: Text('My Status'),
                        subtitle: Text("1 minuts ago"),
                        //trailing: index / 2==0? Text('7:40 am'):Text('3:30 pm,'),


                      )

                      :

                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                            width: 3,
                              color: Colors.green,
                            )
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/aamir.jpg'),
                          ),
                        ),

                        title: Text('Aamir'),
                        subtitle: Text("12 minuts ago"),
                        //trailing: index / 2==0? Text('7:40 am'):Text('3:30 pm,'),
                      );
                    }),
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return  ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/aamir.jpg'),
                        ),

                        title: Text('Aamir'),
                        subtitle: Text("August 29, 10:24 AM"),
                        trailing: Icon(Icons.call),
                      );

                    }
                    ),
              ),

            ],
          ),

        )
    );

  }
}
