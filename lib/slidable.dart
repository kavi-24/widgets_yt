import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySlidable extends StatefulWidget {
  const MySlidable({ Key? key }) : super(key: key);

  @override
  State<MySlidable> createState() => _MySlidableState();
}

class _MySlidableState extends State<MySlidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(onPressed: ((context) {
                // Call number
              }),
              icon: Icons.phone,
              backgroundColor: Colors.green,
              ),
              SlidableAction(
                flex: 2,
                onPressed: ((context) {
                // Text number
              }),
              icon: Icons.chat,
              backgroundColor: Colors.blue,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(onPressed: ((context) {
                // Delete number
              }),
              icon: Icons.delete,
              backgroundColor: Colors.red,
              ),
            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: const ListTile(
              title: Text("Contact 1"),
              subtitle: Text("+91 636 362 8542"),
              leading: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}