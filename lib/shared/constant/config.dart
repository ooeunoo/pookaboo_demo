class Config {
  Config._();

  static Config get = Config._();

  String appName = "Pookaboo";

  String supabaseLoginRedirectTo =
      'io.supabase.flutterquickstart://login-callback/';
}
