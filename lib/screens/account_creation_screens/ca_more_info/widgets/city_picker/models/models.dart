import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart'; // This file will be automatically generated

@JsonSerializable()
class City extends Equatable {
  final String cityId;
  final String cityName;

  const City({
    this.cityId = '',
    this.cityName = '',
  });

  /// Connect the generated [_$CityFromJson] function to the `fromJson`
  /// factory.
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  /// Connect the generated [_$CityFromJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CityToJson(this);

  @override
  List<Object?> get props => [cityId, cityName];
}
