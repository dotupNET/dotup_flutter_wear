// ignore_for_file: prefer_generic_function_type_aliases

import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import 'inherited_shape.dart';
import 'wear.dart';
import 'wear_shape.dart';

/// Builds a child for a [WatchShape]
typedef Widget WatchShapeBuilder(BuildContext context, WearShape shape, Widget? child);

/// Builder widget for watch shapes
@immutable
class WatchShape extends StatefulWidget {
  const WatchShape({
    Key? key,
    this.builder,
    this.child,
  })  : assert(builder != null || child != null),
        super(key: key);

  final WatchShapeBuilder? builder;
  final Widget? child;

  /// Call [WatchShape.of(context)] to retrieve the shape further down
  /// in the widget hierarchy.
  static WearShape of(BuildContext context) {
    // ignore: deprecated_member_use_from_same_package
    return InheritedShape.of(context).shape;
  }

  @override
  _WatchShapeState createState() => _WatchShapeState();
}

class _WatchShapeState extends State<WatchShape> {
  late WearShape _shape;

  @override
  void initState() {
    super.initState();
    // Default to round until the platform returns the shape
    // round being the most common form factor for WearOS
    _shape = WearShape.round;
    Wear.instance.getShape().then((String shape) {
      if (mounted) {
        setState(() => _shape = (shape == 'round' ? WearShape.round : WearShape.square));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use_from_same_package
    return InheritedShape(
      shape: _shape,
      child: Builder(
        builder: (BuildContext context) {
          if (widget.builder == null) {
            return widget.child!;
          } else {
            return widget.builder!(context, _shape, widget.child);
          }
        },
      ),
    );
  }
}
