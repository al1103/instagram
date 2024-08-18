import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefresh extends StatefulWidget {
  const PullToRefresh({
    super.key,
    required this.child,
    required this.refreshController,
    required this.scrollController,
    this.enablePullUp = false,
    this.enablePullDown = true,
    this.onRefresh,
    this.onLoading,
    this.footer,
  });
  final Widget child;
  final RefreshController refreshController;
  final ScrollController scrollController;
  final bool? enablePullUp;
  final bool? enablePullDown;
  final VoidCallback? onRefresh;
  final VoidCallback? onLoading;
  final Widget? footer;

  @override
  _PullToRefreshState createState() => _PullToRefreshState();
}

class _PullToRefreshState extends State<PullToRefresh> {
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: widget.refreshController,
      scrollController: widget.scrollController,
      enablePullUp: widget.enablePullUp!,
      onRefresh: () {
        widget.onRefresh?.call();
      },
      onLoading: () {
        widget.onLoading?.call();
      },
      enablePullDown: widget.enablePullDown!,
      // header: ClassicHeader(
      //   idleText: 'Kéo xuống để làm mới',
      //   completeText: 'Làm mới thành công',
      //   refreshingText: 'Đang làm mới',
      //   releaseText: 'Thả tay để làm mới',
      //   refreshingIcon: CupertinoActivityIndicator(),
      // ),
      physics: const RangeMaintainingScrollPhysics(),
      header: MaterialClassicHeader(
        backgroundColor: Colors.white,
        color: Theme.of(context).primaryColor,
      ),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus? mode) {
          if (widget.footer != null) {
            return widget.footer!;
          }
          return const SizedBox(
            height: 55,
            child: Center(child: CupertinoActivityIndicator()),
          );
        },
      ),
      child: widget.child,
    );
  }
}
