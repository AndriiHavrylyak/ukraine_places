enum BuildFlavor { production, development, mock }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final String baseUrl;
  final String places;
  final String profile;

  BuildEnvironment._init({
    required this.flavor,
    required this.baseUrl,
    required this.places,
    required this.profile,
  });

  static void init({
    required flavor,
    required baseUrl,
    required places,
    required profile,
  }) =>
      _env ??= BuildEnvironment._init(
        flavor: flavor,
        profile: profile,
        baseUrl: baseUrl,
        places: places,
      );
}
