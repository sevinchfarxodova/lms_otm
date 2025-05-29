import 'package:auto_route/annotations.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms_test/core/utils/app_colors.dart';
import 'package:lms_test/core/utils/custom_text.dart';
import 'package:lms_test/core/widgets/custom_app_bar.dart';
import 'package:lms_test/feature/lessons/presentation/widget/chat_tab_bar_view.dart';
import 'package:lms_test/feature/lessons/presentation/widget/video_script_widget.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoLessonScreen extends StatefulWidget {
  const VideoLessonScreen({super.key});

  @override
  State<VideoLessonScreen> createState() => _VideoLessonScreenState();
}

class _VideoLessonScreenState extends State<VideoLessonScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  final TextEditingController messageController = TextEditingController();
  final List<ChatMessage> messages = [];
  final ScrollController scrollController = ScrollController();

  late TabController _tabController;
  double _indicatorAlignment = -1; // -1 for left tab, 1 for right tab
  double tabWidth = 0;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _loadInitialMessages();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        // Align indicator: -1 for first tab, 1 for second tab
        _indicatorAlignment = _tabController.index == 0 ? -1 : 1;
      });
    });
  }

  Future<void> _initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
      allowFullScreen: true,
      allowMuting: true,
      showControlsOnInitialize: true,
    );

    setState(() {});
  }

  void _loadInitialMessages() {
    messages.addAll([
      ChatMessage(
        text:
            "Assalomu aleykum, video darsligiga zor bo'lbisi. Ko'p narsalar o'rgandim",
        isUser: true,
        time: "06.05.2025",
      ),
      ChatMessage(
        text: "Vaaleykum Assalom. Arzimaydil Savo'lingni bo'lsa sefang 😊",
        isUser: false,
        time: "22:03",
      ),
      ChatMessage(text: "Xop", isUser: true, time: "22:03"),
    ]);
  }

  void _sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      setState(() {
        messages.add(
          ChatMessage(
            text: messageController.text.trim(),
            isUser: true,
            time:
                "${DateTime.now().hour}:${DateTime.now().minute.toString().padLeft(2, '0')}",
          ),
        );
        messageController.clear();
        _scrollToBottom();
      });
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    tabWidth =
        (MediaQuery.of(context).size.width - 32.w) /
        2; // 16.w padding on both sides

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(title: "Ma'lumotlar tahlili"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),

              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:
                    chewieController != null &&
                            chewieController!
                                .videoPlayerController
                                .value
                                .isInitialized
                        ? Chewie(controller: chewieController!)
                        : Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: customText(
              text: "1-mavzu",
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: customText(
              text:
                  "Kirish. “HTML 5 ning asosiy xususiyatlari va uning kerakli standartlari.",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              textColor: AppColors.greyTextColor,
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 32.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      border: Border.all(color: AppColors.mainColor),
                    ),
                  ),
                  Align(
                    alignment: Alignment(_indicatorAlignment, 0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: tabWidth,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicator: const BoxDecoration(),
                    labelColor: AppColors.whiteColor,
                    unselectedLabelColor: AppColors.mainColor,
                    dividerColor: Colors.transparent,
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                    tabs: const [Tab(text: "Chat"), Tab(text: "Video matni")],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ChatTabBarView(
                  messages: messages,
                  scrollController: scrollController,
                  messageController: messageController,
                  sendMessage: _sendMessage,
                ),
                VideoScriptWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    videoPlayerController.dispose();
    chewieController?.dispose();
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}

class ChatMessage {
  final String text;
  final bool isUser;
  final String time;

  ChatMessage({required this.text, required this.isUser, required this.time});
}
