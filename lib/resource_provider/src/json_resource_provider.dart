import 'package:faiadashu/faiadashu.dart';
import 'package:fhir/r4/resource/resource.dart';

class JsonResourceProvider extends FhirResourceProvider {
  static final _logger = Logger(JsonResourceProvider);

  final Map<String, Resource> resources = {};

  final String uri;
  final Map<String, dynamic> jsonMap;

  JsonResourceProvider.fromMap(this.uri, this.jsonMap);

  @override
  Future<void> init() async {
    resources[uri] = Resource.fromJson(
      jsonMap['resource'] as Map<String, dynamic>,
    );
  }

  @override
  Resource? getResource(String uri) {
    _logger.debug('getResource $uri from: ${resources.keys}');

    return resources.containsKey(uri) ? resources[uri] : null;
  }

  @override
  FhirResourceProvider? providerFor(String uri) {
    return resources.containsKey(uri) ? this : null;
  }
}
