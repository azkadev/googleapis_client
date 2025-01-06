part 'fragment.g.dart';

/// Fragment used for DASH Manifests.

class Fragment {
  final String path;

  const Fragment(this.path);

  factory Fragment.fromJson(Map<String, dynamic> json) =>
      _$FragmentFromJson(json);

  Map<String, dynamic> toJson() => _$FragmentToJson(this);
}
