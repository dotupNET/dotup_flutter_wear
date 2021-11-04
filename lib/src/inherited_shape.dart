import 'package:flutter/widgets.dart';

import 'wear_shape.dart';

/// An inherited widget that holds the shape of the Watch
@Deprecated("Add WatchShape instead and use WatchShape.of(context) to get the shape value.")
class InheritedShape extends InheritedWidget {
  const InheritedShape({
    Key? key,
    required this.shape,
    required Widget child,
  }) : super(key: key, child: child);

  final WearShape shape;

  static InheritedShape of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedShape>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => shape != (oldWidget as InheritedShape).shape;
}
