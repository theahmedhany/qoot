String getCharityDisplayName(int value) {
  final match = charityTypes.firstWhere(
    (item) => item.value == value,
    orElse: () => CharityType(
      value: 0,
      name: "",
      displayName: "مؤسسة خيرية",
    ),
  );

  return match.displayName;
}

List<CharityType> charityTypes = [
  CharityType(value: 1, name: "Orphanage", displayName: "دار أيتام"),
  CharityType(value: 2, name: "ElderlyHome", displayName: "دار مسنين"),
  CharityType(value: 3, name: "Shelter", displayName: "ملجأ"),
  CharityType(value: 4, name: "FoodBank", displayName: "بنك طعام"),
  CharityType(value: 5, name: "Other", displayName: "غير محدد"),
];

class CharityType {
  final int value;
  final String name;
  final String displayName;

  CharityType({
    required this.value,
    required this.name,
    required this.displayName,
  });

  factory CharityType.fromJson(Map<String, dynamic> json) {
    return CharityType(
      value: json['value'],
      name: json['name'],
      displayName: json['displayName'],
    );
  }
}
