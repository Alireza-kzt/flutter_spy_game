import 'package:get_storage/get_storage.dart';

class RandomNumberRepository {
  final box = GetStorage();
  final String indexKey = 'INDEX_KEY';

  List getIndexes() => box.read<List>(indexKey) ?? [];

  void addIndex(index) {
    final list = getIndexes();
    list.add(index);
    box.write(indexKey, list);
  }

  void clearList() => box.write(indexKey, []);
}
