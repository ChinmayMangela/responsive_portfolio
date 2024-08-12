class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String year;
  final String? client;
  final String roleInProject;
  final String? liveDemoLink;
  final String githubLink;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
    this.client,
    required this.roleInProject,
    this.liveDemoLink,
    required this.githubLink,
  });
}
