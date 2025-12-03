import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qoot/core/helpers/launch_custom_url.dart';
import 'package:qoot/core/helpers/spacing.dart';
import 'package:qoot/core/theme/app_texts/app_text_styles.dart';
import 'package:qoot/core/theme/theme_manager/theme_extensions.dart';
import 'package:qoot/core/utils/app_icons.dart';

class AboutTeamBottomSheet extends StatelessWidget {
  const AboutTeamBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final developers = [
      Developer(
        name: 'Eng : Ahmed Hany',
        role: 'Mobile App Developer',
        linkedin: 'http://www.linkedin.com/in/theahmedhany',
        whatsapp: 'https://wa.me/201282845768',
        github: 'https://github.com/theahmedhany',
        twitter: 'https://twitter.com/theahmedhany',
      ),
      Developer(
        name: 'Eng : Ahmed Ebrahim',
        role: 'Mobile App Developer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
      Developer(
        name: 'Eng : Ahmed Hosny',
        role: 'Mobile App Developer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
      Developer(
        name: 'Eng : Romisaa Fadel',
        role: 'Mobile App Developer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
      Developer(
        name: 'Eng : Hanan Waleed',
        role: 'Mobile App Developer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
      Developer(
        name: 'Eng : Mohamed Diaa',
        role: 'Backend Developer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
      Developer(
        name: 'Eng : Mariam Salem',
        role: 'UI & UX Designer',
        linkedin: 'https://www.linkedin.com/in/',
        whatsapp: 'https://wa.me/20',
        github: 'https://github.com/',
        twitter: 'https://twitter.com/',
      ),
    ];

    return SlideInUp(
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Container(
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            color: context.customAppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(28.r)),
          ),
          child: Column(
            children: [
              Container(
                width: 60.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: context.customAppColors.grey400,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              verticalSpace(22),

              Text(
                'عن فريق قـــوت',
                style: AppTextStyles.font18Bold.copyWith(
                  color: context.customAppColors.grey900,
                ),
              ),
              verticalSpace(10),

              Text(
                'تعرف على الفريق الذي قام بتصميم وتطوير هذا التطبيق.',
                textAlign: TextAlign.center,
                style: AppTextStyles.font13Medium.copyWith(
                  color: context.customAppColors.grey600,
                ),
              ),
              verticalSpace(20),

              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 20.r, top: 8.r),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return FadeInUp(
                      duration: Duration(milliseconds: 350 + (index * 150)),
                      child: DeveloperCard(developer: developers[index]),
                    );
                  },
                  separatorBuilder: (context, index) => index == 4
                      ? PreferredSize(
                          preferredSize: Size.fromHeight(1.h),
                          child: Container(
                            height: 1.h,
                            margin: EdgeInsets.symmetric(vertical: 20.h),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  context.customAppColors.primary800.withValues(
                                    alpha: .1,
                                  ),
                                  context.customAppColors.primary800.withValues(
                                    alpha: .3,
                                  ),
                                  context.customAppColors.primary800.withValues(
                                    alpha: .5,
                                  ),
                                  context.customAppColors.primary800.withValues(
                                    alpha: .3,
                                  ),
                                  context.customAppColors.primary800.withValues(
                                    alpha: .1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : verticalSpace(16),
                  itemCount: developers.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final Developer developer;

  const DeveloperCard({super.key, required this.developer});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 12.r),
      decoration: BoxDecoration(
        color: context.customAppColors.background,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.customAppColors.grey400, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: context.customAppColors.grey900.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            developer.name,
            style: AppTextStyles.font16Bold.copyWith(
              color: context.customAppColors.grey900,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(6),
          Text(
            developer.role,
            style: AppTextStyles.font14Regular.copyWith(
              color: context.customAppColors.grey600,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (developer.linkedin != null)
                _SocialButton(
                  icon: AppIcons.linkedinIcon,
                  onTap: () => launchCustomUrl(context, developer.linkedin!),
                ),
              if (developer.twitter != null)
                _SocialButton(
                  icon: AppIcons.twitterIcon,
                  onTap: () => launchCustomUrl(context, developer.twitter!),
                ),
              if (developer.whatsapp != null)
                _SocialButton(
                  icon: AppIcons.whatsappIcon,
                  onTap: () => launchCustomUrl(context, developer.whatsapp!),
                ),
              if (developer.github != null)
                _SocialButton(
                  icon: AppIcons.githubIcon,
                  onTap: () => launchCustomUrl(context, developer.github!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const _SocialButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100.r),
        child: SvgPicture.asset(
          icon,
          width: 20.r,
          height: 20.r,
          colorFilter: ColorFilter.mode(
            context.customAppColors.grey600,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

class Developer {
  final String name;
  final String role;
  final String? linkedin;
  final String? whatsapp;
  final String? github;
  final String? twitter;

  Developer({
    required this.name,
    required this.role,
    this.linkedin,
    this.whatsapp,
    this.github,
    this.twitter,
  });
}
