import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart'; // This file will be automatically generated

//--------------------------------- USERFS
@JsonSerializable()
class UserFS {
  final String accountType;
  final String avatarId;
  final List<BioreUdzialKonkurs> bioreUdzialKonkursy;
  final String cityId;
  final List<DodanyKonkurs> dodaneKonkursy;
  final List<DodanaKorepetycja> dodaneKorepetycje;
  final List<DodanaSzkola> dodaneSzkoly;
  final List<DodaneZainteresowanie> dodaneZainteresowania;
  final String email;
  final List<String> glosyNaSzkoly;
  final String uid;
  final String username;

  UserFS({
    this.accountType = '',
    this.avatarId = '',
    this.bioreUdzialKonkursy = const [],
    this.cityId = '',
    this.dodaneKonkursy = const [],
    this.dodaneKorepetycje = const [],
    this.dodaneSzkoly = const [],
    this.dodaneZainteresowania = const [],
    this.email = '',
    this.glosyNaSzkoly = const [],
    this.uid = '',
    this.username = '',
  });

  /// Connect the generated [_$UserFSFromJson] function to the `fromJson`
  /// factory.
  factory UserFS.fromJson(Map<String, dynamic> json) => _$UserFSFromJson(json);

  /// Connect the generated [_$UserFSFromJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserFSToJson(this);
}

@JsonSerializable()
class BioreUdzialKonkurs {
  final String konkursId;
  final String miastoId;

  BioreUdzialKonkurs({
    this.konkursId = '',
    this.miastoId = '',
  });

  factory BioreUdzialKonkurs.fromJson(Map<String, dynamic> json) =>
      _$BioreUdzialKonkursFromJson(json);
  Map<String, dynamic> toJson() => _$BioreUdzialKonkursToJson(this);
}

@JsonSerializable()
class DodanyKonkurs {
  final String konkursId;
  final String miastoId;

  DodanyKonkurs({
    this.konkursId = '',
    this.miastoId = '',
  });

  factory DodanyKonkurs.fromJson(Map<String, dynamic> json) =>
      _$DodanyKonkursFromJson(json);
  Map<String, dynamic> toJson() => _$DodanyKonkursToJson(this);
}

@JsonSerializable()
class DodanaKorepetycja {
  final String korepetycjaId;
  final String miastoId;

  DodanaKorepetycja({
    this.korepetycjaId = '',
    this.miastoId = '',
  });

  factory DodanaKorepetycja.fromJson(Map<String, dynamic> json) =>
      _$DodanaKorepetycjaFromJson(json);
  Map<String, dynamic> toJson() => _$DodanaKorepetycjaToJson(this);
}

@JsonSerializable()
class DodanaSzkola {
  final String szkolaId;
  final String miastoId;

  DodanaSzkola({
    this.szkolaId = '',
    this.miastoId = '',
  });

  factory DodanaSzkola.fromJson(Map<String, dynamic> json) =>
      _$DodanaSzkolaFromJson(json);
  Map<String, dynamic> toJson() => _$DodanaSzkolaToJson(this);
}

@JsonSerializable()
class DodaneZainteresowanie {
  final String zainteresowanieId;
  final String miastoId;

  DodaneZainteresowanie({
    this.zainteresowanieId = '',
    this.miastoId = '',
  });

  factory DodaneZainteresowanie.fromJson(Map<String, dynamic> json) =>
      _$DodaneZainteresowanieFromJson(json);
  Map<String, dynamic> toJson() => _$DodaneZainteresowanieToJson(this);
}
//--------------------------------- USERFS END
