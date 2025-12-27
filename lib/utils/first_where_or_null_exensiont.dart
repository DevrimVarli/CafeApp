extension FirstWhereOrNullExt<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    for (T e in this) {
      if (test(e)) return e;
    }
    return null;
  }
}
