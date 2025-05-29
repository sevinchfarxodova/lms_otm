import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/screens/video_lesson_screen.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment:
            message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!message.isUser) ...[
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.messageBubleBgColor,
              child: Icon(
                Icons.person,
                size: 18.w,
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(width: 6.w),
          ],
          Align(
            alignment:
                message.isUser ? Alignment.centerRight : Alignment.centerLeft,
            child: IntrinsicWidth(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.5,
                ),
                margin: EdgeInsets.symmetric(vertical: 4.h),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color:
                      message.isUser
                          ? AppColors.mainColor
                          : AppColors.messageBubleBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.r),
                    topRight: Radius.circular(7.r),
                    bottomLeft: Radius.circular(message.isUser ? 7.r : 0),
                    bottomRight: Radius.circular(message.isUser ? 0 : 7.r),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: message.text,
                      textColor: AppColors.whiteColor,
                      fontSize: 14.sp,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: customText(
                        text: message.time,
                        fontSize: 10.sp,
                        textColor:
                            message.isUser
                                ? AppColors.greyTextColor
                                : AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          if (message.isUser) ...[
            SizedBox(width: 6.w),
            CircleAvatar(
              radius: 16,
              backgroundColor: AppColors.mainColor,
              child: Icon(Icons.person, size: 18, color: Colors.white),
            ),
          ],
        ],
      ),
    );
  }
}
