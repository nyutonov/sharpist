class Task4Response {
  final String? similarity;
  final List<String>? errors;

  Task4Response({
    this.similarity,
    this.errors,
  });

  factory Task4Response.fromJson(Map<String, dynamic> json) => Task4Response(
    similarity: json["similarity"],
    errors: json["errors"] == null ? [] : List<String>.from(json["errors"]!.map((x) => x)),
  );
}
