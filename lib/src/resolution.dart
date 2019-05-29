class Resolution {
  static int _levelIncrementor = 0;
  static Resolution low = Resolution(_levelIncrementor++);
  static Resolution normal = Resolution(_levelIncrementor++);
  static Resolution high = Resolution(_levelIncrementor++);

  final int level;
  const Resolution(this.level);

  @override
  String toString() {
    return 'Resolution{level: $level}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Resolution &&
              runtimeType == other.runtimeType &&
              level == other.level;

  @override
  int get hashCode => level.hashCode;
}
