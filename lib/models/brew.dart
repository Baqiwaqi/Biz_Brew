class BrewModel {
  final String username;
  final int sugars;
  final String strength;

  BrewModel({this.username, this.sugars, this.strength});
  BrewModel.fromJson(Map<String, Object> json) 
    : this(
      username : json['user_name'] as String,
      sugars : json['sugars'] as int,
      strength : json['strength'] as String
    );

    Map<String, Object> toJson() {
      return {
        'user_name': username,
        'suagrs' : sugars,
        'strength': strength
      };
    }
}
