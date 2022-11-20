
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User{
  final int id;
  final String name;
  final String phone;

  User({
    required this.id,
    required this.phone,
    required this.name
  });
}

class MessengerListScreen extends StatelessWidget{

  List<User> users = [
    User(id: 1, phone: "+201243554654", name: "Ahmed ALi"),
    User(id: 2, phone: "+201243121121", name: "Mohamed ALi"),
    User(id: 3, phone: "+201243512341", name: "Ashour ALi"),
    User(id: 4, phone: "+201565443545", name: "Nihal ALi"),
    User(id: 5, phone: "+201298765454", name: "Yasmen ALi"),
    User(id: 6, phone: "+201243876757", name: "Nermin ALi"),
    User(id: 1, phone: "+201243554654", name: "Ahmed ALi"),
    User(id: 2, phone: "+201243121121", name: "Mohamed ALi"),
    User(id: 3, phone: "+201243512341", name: "Ashour ALi"),
    User(id: 4, phone: "+201565443545", name: "Nihal ALi"),
    User(id: 5, phone: "+201298765454", name: "Yasmen ALi"),
    User(id: 6, phone: "+201243876757", name: "Nermin ALi"),
    User(id: 1, phone: "+201243554654", name: "Ahmed ALi"),
    User(id: 2, phone: "+201243121121", name: "Mohamed ALi"),
    User(id: 3, phone: "+201243512341", name: "Ashour ALi"),
    User(id: 4, phone: "+201565443545", name: "Nihal ALi"),
    User(id: 5, phone: "+201298765454", name: "Yasmen ALi"),
    User(id: 6, phone: "+201243876757", name: "Nermin ALi"),
    User(id: 1, phone: "+201243554654", name: "Ahmed ALi"),
    User(id: 2, phone: "+201243121121", name: "Mohamed ALi"),
    User(id: 3, phone: "+201243512341", name: "Ashour ALi"),
    User(id: 4, phone: "+201565443545", name: "Nihal ALi"),
    User(id: 5, phone: "+201298765454", name: "Yasmen ALi"),
    User(id: 36, phone: "+201243876757", name: "Nermin Ahmed"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 24,
        elevation: 0,
        title:  Row (
          children: const [
            CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage('https://i.stack.imgur.com/ILTQq.png'),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[600],
            child: IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 16,
                  color: Colors.white,
                )
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[600],
            child: IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[700],
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) => buildStoryHead(),
                //   itemCount: 5,
                // ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryHead(users[index]),
                  separatorBuilder: (context, index) => const SizedBox(width: 16),
                  itemCount: users.length,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMessengerChat(users[index]),
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemCount: users.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryHead(User user) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage('https://i.stack.imgur.com/ILTQq.png'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8) ,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: const CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  user.name,
                  style: const TextStyle(
                      color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ]),
        ),
      ],
    );
  }

  Widget buildMessengerChat(User user) {
    return  Row(
      children: [
        Container(
          width: 70,
          child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage('https://i.stack.imgur.com/ILTQq.png'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8) ,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: const CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '${user.id}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    user.phone,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}