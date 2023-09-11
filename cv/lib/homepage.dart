import 'package:cv/edit_page.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 117, 243),
        title: const Text(
          'Resume',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            buildTile(
              subTitle: 'Your Full Name',
              onTap: () {
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(
                    builder: (context) => EditPage(value: fullName!),
                  ),
                )
                    .then((value) {
                  setState(() {
                    fullName = value??'';
                  });
                });
              },
              title: fullName ?? '',
            ),
            buildTile(
              title: slackUserName ?? '',
              subTitle: 'Slack username',
              onTap: () {
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(
                    builder: (context) => EditPage(value: slackUserName!),
                  ),
                )
                    .then((value) {
                  setState(() {
                    slackUserName = value??'';
                  });
                });
              },
            ),
            buildTile(
              title: githubHandle ?? '',
              subTitle: 'GitHub handle',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context) => EditPage(value: githubHandle!),
                ))
                    .then((value) {
                  setState(() {
                    githubHandle = value??'';
                  });
                });
              },
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 117, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.book,
                          color: Color.fromARGB(255, 33, 117, 243),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Input Your Bio Here',
                          style: TextStyle(
                            color: Color.fromARGB(255, 33, 117, 243),
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (context) => EditPage(value: myBio??''),
                              ))
                                  .then((value) {
                                setState(() {
                                  myBio = value??'';
                                });
                              });
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Color.fromARGB(255, 33, 117, 243),
                            ))
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 240,
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      color: Colors.grey[100],
                      child: ListView(
                        children: [
                          Text(
                            myBio ?? '',
                            softWrap: true,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTile({String? title, String? subTitle, Function()? onTap}) {
    return Container(
      padding: const EdgeInsets.all(10),
      // color: Colors.black,
      child: ListTile(
        title: Text(
          title!,
          style: const TextStyle(
            color: Color.fromARGB(255, 33, 117, 243),
            fontSize: 22,
          ),
        ),
        subtitle: Text(
          subTitle!,
          style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 10,
          ),
        ),
        trailing: IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.edit,
            color: Color.fromARGB(255, 33, 117, 243),
          ),
        ),
      ),
    );
  }
}
