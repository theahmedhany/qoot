import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> with TickerProviderStateMixin {
  int? _expandedIndex;
  String _selectedCategory = 'الكل';
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, dynamic>> _categories = [
    {
      'name': 'الكل',
      'icon': Icons.grid_view_rounded,
      'color': const Color(0xFF077734),
    },
    {
      'name': 'عام',
      'icon': Icons.help_outline_rounded,
      'color': const Color(0xFF2196F3),
    },
    {
      'name': 'التبرعات',
      'icon': Icons.volunteer_activism_outlined,
      'color': const Color(0xFFE91E63),
    },
    {
      'name': 'سلامة الطعام',
      'icon': Icons.health_and_safety_outlined,
      'color': const Color(0xFF4CAF50),
    },
    {
      'name': 'الحساب',
      'icon': Icons.account_circle_outlined,
      'color': const Color(0xFF9C27B0),
    },
    {
      'name': 'تقني',
      'icon': Icons.settings_outlined,
      'color': const Color(0xFFFF9800),
    },
  ];

  List<Map<String, dynamic>> get _faqItems => [
    {
      'category': 'عام',
      'question': 'ما هو قوت؟',
      'answer':
          'قوت هو منصة للتبرع بالطعام تربط بين الأشخاص الذين لديهم فائض من الطعام مع المحتاجين. مهمتنا هي تقليل هدر الطعام ومساعدة المجتمعات من خلال تسهيل مشاركة الطعام بطريقة آمنة وفعالة.',
      'icon': Icons.restaurant_menu_rounded,
      'color': const Color(0xFF077734),
    },
    {
      'category': 'عام',
      'question': 'كيف يعمل قوت؟',
      'answer':
          'يقوم المتبرعون بنشر الأطعمة المتاحة مع التفاصيل والصور. يمكن للمستفيدين تصفح القوائم وطلب العناصر وترتيب الاستلام أو التوصيل. يضمن نظام التحقق لدينا معاملات آمنة وموثوقة بين المستخدمين.',
      'icon': Icons.how_to_reg_rounded,
      'color': const Color(0xFF2196F3),
    },
    {
      'category': 'عام',
      'question': 'هل استخدام قوت مجاني؟',
      'answer':
          'نعم! قوت مجاني تماماً لكل من المتبرعين والمستفيدين. منصتنا مصممة لتسهيل مشاركة الطعام دون أي رسوم أو تكاليف.',
      'icon': Icons.money_off_rounded,
      'color': const Color(0xFF4CAF50),
    },
    {
      'category': 'التبرعات',
      'question': 'ما هي أنواع الطعام التي يمكنني التبرع بها؟',
      'answer':
          'يمكنك التبرع بالمنتجات الطازجة والأطعمة المعبأة والوجبات المطبوخة والمخبوزات والعناصر غير القابلة للتلف. يجب أن يكون جميع الطعام آمناً للاستهلاك ومخزناً بشكل صحيح وموضح عليه تواريخ التحضير والمكونات بوضوح.',
      'icon': Icons.food_bank_rounded,
      'color': const Color(0xFFE91E63),
    },
    {
      'category': 'التبرعات',
      'question': 'كيف أقوم بإنشاء إعلان تبرع؟',
      'answer':
          'اضغط على زر "+" في الشاشة الرئيسية، أضف صوراً للطعام، قدم وصفاً مفصلاً، حدد الكمية وتاريخ الانتهاء وموقع الاستلام. راجع وانشر إعلانك.',
      'icon': Icons.add_circle_outline_rounded,
      'color': const Color(0xFFFF9800),
    },
    {
      'category': 'التبرعات',
      'question': 'هل يمكنني جدولة التبرعات مسبقاً؟',
      'answer':
          'نعم! يمكنك جدولة التبرعات للتواريخ المستقبلية. هذا مفيد بشكل خاص للمتبرعين المنتظمين مثل المطاعم أو المخابز الذين يرغبون في التخطيط لتبرعاتهم الغذائية مسبقاً.',
      'icon': Icons.schedule_rounded,
      'color': const Color(0xFF00BCD4),
    },
    {
      'category': 'سلامة الطعام',
      'question': 'كيف يضمن قوت سلامة الطعام؟',
      'answer':
          'نطلب من المتبرعين تقديم معلومات مفصلة حول تحضير الطعام وظروف التخزين وتواريخ الانتهاء. يمكن للمستفيدين رؤية تقييمات الطعام وحالة التحقق من المتبرع. كما نوفر إرشادات وأفضل الممارسات لسلامة الطعام.',
      'icon': Icons.verified_user_rounded,
      'color': const Color(0xFF4CAF50),
    },
    {
      'category': 'سلامة الطعام',
      'question': 'ما هي إرشادات سلامة الطعام؟',
      'answer':
          'تأكد من تخزين الطعام في درجات الحرارة المناسبة، ووضع علامات واضحة على مسببات الحساسية والمكونات، وتغليف العناصر بشكل آمن، وتقديم تواريخ انتهاء دقيقة، والحفاظ على النظافة الشخصية أثناء التعامل مع الطعام.',
      'icon': Icons.rule_rounded,
      'color': const Color(0xFFF44336),
    },
    {
      'category': 'سلامة الطعام',
      'question': 'ماذا لو تلقيت طعاماً غير آمن؟',
      'answer':
          'أبلغ عن المشكلة فوراً من خلال التطبيق. لا تستهلك الطعام. سيقوم فريقنا بالتحقيق واتخاذ الإجراءات المناسبة. سلامة المستخدم هي أولويتنا القصوى.',
      'icon': Icons.report_problem_outlined,
      'color': const Color(0xFFFF5722),
    },
    {
      'category': 'الحساب',
      'question': 'كيف أقوم بتوثيق حسابي؟',
      'answer':
          'أكمل ملفك الشخصي بمعلومات دقيقة، وارفع صورة شخصية، وتحقق من رقم هاتفك. بالنسبة للمؤسسات، قد تكون هناك حاجة لوثائق إضافية للحصول على شارات التحقق.',
      'icon': Icons.badge_rounded,
      'color': const Color(0xFF9C27B0),
    },
    {
      'category': 'الحساب',
      'question': 'هل يمكنني أن أكون متبرعاً ومستفيداً في نفس الوقت؟',
      'answer':
          'بالتأكيد! يمكن لحسابك العمل في كلا الدورين. يمكنك التبرع بالطعام عندما يكون لديك فائض وطلب الطعام عندما تحتاج إليه. العديد من المستخدمين يشاركون بنشاط في كلا الجانبين.',
      'icon': Icons.swap_horiz_rounded,
      'color': const Color(0xFF3F51B5),
    },
    {
      'category': 'الحساب',
      'question': 'كيف أقوم بحذف حسابي؟',
      'answer':
          'انتقل إلى الإعدادات > الحساب > حذف الحساب. يرجى ملاحظة أن هذا الإجراء دائم ولا يمكن التراجع عنه. سيتم إزالة جميع بياناتك من خوادمنا.',
      'icon': Icons.delete_forever_rounded,
      'color': const Color(0xFF795548),
    },
    {
      'category': 'تقني',
      'question': 'لماذا لا تعمل الإشعارات؟',
      'answer':
          'تحقق من تمكين الإشعارات في إعدادات جهازك لتطبيق قوت. تأكد أيضاً من أن التطبيق لديه الأذونات اللازمة. حاول إعادة تشغيل التطبيق أو إعادة تثبيته إذا استمرت المشكلة.',
      'icon': Icons.notifications_off_outlined,
      'color': const Color(0xFFFF9800),
    },
    {
      'category': 'تقني',
      'question': 'كيف أبلغ عن خطأ أو مشكلة؟',
      'answer':
          'انتقل إلى الإعدادات > المساعدة والدعم > الإبلاغ عن مشكلة. قدم معلومات مفصلة حول المشكلة، بما في ذلك لقطات الشاشة إن أمكن. سيقوم فريقنا بالتحقيق والرد بسرعة.',
      'icon': Icons.bug_report_outlined,
      'color': const Color(0xFF607D8B),
    },
    {
      'category': 'تقني',
      'question': 'هل بياناتي آمنة على قوت؟',
      'answer':
          'نعم، نستخدم تشفيراً بمعايير الصناعة لحماية بياناتك. لا نشارك معلوماتك الشخصية مع أطراف ثالثة دون موافقتك. اقرأ سياسة الخصوصية الخاصة بنا لمزيد من التفاصيل.',
      'icon': Icons.security_rounded,
      'color': const Color(0xFF009688),
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = const Color(0xFF077734);

    return Scaffold(
      backgroundColor: isDark
          ? const Color(0xFF121212)
          : const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الأسئلة الشائعة',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
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
                  primaryColor.withOpacity(0.1),
                  primaryColor.withOpacity(0.3),
                  primaryColor.withOpacity(0.1),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: isDark ? Colors.black26 : Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: isDark
                        ? const Color(0xFF2A2A2A)
                        : const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: isDark
                          ? Colors.white.withOpacity(0.1)
                          : Colors.grey.withOpacity(0.2),
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
                        fontFamily: 'Cairo',
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

                // Category Chips
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

                      return Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: FilterChip(
                          selected: isSelected,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                category['name'],
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : (isDark
                                            ? Colors.grey.shade300
                                            : Colors.grey.shade700),
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.w500,
                                  fontSize: 13.sp,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                              SizedBox(width: 6.w),
                              Icon(
                                category['icon'],
                                size: 16.sp,
                                color: isSelected
                                    ? Colors.white
                                    : (category['color'] as Color),
                              ),
                            ],
                          ),
                          backgroundColor: isDark
                              ? const Color(0xFF2A2A2A)
                              : Colors.grey.shade100,
                          selectedColor: category['color'],
                          side: BorderSide(
                            color: isSelected
                                ? (category['color'] as Color)
                                : (isDark
                                      ? Colors.white.withOpacity(0.1)
                                      : Colors.grey.withOpacity(0.3)),
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

          // FAQ List
          Expanded(
            child: _filteredFAQs.isEmpty
                ? _buildEmptyState(isDark)
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20.w),
                    itemCount: _filteredFAQs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 12.h),
                        child: _buildFAQItem(
                          context: context,
                          isDark: isDark,
                          index: index,
                          faq: _filteredFAQs[index],
                        ),
                      );
                    },
                  ),
          ),

          // Need More Help Section
          Container(
            margin: EdgeInsets.all(20.w),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  primaryColor.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      // Navigate to support screen
                    },
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'هل تحتاج المزيد من المساعدة؟',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Cairo',
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'تواصل مع فريق الدعم',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white.withOpacity(0.9),
                          fontFamily: 'Cairo',
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.support_agent_rounded,
                    color: Colors.white,
                    size: 28.sp,
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
    required bool isDark,
    required int index,
    required Map<String, dynamic> faq,
  }) {
    final isExpanded = _expandedIndex == index;
    final iconColor = faq['color'] as Color;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isExpanded
              ? iconColor.withOpacity(0.5)
              : (isDark
                    ? Colors.white.withOpacity(0.1)
                    : Colors.grey.withOpacity(0.2)),
          width: isExpanded ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isExpanded
                ? iconColor.withOpacity(0.15)
                : (isDark
                      ? Colors.black.withOpacity(0.3)
                      : Colors.grey.withOpacity(0.08)),
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
                  padding: EdgeInsets.all(16.w),
                  child: Row(
                    children: [
                      AnimatedRotation(
                        duration: const Duration(milliseconds: 300),
                        turns: isExpanded ? 0.5 : 0,
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 24.sp,
                          color: iconColor,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              faq['question'],
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp,
                                    fontFamily: 'Cairo',
                                  ),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(height: 4.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: iconColor.withOpacity(0.1),
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
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: iconColor.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          faq['icon'],
                          color: iconColor,
                          size: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 1.h,
                          margin: EdgeInsets.only(bottom: 12.h),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                iconColor.withOpacity(0.3),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Text(
                          faq['answer'],
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                height: 1.8,
                                fontSize: 13.sp,
                                color: isDark
                                    ? Colors.grey.shade300
                                    : Colors.grey.shade700,
                                fontFamily: 'Cairo',
                              ),
                          textAlign: TextAlign.right,
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

  Widget _buildEmptyState(bool isDark) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 80.sp,
            color: Colors.grey.shade400,
          ),
          SizedBox(height: 16.h),
          Text(
            'لا توجد أسئلة',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.grey.shade400 : Colors.grey.shade600,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'جرب تعديل البحث أو الفلتر',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey.shade500,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
