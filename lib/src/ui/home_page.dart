import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TENIS'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12.0),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text('Manuel Santana'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('9:00 PM'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('10/09/2020'),
                    )
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    '73 %',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text('Manuel Santana'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('9:00 PM'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('10/09/2020'),
                    )
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    '73 %',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text('Manuel Santana'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('9:00 PM'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('10/09/2020'),
                    )
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    '73 %',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text('Manuel Santana'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('9:00 PM'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('10/09/2020'),
                    )
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    '73 %',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text('Manuel Santana'),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('9:00 PM'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('10/09/2020'),
                    )
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Text(
                    '73 %',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
