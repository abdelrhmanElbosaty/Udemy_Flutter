
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget{

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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                                'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                                'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Mahmoud Ali Ali Mahmoud',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
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
                        const Text(
                          'Mahmoud Ali Ali',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: const [
                            Text(
                              'message',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                                '.5/6/2013',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        'Mahmoud Ali Ali',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Text(
                            'message',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '.5/6/2013',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}