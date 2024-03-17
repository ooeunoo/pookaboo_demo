class MenuItem {
  int section;
  String title;
  void Function() onTap;

  MenuItem({required this.section, required this.title, required this.onTap});
}
