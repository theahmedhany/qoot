import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoot/core/theme/app_texts/app_fonts.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_images.dart';

class PopularQuestionsScreen extends StatefulWidget {
  const PopularQuestionsScreen({super.key});

  @override
  State<PopularQuestionsScreen> createState() => _PopularQuestionsScreenState();
}

class _PopularQuestionsScreenState extends State<PopularQuestionsScreen>
    with TickerProviderStateMixin {
  int? _expandedIndex;
  String _selectedCategory = 'الكل';
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  List<Map<String, dynamic>> get _categories => [
    {
      'name': 'الكل',
      'icon': Icons.grid_view_rounded,
      'color': context.customAppColors.primary800,
    },
    {
      'name': 'عام',
      'icon': Icons.help_outline_rounded,
      'color': context.customAppColors.info700,
    },
    {
      'name': 'التبرعات',
      'icon': Icons.volunteer_activism_outlined,
      'color': context.customAppColors.error700,
    },
    {
      'name': 'سلامة الطعام',
      'icon': Icons.health_and_safety_outlined,
      'color': context.customAppColors.primary500,
    },
    {
      'name': 'الحساب',
      'icon': Icons.account_circle_outlined,
      'color': context.customAppColors.accent700,
    },
    {
      'name': 'تقني',
      'icon': Icons.settings_outlined,
      'color': context.customAppColors.warning500,
    },
  ];

  List<Map<String, dynamic>> get _faqItems => [
    {
      'category': 'عام',
      'question': 'ما هو قوت؟',
      'answer':
          'قوت هو منصة للتبرع بالطعام تربط بين الأشخاص الذين لديهم فائض من الطعام مع المحتاجين. مهمتنا هي تقليل هدر الطعام ومساعدة المجتمعات من خلال تسهيل مشاركة الطعام بطريقة آمنة وفعالة.',
      'icon': Icons.restaurant_menu_rounded,
      'color': context.customAppColors.primary800,
    },
    {
      'category': 'عام',
      'question': 'كيف يعمل قوت؟',
      'answer':
          'يقوم المتبرعون بنشر الأطعمة المتاحة مع التفاصيل والصور. يمكن للمستفيدين تصفح القوائم وطلب العناصر وترتيب الاستلام أو التوصيل. يضمن نظام التحقق لدينا معاملات آمنة وموثوقة بين المستخدمين.',
      'icon': Icons.how_to_reg_rounded,
      'color': context.customAppColors.info700,
    },
    {
      'category': 'عام',
      'question': 'هل استخدام قوت مجاني؟',
      'answer':
          'نعم! قوت مجاني تماماً لكل من المتبرعين والمستفيدين. منصتنا مصممة لتسهيل مشاركة الطعام دون أي رسوم أو تكاليف.',
      'icon': Icons.money_off_rounded,
      'color': context.customAppColors.primary500,
    },
    {
      'category': 'التبرعات',
      'question': 'ما هي أنواع الطعام التي يمكنني التبرع بها؟',
      'answer':
          'يمكنك التبرع بالمنتجات الطازجة والأطعمة المعبأة والوجبات المطبوخة والمخبوزات والعناصر غير القابلة للتلف. يجب أن يكون جميع الطعام آمناً للاستهلاك ومخزناً بشكل صحيح وموضح عليه تواريخ التحضير والمكونات بوضوح.',
      'icon': Icons.food_bank_rounded,
      'color': context.customAppColors.error700,
    },
    {
      'category': 'التبرعات',
      'question': 'كيف أقوم بإنشاء إعلان تبرع؟',
      'answer':
          'اضغط على زر "+" في الشاشة الرئيسية، أضف صوراً للطعام، قدم وصفاً مفصلاً، حدد الكمية وتاريخ الانتهاء وموقع الاستلام. راجع وانشر إعلانك.',
      'icon': Icons.add_circle_outline_rounded,
      'color': context.customAppColors.warning500,
    },
    {
      'category': 'التبرعات',
      'question': 'هل يمكنني جدولة التبرعات مسبقاً؟',
      'answer':
          'نعم! يمكنك جدولة التبرعات للتواريخ المستقبلية. هذا مفيد بشكل خاص للمتبرعين المنتظمين مثل المطاعم أو المخابز الذين يرغبون في التخطيط لتبرعاتهم الغذائية مسبقاً.',
      'icon': Icons.schedule_rounded,
      'color': context.customAppColors.info300,
    },
    {
      'category': 'سلامة الطعام',
      'question': 'كيف يضمن قوت سلامة الطعام؟',
      'answer':
          'نطلب من المتبرعين تقديم معلومات مفصلة حول تحضير الطعام وظروف التخزين وتواريخ الانتهاء. يمكن للمستفيدين رؤية تقييمات الطعام وحالة التحقق من المتبرع. كما نوفر إرشادات وأفضل الممارسات لسلامة الطعام.',
      'icon': Icons.verified_user_rounded,
      'color': context.customAppColors.primary500,
    },
    {
      'category': 'سلامة الطعام',
      'question': 'ما هي إرشادات سلامة الطعام؟',
      'answer':
          'تأكد من تخزين الطعام في درجات الحرارة المناسبة، ووضع علامات واضحة على مسببات الحساسية والمكونات، وتغليف العناصر بشكل آمن، وتقديم تواريخ انتهاء دقيقة، والحفاظ على النظافة الشخصية أثناء التعامل مع الطعام.',
      'icon': Icons.rule_rounded,
      'color': context.customAppColors.error900,
    },
    {
      'category': 'سلامة الطعام',
      'question': 'ماذا لو تلقيت طعاماً غير آمن؟',
      'answer':
          'أبلغ عن المشكلة فوراً من خلال التطبيق. لا تستهلك الطعام. سيقوم فريقنا بالتحقيق واتخاذ الإجراءات المناسبة. سلامة المستخدم هي أولويتنا القصوى.',
      'icon': Icons.report_problem_outlined,
      'color': context.customAppColors.warning500,
    },
    {
      'category': 'الحساب',
      'question': 'كيف أقوم بتوثيق حسابي؟',
      'answer':
          'أكمل ملفك الشخصي بمعلومات دقيقة، وارفع صورة شخصية، وتحقق من رقم هاتفك. بالنسبة للمؤسسات، قد تكون هناك حاجة لوثائق إضافية للحصول على شارات التحقق.',
      'icon': Icons.badge_rounded,
      'color': context.customAppColors.accent700,
    },
    {
      'category': 'الحساب',
      'question': 'هل يمكنني أن أكون متبرعاً ومستفيداً في نفس الوقت؟',
      'answer':
          'بالتأكيد! يمكن لحسابك العمل في كلا الدورين. يمكنك التبرع بالطعام عندما يكون لديك فائض وطلب الطعام عندما تحتاج إليه. العديد من المستخدمين يشاركون بنشاط في كلا الجانبين.',
      'icon': Icons.swap_horiz_rounded,
      'color': context.customAppColors.info900,
    },
    {
      'category': 'الحساب',
      'question': 'كيف أقوم بحذف حسابي؟',
      'answer':
          'انتقل إلى الإعدادات > الحساب > حذف الحساب. يرجى ملاحظة أن هذا الإجراء دائم ولا يمكن التراجع عنه. سيتم إزالة جميع بياناتك من خوادمنا.',
      'icon': Icons.delete_forever_rounded,
      'color': context.customAppColors.accent600,
    },
    {
      'category': 'تقني',
      'question': 'لماذا لا تعمل الإشعارات؟',
      'answer':
          'تحقق من تمكين الإشعارات في إعدادات جهازك لتطبيق قوت. تأكد أيضاً من أن التطبيق لديه الأذونات اللازمة. حاول إعادة تشغيل التطبيق أو إعادة تثبيته إذا استمرت المشكلة.',
      'icon': Icons.notifications_off_outlined,
      'color': context.customAppColors.warning500,
    },
    {
      'category': 'تقني',
      'question': 'كيف أبلغ عن خطأ أو مشكلة؟',
      'answer':
          'انتقل إلى الإعدادات > المساعدة والدعم > الإبلاغ عن مشكلة. قدم معلومات مفصلة حول المشكلة، بما في ذلك لقطات الشاشة إن أمكن. سيقوم فريقنا بالتحقيق والرد بسرعة.',
      'icon': Icons.bug_report_outlined,
      'color': context.customAppColors.grey600,
    },
    {
      'category': 'تقني',
      'question': 'هل بياناتي آمنة على قوت؟',
      'answer':
          'نعم، نستخدم تشفيراً بمعايير الصناعة لحماية بياناتك. لا نشارك معلوماتك الشخصية مع أطراف ثالثة دون موافقتك. اقرأ سياسة الخصوصية الخاصة بنا لمزيد من التفاصيل.',
      'icon': Icons.security_rounded,
      'color': context.customAppColors.info700,
    },
  ];

  List<Map<String, dynamic>> get _filteredFAQs {
    return _faqItems.where((faq) {
      final matchesCategory =
          _selectedCategory == 'الكل' || faq['category'] == _selectedCategory;
      final matchesSearch =
          _searchQuery.isEmpty ||
          faq['question'].toString().toLowerCase().contains(
            _searchQuery.toLowerCase(),
          ) ||
          faq['answer'].toString().toLowerCase().contains(
            _searchQuery.toLowerCase(),
          );
      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.customAppColors.primary800;

    return Scaffold(
      backgroundColor: context.customAppColors.background,
      appBar: AppBar(
        backgroundColor: context.customAppColors.background,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الأسئلة الشائعة',
          style: AppTextStyles.font18Bold.copyWith(
            color: context.customAppColors.grey900,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.h),
          child: Container(
            height: 1.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryColor.withValues(alpha: .1),
                  primaryColor.withValues(alpha: .3),
                  primaryColor.withValues(alpha: .1),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.customAppColors.background,
              boxShadow: [
                BoxShadow(
                  color: context.customAppColors.grey200,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r),
                  decoration: BoxDecoration(
                    color: context.customAppColors.grey0,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: context.customAppColors.grey200,
                    ),
                  ),
                  child: TextField(
                    controller: _searchController,
                    textAlign: TextAlign.right,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'ابحث في الأسئلة...',
                      hintStyle: const TextStyle(
                        fontFamily: AppFonts.cairo,
                      ),
                      prefixIcon: _searchQuery.isNotEmpty
                          ? IconButton(
                              icon: Icon(Icons.clear_rounded, size: 20.sp),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  _searchQuery = '';
                                });
                              },
                            )
                          : null,
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: primaryColor,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 14.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      final category = _categories[index];
                      final isSelected = _selectedCategory == category['name'];
                      final isFirstItem = index == 0;
                      final isLastItem = index == _categories.length - 1;

                      return Padding(
                        padding: EdgeInsets.only(
                          left: isFirstItem ? 20.w : 8.w,
                          right: isLastItem ? 20.w : 0,
                        ),
                        child: FilterChip(
                          selected: isSelected,
                          checkmarkColor: context.customAppColors.grey0,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                category['name'],
                                style: AppTextStyles.font12Regular.copyWith(
                                  color: isSelected
                                      ? context.customAppColors.grey0
                                      : context.customAppColors.grey900,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              Icon(
                                category['icon'],
                                size: 16.sp,
                                color: isSelected
                                    ? context.customAppColors.grey0
                                    : (category['color'] as Color),
                              ),
                            ],
                          ),
                          backgroundColor: context.customAppColors.grey0,
                          selectedColor: category['color'],
                          side: BorderSide(
                            color: isSelected
                                ? (category['color'] as Color)
                                : (context.customAppColors.grey200),
                          ),
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = category['name'];
                              _expandedIndex = null;
                            });
                          },
                          elevation: isSelected ? 4 : 0,
                          pressElevation: 2,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: _filteredFAQs.isEmpty
                ? _buildEmptyState()
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20.w),
                    itemCount: _filteredFAQs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 12.h),
                        child: _buildFAQItem(
                          context: context,
                          index: index,
                          faq: _filteredFAQs[index],
                        ),
                      );
                    },
                  ),
          ),

          Container(
            margin: EdgeInsets.all(20.w),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  primaryColor.withValues(alpha: 0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withValues(alpha: 0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: context.customAppColors.grey0.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.asset(
                    AppImages.imagesMasterLightLogo,
                    width: 50.r,
                    height: 50.r,
                  ),
                ),

                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'هل تحتاج المزيد من المساعدة؟',
                        style: AppTextStyles.font16SemiBold.copyWith(
                          color: context.customAppColors.grey0,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'تواصل مع فريق الدعم',
                        style: AppTextStyles.font12Regular.copyWith(
                          color: context.customAppColors.grey0.withValues(
                            alpha: 0.9,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: context.customAppColors.grey0,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      //!  ISHA: Navigate to support screen.
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFAQItem({
    required BuildContext context,
    required int index,
    required Map<String, dynamic> faq,
  }) {
    final isExpanded = _expandedIndex == index;
    final iconColor = faq['color'] as Color;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: context.customAppColors.grey0,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isExpanded
              ? iconColor.withValues(alpha: 0.5)
              : (context.customAppColors.grey200),
          width: isExpanded ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isExpanded
                ? iconColor.withValues(alpha: 0.15)
                : context.customAppColors.grey100,
            blurRadius: isExpanded ? 16 : 8,
            offset: Offset(0, isExpanded ? 6 : 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                _expandedIndex = isExpanded ? null : index;
              });
            },
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(18.w),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: iconColor.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: iconColor.withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          faq['icon'],
                          color: iconColor,
                          size: 22.sp,
                        ),
                      ),

                      SizedBox(width: 14.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              faq['question'],
                              style: AppTextStyles.font16SemiBold.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: iconColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(
                                faq['category'],
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: iconColor,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),

                      AnimatedRotation(
                        duration: const Duration(milliseconds: 300),
                        turns: isExpanded ? 0.5 : 0,
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 24.sp,
                          color: iconColor,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(18.w, 0, 18.w, 18.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 1.h,
                          margin: EdgeInsets.only(bottom: 16.h),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                iconColor.withValues(alpha: 0.3),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Text(
                          faq['answer'],
                          style: AppTextStyles.font14Regular.copyWith(
                            color: context.customAppColors.grey700,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 80.sp,
            color: context.customAppColors.grey400,
          ),
          SizedBox(height: 16.h),
          Text(
            'لا توجد أسئلة',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: context.customAppColors.grey700,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'جرب تعديل البحث أو الفلتر',
            style: TextStyle(
              fontSize: 14.sp,
              color: context.customAppColors.grey600,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
