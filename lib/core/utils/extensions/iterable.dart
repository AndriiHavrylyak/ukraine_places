
List<T> flatten<T>(Iterable<Iterable<T>> list) =>
    [for (var sublist in list) ...sublist];

Iterable<T> flattenAsync<T>(Iterable<Iterable<T>> items) sync* {
  for (var i in items) {
    yield* i;
  }
}

Iterable<X> flatMap<T,X>(Iterable<Iterable<T>> items, X Function(T) f) =>
    flatten(items).map(f);

extension ConvertIterable<T> on Iterable<T?> {
  List<T> toNonNullList() {
    return whereType<T>().toList();
  }
}


extension Transform on Iterable {

  List<T> flatten<T>() =>
      [for (var sublist in this) ...sublist];

  List<T>? emptyIfNull<T>() => [];
}
