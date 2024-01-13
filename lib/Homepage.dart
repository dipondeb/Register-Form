import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

MySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}

MyAlertDialog(context){
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Text('Alert !!!'),
              content: Text('Do you want to submit it'),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Submit Successfully", context);
                  Navigator.of(context).pop();
                  },
                    child: Text('Yes'),
                ),
                TextButton(onPressed: (){Navigator.of(context).pop();},
                  child: Text('No'),
                ),
              ],
            ),
        );
      }
  );
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Studio'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Register Now',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    label: Text('First Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Last Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Email Address'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Confim Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                MyAlertDialog(context);
              },
                  child: Text('Submit'),
                style: buttonStyle,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Text('Forget passsword',
                style: TextStyle(
                  fontSize: 17,
                ),
                ),
              ),
              Text('Create another account',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
