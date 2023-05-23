import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import '../../features/theme_page/presentation/widgets/skeleton_item.dart';

class BiuBiuListView extends StatefulWidget {
  const BiuBiuListView({Key? key}) : super(key: key);

  @override
  State<BiuBiuListView> createState() => _BiuBiuListViewState();
}

class _BiuBiuListViewState extends State<BiuBiuListView> {
  late EasyRefreshController _controller;
  int _count = 10;
  Axis _scrollDirection = Axis.vertical;
  int _expandedIndex = -1;
  final _MIProperties _headerProperties = _MIProperties(
    name: 'Header',
  );
  final _MIProperties _footerProperties = _MIProperties(
    name: 'Footer',
  );

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final propertiesItems = [_headerProperties, _footerProperties];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material'),
      ),
      body: EasyRefresh(
        clipBehavior: Clip.none,
        controller: _controller,
        header: MaterialHeader(
          clamping: _headerProperties.clamping,
          showBezierBackground: _headerProperties.background,
          bezierBackgroundAnimation: _headerProperties.animation,
          bezierBackgroundBounce: _headerProperties.bounce,
          infiniteOffset: _headerProperties.infinite ? 100 : null,
          springRebound: _headerProperties.listSpring,
        ),
        footer: MaterialFooter(
          clamping: _footerProperties.clamping,
          showBezierBackground: _footerProperties.background,
          bezierBackgroundAnimation: _footerProperties.animation,
          bezierBackgroundBounce: _footerProperties.bounce,
          infiniteOffset: _footerProperties.infinite ? 100 : null,
          springRebound: _footerProperties.listSpring,
        ),
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          if (!mounted) {
            return;
          }
          setState(() {
            _count = 10;
          });
          _controller.finishRefresh();
          _controller.resetFooter();
        },
        onLoad: () async {
          await Future.delayed(const Duration(seconds: 2));
          if (!mounted) {
            return;
          }
          setState(() {
            _count += 5;
          });
          _controller.finishLoad(
              _count >= 20 ? IndicatorResult.noMore : IndicatorResult.success);
        },
        child: ListView.builder(
          clipBehavior: Clip.none,
          scrollDirection: _scrollDirection,
          padding: EdgeInsets.zero,
          itemCount: _count,
          itemBuilder: (ctx, index) {
            return SkeletonItem(
              direction: _scrollDirection,
            );
          },
        ),
      ),
    );
  }
}

/// Material indicator properties.
class _MIProperties {
  final String name;
  bool clamping = true;
  bool background = false;
  bool animation = false;
  bool bounce = false;
  bool infinite = false;
  bool listSpring = false;

  _MIProperties({
    required this.name,
  });
}
