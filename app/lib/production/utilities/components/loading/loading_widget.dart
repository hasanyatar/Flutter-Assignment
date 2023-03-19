import 'package:app/production/utilities/types/lottie_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        LottieTypes.loading.fullPath,
        repeat: true,
        width: 0.4.sw,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
