import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppbarScroll extends StatefulWidget {
  const AppbarScroll({
    super.key,
    required this.scrollController,
    this.heightTrigger = 150,
    this.heightAppBar = 150,
    this.backgroundColorBegin = Colors.transparent,
    this.backgroundColorEnd = Colors.white,
    this.contentColorBegin = Colors.white,
    this.contentColorEnd = Colors.white,
    this.title,
    this.tailingText,
    this.onTapTailing,
    this.hasIconBack = true,
    this.tailingIcon,
    this.iconBackColorFixed,
    this.bottomBorderColor,
    this.onBack,
    this.isSliver = false,
  });
  final ScrollController scrollController;
  final double heightTrigger;
  final double? heightAppBar;
  final Color backgroundColorBegin;
  final Color backgroundColorEnd;
  final Color contentColorBegin;
  final Color contentColorEnd;
  final String? title;
  final String? tailingText;
  final Function? onTapTailing;
  final bool hasIconBack;
  final IconData? tailingIcon;
  final Color? iconBackColorFixed;
  final Color? bottomBorderColor;
  final Function? onBack;
  final bool isSliver;

  @override
  _TopBarScrollState createState() => _TopBarScrollState();
}

class _TopBarScrollState extends State<AppbarScroll> with TickerProviderStateMixin {
  late Animation<Color?> _bgAnimation;
  late AnimationController _bgAnimationController;
  late Animation<Color?> _contentAnimation;
  late AnimationController _contentAnimationController;

  @override
  void initState() {
    _bgAnimationController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _bgAnimation =
        ColorTween(begin: widget.backgroundColorBegin, end: widget.backgroundColorEnd).animate(_bgAnimationController);

    _contentAnimationController = AnimationController(vsync: this, duration: Duration.zero);
    _contentAnimation =
        ColorTween(begin: widget.contentColorBegin, end: widget.contentColorEnd).animate(_contentAnimationController);

    widget.scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    _bgAnimationController.animateTo(widget.scrollController.position.pixels / widget.heightTrigger);
    _contentAnimationController.animateTo(widget.scrollController.position.pixels / widget.heightTrigger);
  }

  @override
  void dispose() {
    _bgAnimationController.dispose();
    _contentAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        if (!widget.isSliver)
          AnimatedBuilder(
            animation: _bgAnimationController,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: widget.bottomBorderColor != null
                        ? BorderSide(
                            color: widget.bottomBorderColor!,
                          )
                        : BorderSide.none,
                  ),
                  color: _bgAnimation.value,
                  boxShadow: [
                    if (_bgAnimation.value != widget.backgroundColorBegin)
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        blurRadius: 4,
                      ),
                  ],
                ),
                height: widget.heightAppBar ?? MediaQuery.of(context).padding.top,
              );
            },
          ),
        AnimatedBuilder(
          animation: _contentAnimationController,
          builder: (context, child) {
            return SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        widget.onBack?.call();
                        AutoRouter.of(context).maybePop();
                      },
                      child: platformIconBack(
                        widget.hasIconBack
                            ? (widget.iconBackColorFixed ?? _contentAnimation.value)
                            : Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.title ?? '',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: _contentAnimation.value,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (widget.onTapTailing != null) widget.onTapTailing!();
                      },
                      child: _buildTailing(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildTailing() {
    if ((widget.tailingText ?? '').isNotEmpty) {
      return Text(
        '${widget.tailingText}',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: _contentAnimation.value,
            ),
      );
    }
    if (widget.tailingIcon != null) {
      return Icon(widget.tailingIcon, color: _contentAnimation.value, size: 24);
    }
    return platformIconBack(Colors.transparent);
  }
}

Widget platformIconBack(Color? color) {
  return Icon(
    Icons.arrow_back,
    color: color,
    size: 28,
  );
  // return Icon(
  //   Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
  //   color: color,
  //   size: 24,
  // );
}
