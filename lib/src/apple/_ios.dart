import 'package:device_sizes/device_sizes.dart';

/// Screen size metrics for an iOS device.
///
/// `iOSDeviceSize` adds [logicalResolution] and [renderScale] to the
/// standard [DeviceSize] definition.
class iOSDeviceSize extends DeviceSize {
  const iOSDeviceSize({
    required String name,
    required Size pixelResolution,
    required AspectRatio aspectRatio,
    required this.renderScale,
    required PhysicalDimension screenSize,
    required num pixelDensity,
  }) : super(
          name: name,
          pixelResolution: pixelResolution,
          aspectRatio: aspectRatio,
          screenSize: screenSize,
          pixelDensity: pixelDensity,
        );

  /// The logical resolution of the screen, which is measured as
  /// the [pixelResolution] / [renderScale].
  ///
  /// For example, the iPhone 12 has a pixel resolution of 2532 x 1170
  /// at a render scale of 3x, leading to a logical resolution of
  /// 844 x 390.
  Size get logicalResolution => Size(
        pixelResolution.width / renderScale,
        pixelResolution.height / renderScale,
      );

  /// The number of physical pixels per logical pixel.
  ///
  /// See [logicalResolution] and [pixelResolution].
  final num renderScale;
}
