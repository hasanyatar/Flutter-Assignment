import 'package:app/production/utilities/types/lottie_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'No Results Found';
    const subtitle = 'We couldn\'t find what you searched for.\nPlease try again.';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                //color: Colors.black87,
              ),
            ),
          ),
          Lottie.asset(
            LottieTypes.noData.fullPath,
            repeat: false,
            width: 0.7.sw,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
