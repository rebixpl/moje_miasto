// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFS _$UserFSFromJson(Map<String, dynamic> json) => UserFS(
      accountType: json['accountType'] as String? ?? '',
      avatarId: json['avatarId'] as String? ?? '',
      bioreUdzialKonkursy: (json['bioreUdzialKonkursy'] as List<dynamic>?)
              ?.map(
                  (e) => BioreUdzialKonkurs.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cityId: json['cityId'] as String? ?? '',
      dodaneKonkursy: (json['dodaneKonkursy'] as List<dynamic>?)
              ?.map((e) => DodanyKonkurs.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dodaneKorepetycje: (json['dodaneKorepetycje'] as List<dynamic>?)
              ?.map(
                  (e) => DodanaKorepetycja.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dodaneSzkoly: (json['dodaneSzkoly'] as List<dynamic>?)
              ?.map((e) => DodanaSzkola.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dodaneZainteresowania: (json['dodaneZainteresowania'] as List<dynamic>?)
              ?.map((e) =>
                  DodaneZainteresowanie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      email: json['email'] as String? ?? '',
      glosyNaSzkoly: (json['glosyNaSzkoly'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      uid: json['uid'] as String? ?? '',
      username: json['username'] as String? ?? '',
    );

Map<String, dynamic> _$UserFSToJson(UserFS instance) => <String, dynamic>{
      'accountType': instance.accountType,
      'avatarId': instance.avatarId,
      'bioreUdzialKonkursy': instance.bioreUdzialKonkursy,
      'cityId': instance.cityId,
      'dodaneKonkursy': instance.dodaneKonkursy,
      'dodaneKorepetycje': instance.dodaneKorepetycje,
      'dodaneSzkoly': instance.dodaneSzkoly,
      'dodaneZainteresowania': instance.dodaneZainteresowania,
      'email': instance.email,
      'glosyNaSzkoly': instance.glosyNaSzkoly,
      'uid': instance.uid,
      'username': instance.username,
    };

BioreUdzialKonkurs _$BioreUdzialKonkursFromJson(Map<String, dynamic> json) =>
    BioreUdzialKonkurs(
      konkursId: json['konkursId'] as String? ?? '',
      miastoId: json['miastoId'] as String? ?? '',
    );

Map<String, dynamic> _$BioreUdzialKonkursToJson(BioreUdzialKonkurs instance) =>
    <String, dynamic>{
      'konkursId': instance.konkursId,
      'miastoId': instance.miastoId,
    };

DodanyKonkurs _$DodanyKonkursFromJson(Map<String, dynamic> json) =>
    DodanyKonkurs(
      konkursId: json['konkursId'] as String? ?? '',
      miastoId: json['miastoId'] as String? ?? '',
    );

Map<String, dynamic> _$DodanyKonkursToJson(DodanyKonkurs instance) =>
    <String, dynamic>{
      'konkursId': instance.konkursId,
      'miastoId': instance.miastoId,
    };

DodanaKorepetycja _$DodanaKorepetycjaFromJson(Map<String, dynamic> json) =>
    DodanaKorepetycja(
      korepetycjaId: json['korepetycjaId'] as String? ?? '',
      miastoId: json['miastoId'] as String? ?? '',
    );

Map<String, dynamic> _$DodanaKorepetycjaToJson(DodanaKorepetycja instance) =>
    <String, dynamic>{
      'korepetycjaId': instance.korepetycjaId,
      'miastoId': instance.miastoId,
    };

DodanaSzkola _$DodanaSzkolaFromJson(Map<String, dynamic> json) => DodanaSzkola(
      szkolaId: json['szkolaId'] as String? ?? '',
      miastoId: json['miastoId'] as String? ?? '',
    );

Map<String, dynamic> _$DodanaSzkolaToJson(DodanaSzkola instance) =>
    <String, dynamic>{
      'szkolaId': instance.szkolaId,
      'miastoId': instance.miastoId,
    };

DodaneZainteresowanie _$DodaneZainteresowanieFromJson(
        Map<String, dynamic> json) =>
    DodaneZainteresowanie(
      zainteresowanieId: json['zainteresowanieId'] as String? ?? '',
      miastoId: json['miastoId'] as String? ?? '',
    );

Map<String, dynamic> _$DodaneZainteresowanieToJson(
        DodaneZainteresowanie instance) =>
    <String, dynamic>{
      'zainteresowanieId': instance.zainteresowanieId,
      'miastoId': instance.miastoId,
    };
