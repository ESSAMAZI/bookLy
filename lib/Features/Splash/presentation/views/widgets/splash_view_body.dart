import 'package:book/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo)],
    );
  }
}
