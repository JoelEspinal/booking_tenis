import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../common/constants.dart';

class RainService with ChangeNotifier {
  double _rainPercent = 0;

  double get rainPercent {
    return _rainPercent;
  }

  Future<void> fetchRainProbabilities() async {
    bool hasConnected = await DataConnectionChecker().hasConnection;
    if (hasConnected) {
      try {
        Response response = await Dio().get(
          Constants.WEATHER_URL,
          options: Options(responseType: ResponseType.json),
        );
        double rainData = response.data['list'][0]['rain'];
        if (rainData == null) {
          _rainPercent = 0;
        }

        _rainPercent = (rainData * 100);
        notifyListeners();
      } catch (e) {
        print(e);
      }
    }
  }
}
