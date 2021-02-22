import 'package:flutter/foundation.dart';
import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';

class ProviderBook with ChangeNotifier, DiagnosticableTreeMixin {
  List<BookModel> listTotal;
  List<String> listHistorial;

  bool _existList = false;

  bool get existList => this._existList;

  void saveAPIList(List<BookModel> listTemp) {
    listTotal.addAll(listTemp);
    notifyListeners();
  }

  void addHistorial(String item) {
    listHistorial.add(item);
    notifyListeners();
  }

  void existListProvider() {
    if (listTotal.isEmpty) {
      _existList = false;
    } else {
      _existList = true;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(FlagProperty('pending', value: _existList));
  }
}
