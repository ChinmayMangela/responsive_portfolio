
class Experience {
  final String position;
  final String duration;
  final String? companyName;
  final String description;

  const Experience({
    required this.position,
    required this.duration,
    this.companyName,
    required this.description,
  });
}
