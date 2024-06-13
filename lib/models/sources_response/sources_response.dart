import 'package:news_app/models/sources_response/source.dart';

class SourcesResponse {
  final String? status;
  final List<Source>? sources;

  const SourcesResponse({this.status, this.sources});

  @override
  String toString() => 'SourcesResponse(status: $status, sources: $sources)';

  factory SourcesResponse.fromJson(Map<String, dynamic> json) {
    return SourcesResponse(
      status: json['status'] as String?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'sources': sources?.map((e) => e.toJson()).toList(),
      };
}
