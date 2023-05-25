import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import '../../../../core/config/constants/app_constants.dart';
import '../../../../core/config/routes/screen.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../core/widgets/biubiu_button.dart';
import '../../../../core/widgets/biubiu_image.dart';
import '../../../../core/widgets/biubiu_skeleton.dart';
import '../bloc/main_page_bloc.dart';

// ignore_for_file: constant_identifier_names

class BottomInfo extends StatefulWidget implements PreferredSizeWidget {
  final bool isLoading;
  final UserInfoEntity userInfo;
  const BottomInfo({
    super.key,
    required this.isLoading,
    required this.userInfo,
  });
  @override
  State<BottomInfo> createState() => _BottomInfoState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _BottomInfoState extends State<BottomInfo> {
  @override
  Widget build(BuildContext context) {
    return widget.isLoading
        ? holderView()
        : Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BiuBiuImage(
                width: 70.w,
                height: 70.w,
                url: widget.userInfo.faceUrl,
                radius: 16.r,
                style: SkeletonBgStyle.Light_STYLE,
                onPressed: () => {}),
            Expanded(
                child: Container(
              height: 100.h,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.userInfo.name,
                                style:  TextStyle(
                                    fontSize: 18.sp,
                                    color: DEFAULT_NORMAL_TEXT_COLOR)),
                          ]),
                      Row(children: [
                        Text(widget.userInfo.name,
                            style:  TextStyle(
                                fontSize: 18.sp,
                                color: DEFAULT_NORMAL_TEXT_COLOR)),
                      ]),
                      Row(children: [
                        Text(widget.userInfo.name,
                            style:  TextStyle(
                                fontSize: 18.sp,
                                color: DEFAULT_NORMAL_TEXT_COLOR)),
                        Text(widget.userInfo.name,
                            style:  TextStyle(
                                fontSize: 18.sp,
                                color: DEFAULT_NORMAL_TEXT_COLOR)),
                      ])
                    ]),
                Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: BiuBiuButton(
                        text: S.current.my_assets, onPressed: () => {
                          tapEdit()
                        }))
                // 左侧的文字
              ]),
            ))
          ]);
  }

  Widget holderView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         BiuBiuSkeleton(
          width: 70.w,
          height: 70.h,
          radius: 16.sp,
          style: SkeletonStyle.Light_STYLE,
        ),
        Expanded(
          child: Container(
            height: 100.h,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Stack(children: <Widget>[
               Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BiuBiuSkeleton(
                              radius: 5.r,
                              style: SkeletonStyle.Light_STYLE,
                              child: Text('             ',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: DEFAULT_NORMAL_TEXT_COLOR))),
                        ]),
                    Row(children: [
                      BiuBiuSkeleton(
                          radius: 5.r,
                          style: SkeletonStyle.Light_STYLE,
                          child: Text('             ',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: DEFAULT_NORMAL_TEXT_COLOR))),
                    ]),
                    Row(children: [
                      BiuBiuSkeleton(
                          radius: 5.r,
                          style: SkeletonStyle.Light_STYLE,
                          child: Text('             ',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: DEFAULT_NORMAL_TEXT_COLOR))),
                      BiuBiuSkeleton(
                          radius: 5.r,
                          style: SkeletonStyle.Light_STYLE,
                          child: Text('          ',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: DEFAULT_NORMAL_TEXT_COLOR))),
                    ])
                  ]),
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: BiuBiuButton(
                      text: '编辑', onPressed: () => tapEdit()))
              // 左侧的文字
            ]),
          ),
        ),
        // 左侧的文字
      ],
    );
  }

  void tapEdit() {
    context.read<MainPageBloc>().add(const MainPageEvent(CaseParams(
        eventName: EVENT_NAVIGATE_PUSH,
        data: {'routeName': Routes.editUserInfo})));
  }
}
