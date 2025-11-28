enum Roles { volunteer, charity, restaurant }

enum CharityType {
  orphanage(1, 'Orphanage', 'دار أيتام', 'Orphanage'),
  elderlyHome(2, 'ElderlyHome', 'دار مسنين', 'Elderly Home'),
  shelter(3, 'Shelter', 'ملجأ', 'Shelter'),
  foodBank(4, 'FoodBank', 'بنك طعام', 'Food Bank'),
  other(5, 'Other', 'غير محدد', 'Other');

  final int value;
  final String name;
  final String displayName;
  final String uiName;

  const CharityType(this.value, this.name, this.displayName, this.uiName);

  static CharityType? fromValue(int? value) {
    if (value == null) return null;
    try {
      return CharityType.values.firstWhere((e) => e.value == value);
    } catch (_) {
      return null;
    }
  }
}

enum ReservationStatus {
  pending, // 1
  confirmed, // 2
  completed, // 3
  cancelled, // 4
}
