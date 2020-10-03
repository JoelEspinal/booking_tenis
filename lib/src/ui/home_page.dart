import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESERVAS'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel:
                  MaterialLocalizations.of(context).modalBarrierDismissLabel,
              barrierColor: Colors.black45,
              transitionDuration: const Duration(milliseconds: 250),
              pageBuilder: (BuildContext buildContext, Animation animation,
                  Animation secondaryAnimation) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('RESERVAR'),
                    leading: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              });
        },
        label: Text('Reservar'),
        icon: Icon(Icons.add),
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
