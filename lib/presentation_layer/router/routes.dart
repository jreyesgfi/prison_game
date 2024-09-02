enum AppRoute {
  settings,
  training,
  report,
}

class NavigationDestinationItem {
  final String iconPath;
  final String selectedIconPath;
  final String label;

  NavigationDestinationItem({
    required this.iconPath,
    required this.selectedIconPath,
    required this.label,
  });
}

final List<NavigationDestinationItem> navigationItems = [
  NavigationDestinationItem(
    iconPath: "assets/icons/profile.svg",
    selectedIconPath: "assets/icons/profile.svg",
    label: "Test",
  ),
  NavigationDestinationItem(
    iconPath: "assets/icons/profile.svg",
    selectedIconPath: "assets/icons/profile.svg",
    label: "Test2",
  ),
];