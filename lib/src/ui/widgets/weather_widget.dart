import 'package:booking_tenis/src/remote/rain_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WheatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<RainService>(context, listen: false)
            .fetchRainProbabilities(),
        builder: (context, data) {
          if (data.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (data.error != null) {
              return Center(child: Text(':/'));
            } else {
              return Consumer<RainService>(builder: (ctx, provabilites, child) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: ListTile(
                      subtitle: Text(
                        'Probabilidad de lluvia',
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        child: Text(
                          '',
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                      trailing: Text(
                        '${provabilites.rainPercent.toStringAsFixed(2)} %',
                        style: TextStyle(fontSize: 24),
                      ),
                    ));
              });
            }
          }
        });
  }
}
