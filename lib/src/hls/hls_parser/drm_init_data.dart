import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

import 'scheme_data.dart';

class DrmInitData {
  DrmInitData({this.schemeType, this.schemeData = const []});

  final List schemeData;
  final String? schemeType;

  @OverRide
  bool operator ==(dynamic other) {
    if (other is DrmInitData) {
      return schemeType == other.schemeType &&
          const ListEquality().equals(other.schemeData, schemeData);
    }
    return false;
  }

  @OverRide
  int get hashCode => Object.hash(schemeType, schemeData);
}
