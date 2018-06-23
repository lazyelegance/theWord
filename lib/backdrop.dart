import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'model/book.dart';
import 'frontlayer.dart';

const double _kFlingVelocity = 2.0;

class Backdrop extends StatefulWidget {
  final Book currentBook;
  final String currentChapter;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;
  final VoidCallback onPressNext;

  const Backdrop(
      {@required this.currentBook,
      @required this.currentChapter,
      @required this.frontLayer,
      @required this.backLayer,
      @required this.frontTitle,
      @required this.backTitle,
      this.onPressNext})
      : assert(currentBook != null),
        assert(currentChapter != null),
        assert(frontLayer != null),
        assert(backLayer != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300), value: 1.0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool get _frontLayerVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  void _toggleBackdropLayerVisibility() {
    _controller.fling(
        velocity: _frontLayerVisible ? -_kFlingVelocity : _kFlingVelocity);
  }

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    const double layerTitleHeight = 50.0;
    final Size layerSize = constraints.biggest;
    final double layerLeft = layerSize.width - layerTitleHeight;

    Animation<RelativeRect> layerAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(layerLeft, 0.0, -layerLeft, 0.0),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(_controller.view);

    return Stack(
      key: _backdropKey,
      children: <Widget>[
        widget.backLayer,
        PositionedTransition(
          rect: layerAnimation,
          child: FrontLayer(
            onTap: _toggleBackdropLayerVisibility,
            child: widget.frontLayer,
            onPressNext: widget.onPressNext,
          ),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(Backdrop oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentBook != oldWidget.currentBook && !_frontLayerVisible) {
      _toggleBackdropLayerVisibility();
    } else if (!_frontLayerVisible) {
      _controller.fling(velocity: _kFlingVelocity);
    }
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: _toggleBackdropLayerVisibility,
      ),
      title: _BackdropTitle(
        listenable: _controller.view,
        onPress: _toggleBackdropLayerVisibility,
        frontTitle: widget.frontTitle,
        backTitle: widget.backTitle,
      ),
      // TODO: More actions
    );
    return Scaffold(
      appBar: appBar,
      body: LayoutBuilder(builder: _buildStack),
    );
  }
}

class _BackdropTitle extends AnimatedWidget {
  final Function onPress;
  final Widget frontTitle;
  final Widget backTitle;

  const _BackdropTitle({
    Key key,
    Listenable listenable,
    this.onPress,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(frontTitle != null),
        assert(backTitle != null),
        super(key: key, listenable: listenable);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = this.listenable;

    return DefaultTextStyle(
      style: Theme.of(context).primaryTextTheme.title,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      child: Row(children: <Widget>[
        Stack(
          children: <Widget>[
            Opacity(
              opacity: CurvedAnimation(
                parent: ReverseAnimation(animation),
                curve: Interval(0.5, 1.0),
              ).value,
              child: FractionalTranslation(
                translation: Tween<Offset>(
                  begin: Offset.zero,
                  end: Offset(0.5, 0.0),
                ).evaluate(animation),
                child: backTitle,
              ),
            ),
            Opacity(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Interval(0.5, 1.0),
              ).value,
              child: FractionalTranslation(
                translation: Tween<Offset>(
                  begin: Offset(-0.25, 0.0),
                  end: Offset.zero,
                ).evaluate(animation),
                child: frontTitle,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
