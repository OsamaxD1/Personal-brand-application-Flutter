import 'package:brandprofileapp/repo/repo.dart';
import 'package:brandprofileapp/ui/brand_profile_detail_page.dart';
import 'package:flutter/material.dart';

class BrandProfileDetailAnimator extends StatefulWidget {
  @override
  _BrandProfileDetailAnimatorState createState() => _BrandProfileDetailAnimatorState();
}

class _BrandProfileDetailAnimatorState extends State<BrandProfileDetailAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1780),
        vsync: this);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return BrandProfileDetailPage(company: RepoData.bawp, controller: _controller);
  }
}
