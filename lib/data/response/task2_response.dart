class Task2Response {
  final List<int>? response;

  Task2Response({
    this.response,
  });

  factory Task2Response.fromJson(Map<String, dynamic> json) => Task2Response(
    response: json["response"] == null ? [] : List<int>.from(json["response"]!.map((x) => x)),
  );
}
