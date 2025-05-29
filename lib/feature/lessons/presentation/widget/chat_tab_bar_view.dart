import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/app_icons.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/feature/lessons/presentation/screens/video_lesson_screen.dart';
import 'package:lms_test/feature/lessons/presentation/widget/message_bubble.dart';

class ChatTabBarView extends StatelessWidget {
  final List<ChatMessage> messages;
  final ScrollController scrollController;
  final TextEditingController messageController;
  final VoidCallback sendMessage;
  const ChatTabBarView({
    super.key,
    required this.messages,
    required this.scrollController,
    required this.messageController,
    required this.sendMessage,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          customText(
            text: "06.05.2025",
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            textColor: AppColors.greyTextColor,
          ),
          SizedBox(
            height: 230.h,
            child: ListView.builder(
              controller: scrollController,
              padding: EdgeInsets.all(16.w),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return MessageBubble(message: message);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
            child: TextField(
              controller: messageController,

              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: sendMessage,
                  icon: SvgPicture.asset(AppIcons.sendIcon),
                ),
                hintText: "Kommentariya yozing",
                hintStyle: TextStyle(color: AppColors.greyTextColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.greyTextColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.greyTextColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.mainColor),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
              onSubmitted: (_) => sendMessage(),
            ),
          ),
        ],
      ),
    );
  }
}
