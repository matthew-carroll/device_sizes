/// Screen size metrics for a desktop or mobile device.
class DeviceSize {
  const DeviceSize({
    required this.name,
    required this.pixelResolution,
    required this.aspectRatio,
    required this.screenSize,
    required this.pixelDensity,
  });

  /// Name of the device, e.g., "iPhone 12".
  final String name;

  /// The physical size of the screen, e.g., in inches.
  PhysicalSize get physicalSize => PhysicalSize(
        PhysicalDimension.inches(pixelResolution.width * pixelDensity),
        PhysicalDimension.inches(pixelResolution.height * pixelDensity),
      );

  /// The pixel resolution of the screen, which measures the true
  /// number of pixels on the screen, e.g., 2532 x 1170 for the iPhone 12.
  final Size pixelResolution;

  /// The aspect ratio of the screen, defined as the screen width / height,
  /// with the width defined as the wider of the two dimensions.
  final AspectRatio aspectRatio;

  /// The distance between opposite corners of the device, measured physically,
  /// e.g., in inches.
  final PhysicalDimension screenSize;

  /// The number of pixels per inch.
  final num pixelDensity;
}

/// A two-dimensional size.
class Size {
  const Size(this.width, this.height);

  /// The horizontal measure of this size.
  final num width;

  /// The vertical measure of this size.
  final num height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Size && runtimeType == other.runtimeType && width == other.width && height == other.height;

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

/// A two-dimensional size, comprised of [PhysicalDimension]s.
class PhysicalSize {
  const PhysicalSize(
    this.width,
    this.height,
  );

  final PhysicalDimension width;
  final PhysicalDimension height;
}

/// A dimension that represents a real distance, e.g., inches or millimeters.
class PhysicalDimension {
  static const mmPerInch = 25.4;

  const PhysicalDimension.inches(num inches) : _inches = inches;

  const PhysicalDimension.millimeters(num millimeters) : _inches = millimeters / mmPerInch;

  final num _inches;

  /// This dimension, measured in inches.
  num get inches => _inches;

  /// This dimension, measured in millimeters.
  num get millimeters => _inches * mmPerInch;

  @override
  String toString() => "PhysicalDimension: $inches in, $millimeters mm";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhysicalDimension && runtimeType == other.runtimeType && _inches == other._inches;

  @override
  int get hashCode => _inches.hashCode;
}

/// Aspect ratio, represented as width:height, e.g., 16:9 for a common computer display.
///
/// An aspect ratio is often represented as a `double` in code, however, screen
/// specifications often describe aspect ratios in the `width:height` format. Therefore,
/// this class is offered as a way to easily record aspect ratios in the format that
/// they are publicly specified.
class AspectRatio {
  const AspectRatio(this.width, this.height);

  /// The longer side of the aspect ratio.
  final num width;

  /// The shorter side of the aspect ratio.
  final num height;

  /// [width]/[height]
  num get toNum => width / height;
}
