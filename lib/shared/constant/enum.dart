enum ToiletFilter {
  time("time"),
  gender("gender"),
  password("password"),
  ;

  const ToiletFilter(this.key);

  final String key;
}
