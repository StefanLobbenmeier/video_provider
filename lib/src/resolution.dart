class Resolution {
  static int _levelIncrementor = 0;
  static Resolution low = Resolution(_levelIncrementor++);
  static Resolution normal = Resolution(_levelIncrementor++);
  static Resolution high = Resolution(_levelIncrementor++);

  Resolution(int i);
}
