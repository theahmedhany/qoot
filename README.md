# Qoot | قوت

### Your Complete Platform for Fighting Food Waste and Feeding Those in Need

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://dart.dev)
[![BLoC](https://img.shields.io/badge/BLoC-000000?style=for-the-badge&logo=flutter&logoColor=white)](https://pub.dev/packages/flutter_bloc)
[![Material Design](https://img.shields.io/badge/Material%20Design-757575?style=for-the-badge&logo=material-design&logoColor=whitee)](https://docs.flutter.dev/ui/widgets/material)

**An advanced platform designed to revolutionize the connection between restaurants and charities through modern technology and interactive experiences.**

<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/3e3fd41e-a675-4413-a8fa-beb39f541b1f" alt="Qoot App" />
    </td>
  </tr>
</table>

## 📖 Overview

**Qoot** is a comprehensive food donation management platform built with Flutter, designed to make food donation easy, efficient, and secure. The platform seamlessly connects restaurants (donors) with charities and orphanages (beneficiaries) in a unified ecosystem that facilitates interactive donation experiences, real-time donation tracking, and personalized giving experiences.

### 🎯 Mission

Transform the traditional food donation process by providing a modern, technology-driven platform that makes donating enjoyable, measurable, and accessible to all parties, while empowering restaurants and charities with powerful management and tracking tools.

### ✨ Key Highlights

- **Dual Role System**: Separate experiences for restaurants and charities
- **Cross-Platform**: Built with Flutter for iOS and Android
- **Real-Time Sync**: Live updates and instant notifications
- **Beautiful Interface**: Modern, intuitive UI with dark and light modes
- **Bilingual**: Full support for Arabic and English
- **Advanced Analytics**: Comprehensive performance tracking and reporting
- **Secure Authentication**: Multiple sign-in options with robust security

---

## 🚀 Features

### For Restaurants 🍽️

#### Donation Management

- **Create Donations**: Easily create new donations with complete details
- **Image Upload**: Add photos of donated food
- **Expiration Dates**: Set food expiration dates
- **Portion Count**: Specify available meal quantities
- **Contact Information**: Add contact details for responsible person
- **Location**: Display restaurant location on map

#### Reservation Management

- **Track Reservations**: View all reservations for donations
- **Confirm Pickup**: Track status of received donations

#### Profile

- **Restaurant Information**: View and edit restaurant details
- **Delete Account**: Complete account deletion option
- **Donation History**: View all past donations
- **Settings**: Manage account and notification preferences

### For Charities 🏬

#### Browse Donations

- **All Donations**: View all available donations
- **Search**: Search for specific donations
- **Sorting**: Sort donations by proximity and date
- **Urgent Donations**: View donations about to expire
- **Location**: Display restaurant locations on map

#### Reservation System

- **Reserve Donations**: Easily reserve available donations
- **Reservation Status**: Track reservation states (pending, confirmed, completed, cancelled)
- **Confirm Pickup**: Confirm food receipt with photo proof

#### Reports & Statistics

- **Dashboard**: Comprehensive statistics overview
- **Total Meals**: Track number of received meals
- **Donation Trends**: Monthly donation charts
- **Category Distribution**: Analysis of received food types
- **Active Reservations**: Track current reservations

#### Charity Management

- **🏢 Charity Information**: View and edit charity details
- **📄 Documents**: Upload and view licenses and documents
- **👥 Beneficiary Count**: Define service reach
- **📖 Charity Story**: Share charity story and vision
- **🗑️ Delete Account**: Charity account deletion option

### Shared Features 🌟

#### Food Safety Tips

- **Storage**: Safe food preservation tips
- **Handling**: Hygienic food handling guidelines
- **Cleaning**: Cleaning and sanitization instructions
- **Serving**: Best practices for food service
- **Categories**: Filter tips by category

#### Authentication & Security

- **Sign In**: Email and password
- **Email Verification**: Send activation link to email
- **Password Reset**: Easy account recovery
- **Secure Storage**: Local encryption of sensitive data

<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/2b6afa73-ab4c-4ded-8ac8-854592118444" alt="Qoot App" />
    </td>
  </tr>
</table>

## 🛠️ Tech Stack & Architecture

### Core Technologies

#### Frontend Framework

- **Flutter 3.8.1+**: Google's toolkit for building beautiful, natively compiled applications
- **Dart 3.8.1+**: Client-optimized language for fast apps on any platform

#### State Management & Architecture

- **BLoC Pattern (flutter_bloc 9.1.1+)**: Predictable state management
- **Freezed (3.2.3)**: Immutable and union state types
- **Get It (9.0.5)**: Dependency injection container
- **Clean Architecture**: Separation of concerns with layers:
  - **Presentation Layer**: UI components, screens, and widgets
  - **Data Layer**: Repositories and data sources

#### Cloud Services & Backend

- **RESTful API**: Custom backend API integration
- **Retrofit (4.9.0)**: Type-safe HTTP client
- **Dio (5.9.0)**: Powerful HTTP networking
- **Pretty Dio Logger (1.4.0)**: Network request logging

#### Local Storage & Caching

- **Flutter Secure Storage (9.2.4)**: Encrypted local storage for sensitive data
- **Shared Preferences (2.5.3)**: Key-value storage for app settings
- **Cached Network Image (3.4.1)**: Image caching and optimization
- **Path Provider (2.1.1)**: File system access

#### Media & UI Components

- **Image Picker (1.2.1)**: Camera and gallery access
- **File Picker (10.3.3)**: Document selection
- **Lottie (3.3.1)**: Vector animations
- **Shimmer (3.0.0)**: Loading skeleton effects
- **Smooth Page Indicator (1.2.1)**: Page indicators

#### Localization & Globalization

- **Intl Utils (2.8.12)**: Multi-language support
- **Intl (0.20.2)**: Internationalization tools
- **Arabic & English**: Full bilingual support

#### Authentication & Social Login

- **App Links (6.4.1)**: Deep link handling
- **Secure Token Management**: JWT-based authentication
- **Role-Based Access Control**: Restaurant and charity roles

#### UI/UX Enhancements

- **Flutter ScreenUtil (5.9.3)**: Responsive design
- **Animate Do (4.2.0)**: Pre-built animations
- **Device Preview (1.3.1)**: Multi-device testing
- **Table Calendar (3.2.0)**: Calendar view
- **FL Chart (1.1.1)**: Charts and statistics

#### Utilities & Tools

- **Connectivity Plus (7.0.0)**: Network connectivity monitoring
- **Permission Handler (12.0.1)**: Runtime permissions
- **URL Launcher (6.3.2)**: Open external links
- **Logger (2.6.2)**: Advanced logging
- **Geolocator (14.0.2)**: Location services

#### Development Tools

- **Build Runner (2.10.1)**: Code generation
- **JSON Serializable (6.11.1)**: JSON parsing
- **Retrofit Generator (10.1.4)**: API client generation
- **Flutter Native Splash (2.4.6)**: Custom splash screens

### Architectural Patterns

#### Clean Architecture Layers

```
lib/
├── core/                          # Core utilities and shared components
│   ├── common/                    # Shared screens and widgets
│   ├── constants/                 # Constants
│   ├── data/                      # Local data
│   ├── di/                        # Dependency injection
│   ├── helpers/                   # Helper functions
│   ├── middlewares/               # Middlewares
│   ├── models/                    # Shared models
│   ├── network/                   # API services and network handling
│   ├── routing/                   # App navigation
│   ├── services/                  # Services
│   ├── theme/                     # Themes and styling
│   └── utils/                     # Utility helpers
│
├── features/                      # Feature modules (Clean Architecture)
│   ├── auth/                      # Authentication
│   │   ├── login/                 # Login
│   │   ├── register_account/      # Account creation
│   │   ├── register_charity/      # Charity registration
│   │   ├── register_restaurant/   # Restaurant registration
│   │   ├── forget_password/       # Forgot password
│   │   └── ...
│   │
│   ├── charity_home/              # Charity home page
│   ├── charity_donations/         # Charity donations
│   ├── charity_reservations/      # Charity reservations
│   ├── charity_info/              # Charity information
│   ├── charity_statistics/        # Charity statistics
│   ├── charity_confirm_pickup/    # Pickup confirmation
│   │
│   ├── restaurant_home/           # Restaurant home page
│   ├── restaurant_donation/       # Restaurant donations
│   ├── restaurant_profile/        # Restaurant profile
│   ├── restaurant_profile_info/   # Restaurant information
│   │
│   ├── create_donation/           # Create donation
│   ├── donation_details/          # Donation details
│   ├── all_charities/             # All charities
│   ├── all_restaurants/           # All restaurants
│   ├── charity_details/           # Charity details
│   │
│   └── onboarding/                # Onboarding experience
│
├── generated/                     # Auto-generated code
│   └── intl/                      # Localization
│
└── l10n/                          # Localization files
    ├── intl_ar.arb                # Arabic
    └── intl_en.arb                # English
```

---

## 🎯 Target Audience

### Primary Users

#### 1. Restaurants & Cafes

- **Demographics**: Restaurant and cafe owners and managers
- **Needs**: Easy way to donate surplus food, reduce waste
- **Benefits**: Positive community impact, improved brand image, cost reduction

#### 2. Charities & Orphanages

- **Demographics**: Charitable organizations and orphan care homes
- **Needs**: Access to healthy and safe food for beneficiaries
- **Benefits**: Easy access to donations, comprehensive tracking, detailed reports

#### 3. Volunteers (Future)

- **Demographics**: Individuals wanting to help
- **Needs**: Participate in charitable work and community service
- **Benefits**: Rewarding experience, tangible impact, easy coordination

### Market Segments

- **Educational Institutions**: Schools and educational centers
- **Community Initiatives**: Civil societies and charitable initiatives
- **Food Sector**: Restaurants, hotels, and catering companies
- **Digital Charity**: Organizations preferring technological solutions

<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/eec58ecb-cf31-46bf-bead-9f3f1dfe3534" alt="Qoot App" />
    </td>
  </tr>
</table>

## 📱 Getting Started

### Prerequisites

- **Flutter SDK**: Version 3.8.1 or higher
- **Dart SDK**: Version 3.8.1 or higher
- **Android Studio** / **VS Code** with Flutter extensions
- **Git**: For version control

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/theahmedhany/qoot.git
   cd qoot
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate localization files**

   ```bash
   flutter pub run intl_utils:generate
   ```

4. **Run code generation**

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Run the app**

   ```bash
   # For development
   flutter run

   # For production (Android)
   flutter build apk --release

   # For production (iOS)
   flutter build ios --release
   ```

---

## 🏗️ Project Structure

```
qoot/
│
├── android/                       # Android native code
├── ios/                          # iOS native code
├── assets/                       # App resources
│   ├── animations/               # Lottie animations
│   ├── fonts/                    # Cairo fonts
│   ├── icons/                    # SVG icons
│   ├── images/                   # Static images
│   ├── master/                   # Splash screens
│   └── placeholder/              # Placeholder images
│
├── lib/
│   ├── core/                     # Core functionality
│   │   ├── common/               # Shared screens and widgets
│   │   ├── constants/            # Constants
│   │   ├── data/                 # Local data
│   │   ├── di/                   # Dependency injection
│   │   ├── helpers/              # Helper functions
│   │   ├── middlewares/          # Middlewares
│   │   ├── models/               # Shared models
│   │   ├── network/              # API services
│   │   ├── routing/              # Routing
│   │   ├── services/             # Services
│   │   ├── theme/                # Theme management
│   │   └── utils/                # Utility helpers
│   │
│   ├── features/                 # Feature modules
│   │   ├── auth/                 # Authentication
│   │   ├── charity_home/         # Charity home
│   │   ├── restaurant_home/      # Restaurant home
│   │   ├── create_donation/      # Create donation
│   │   ├── donation_details/     # Donation details
│   │   └── ...                   # Other features
│   │
│   ├── generated/                # Generated code
│   │   └── intl/                 # Localization
│   │
│   ├── l10n/                     # Localization files
│   ├── main.dart                 # App entry point
│   └── my_app.dart               # App widget
│
├── test/                         # Unit tests
├── pubspec.yaml                  # Dependencies
├── analysis_options.yaml         # Linting rules
└── README.md                     # This file
```

---

## 🎨 Design System

### Color Palette

- **Primary**: Green (#077734) - Growth, goodness, helping
- **Secondary**: Complementary harmonious colors
- **Success**: Green - Achievements, confirmations
- **Error**: Red - Errors, warnings
- **Warning**: Orange - Cautions, pending actions
- **Info**: Light Blue - Information, tips

### Typography

- **Font Family**: Cairo (optimized for Arabic)
  - ExtraLight (200)
  - Light (300)
  - Regular (400)
  - Medium (500)
  - SemiBold (600)
  - Bold (700)
  - ExtraBold (800)
  - Black (900)

### Themes

- **Light Mode**: Clean, bright interface for daytime use
- **Dark Mode**: Eye-comfortable dark theme for nighttime use

---

## 🔐 Security Features

- ✅ **JWT Authentication**: Secure token-based authentication
- ✅ **Encrypted Storage**: Locally encrypted sensitive data
- ✅ **Role-Based Access**: Separate permissions for restaurants/charities
- ✅ **Secure API Calls**: HTTPS encryption for all network requests
- ✅ **Input Validation**: Client and server-side form validation
- ✅ **Session Management**: Automatic logout on token expiration

---

## 🌐 Localization

Supported Languages:

- 🇸🇦 **Arabic** (Primary)
- 🇬🇧 **English**

Localization files are located in `lib/l10n/` and `lib/generated/intl/`

---

## 📊 Performance Optimizations

- **Lazy Loading**: Load content on demand
- **Image Caching**: Store network images locally
- **Code Splitting**: Modular feature architecture
- **Optimized Builds**: Dead code elimination and minification
- **Responsive Design**: Adapts to all screen sizes

---

## 🔮 Future Enhancements

### Short-Term (3-6 months)

- [ ] 🚚 **Delivery System**: Add home delivery option
- [ ] 🎮 **Gamification**: Points, badges, and leaderboards
- [ ] 📊 **Advanced Analytics**: AI-powered performance predictions
- [ ] 📱 **Tablet Optimization**: Enhanced interface for large screens
- [ ] 🌍 **Web Platform**: Browser-based access to the platform
- [ ] 💬 **In-App Messaging**: Live chat between users

### Mid-Term (6-12 months)

- [ ] 👥 **Peer Collaboration**: Study groups and student forums
- [ ] 🎯 **Adaptive Learning**: Personalized content recommendations
- [ ] 🗣️ **Speech Recognition**: Arabic pronunciation practice
- [ ] 📊 **Parent Analytics**: Detailed parent dashboard with insights
- [ ] 🔌 **Third-Party Integrations**: LMS and school system integration

### Long-Term (12+ months)

- [ ] 🧠 **AI Tutor**: Personalized intelligent teaching assistant
- [ ] 🌐 **Multi-Language Support**: Expand to more languages
- [ ] 🎓 **Certification System**: Digital certificates for achievements
- [ ] 📱 **Offline-First Architecture**: Fully functional offline capabilities
- [ ] 🎨 **AR/VR Learning**: Immersive educational experiences
- [ ] 🌟 **Marketplace**: Teachers can sell premium content

### Continuous Improvements

- 🔄 **Regular Content Updates**: New lessons and materials
- 🐛 **Bug Fixes**: Ongoing maintenance and improvements
- 📈 **Performance Optimization**: Speed and efficiency enhancements
- 🎨 **UI/UX Improvements**: Based on user feedback
- 🔐 **Security Updates**: Latest security patches and best practices

---

## 🙏 Acknowledgments

Special thanks to all contributors and developers who made this project possible.

---

<div align="center">

**Made with ❤️ for a better community**

⭐ If you like this project, don't forget to give it a star on GitHub!

</div>
