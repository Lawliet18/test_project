import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/core/constants/lottie_asset.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        LottieAsset.loaderAnimationPath,
        width: 60.0,
        height: 60.0,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}
