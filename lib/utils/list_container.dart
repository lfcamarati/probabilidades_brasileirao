import 'package:collection/collection.dart';

class ListContainer<T> {
  List<T> values = [];

  ListContainer(this.values);

  ListContainer.empty() {
    ListContainer<T>(List.empty());
  }

  int size() => values.length;

  List<List<T>> partition(int size) {
    List<List<T>> chunks = [];

    for (var i = 0; i < values.length; i += size) {
      chunks.add(values.sublist(i, i + size > values.length ? values.length : i + size));
    }

    return chunks;
  }

  @override
  bool operator ==(Object other) =>
    other is ListContainer &&
    other.runtimeType == runtimeType &&
    other.hashCode == hashCode &&
    const DeepCollectionEquality().equals(other.values, values);

  @override
  int get hashCode => const DeepCollectionEquality().hash(values);
}