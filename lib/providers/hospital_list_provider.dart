import 'package:flutter/material.dart';
import '../models/hospital_list_model.dart';

class HospitalListProvider with ChangeNotifier {
  List<HospitalListModel> _items = [];

  List<HospitalListModel> get items {
    return [..._items];
  }

  void addHospitals(HospitalListModel value) {
    _items.add(value);
    notifyListeners();
  }
}
