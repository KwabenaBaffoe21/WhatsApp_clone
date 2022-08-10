import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
                indicatorColor: Colors.white,
                labelPadding: const EdgeInsets.all(12.0),
                tabs: [
                  const Icon(Icons.camera_alt_rounded),
                  Container(
                    alignment: Alignment.center,
                    width: 90.0,
                    child: Text('chats'.toUpperCase()),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90.0,
                    child: Text('status'.toUpperCase()),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90.0,
                    child: Text('calls'.toUpperCase()),
                  )
                ]),
          ),
          body: const TabBarView(
            children: [
              Text('Camera'),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
          floatingActionButton: indexTab == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Theme.of(context).primaryColor,
                  child: const Icon(Icons.message_outlined),
                )
              : indexTab == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white60,
                            child: const Icon(Icons.edit_rounded)),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Theme.of(context).primaryColor,
                          child: const Icon(Icons.camera_alt_rounded),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: const Icon(Icons.add_call),
                    )),
    );
  }
}
