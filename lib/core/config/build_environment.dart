enum BuildFlavor { production, development, mock }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment {
  final BuildFlavor flavor;

  BuildEnvironment._init(
      {required this.flavor,});

  static void init(
          {required flavor,}) =>
      _env ??= BuildEnvironment._init(
          flavor: flavor,);
}
