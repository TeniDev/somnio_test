import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:somnio_test/core/utils/utils.dart';

import '../../provider/home_provider.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key, required this.child});

  final Widget child;

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return Scaffold(
          appBar: AppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Blog',
                ),
                Text(
                  context.locale.exampleText,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              controller: tabController,
              onTap: (value) {
                ref.read(homeProvider.notifier).changeCurrentIndexBottomBar(value);
              },
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    PhosphorIcons.note(),
                  ),
                ),
                Tab(
                  icon: Icon(
                    PhosphorIcons.gear(),
                  ),
                ),
              ],
            ),
          ),
          body: widget.child,
        );
      },
    );
  }
}
