class CardEntity {
  final int id;
  final String title;
  final String description;
  final String imagePath;
  final List<Function> actions;

  CardEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.actions,
  });
}

