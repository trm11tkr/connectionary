import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'member_record.g.dart';

@HiveType(typeId: 1)
class MemberRecord extends HiveObject {
  // 呼び方
  @HiveField(0)
  final String calledName;

  // フルネーム
  @HiveField(1)
  final String fullName;

  // フリガナ
  @HiveField(2)
  String? furigana;

  // 年齢
  @HiveField(3)
  int? age;

  // 性別
  @HiveField(4)
  String? gender;

  // 血液型
  @HiveField(5)
  String? bloodType;

  // 現在地
  @HiveField(6)
  String? currentLocation;

  // お気に入り
  @HiveField(7, defaultValue: false)
  bool favorite;

  // 好きな色
  @HiveField(8)
  int? favoriteColor;

  // 作成日
  @HiveField(9)
  final DateTime createdAt;

  // 自由メモ
  @HiveField(10)
  String? freeMemo;

  MemberRecord({
    required this.calledName,
    required this.fullName,
    this.furigana,
    this.age,
    this.gender,
    this.bloodType,
    this.currentLocation,
    this.favorite = false,
    this.favoriteColor,
    required this.createdAt,
    this.freeMemo,
  });

  factory MemberRecord.create({
    required String calledName,
    required String fullName,
    String? furigana,
    int? age,
    String? gender,
    String? bloodType,
    String? currentLocation,
    int? favoriteColor,
    String? freeMemo,
  }) {
    return MemberRecord(
      calledName: calledName,
      fullName: fullName,
      furigana: furigana,
      age: age,
      gender: gender,
      bloodType: bloodType,
      currentLocation: currentLocation,
      favoriteColor: favoriteColor,
      createdAt: DateTime.now(),
      freeMemo: freeMemo,
    );
  }

  // immutableなクラスを変更したい時に使用
  MemberRecord copyWith({
    String? calledName,
    String? fullName,
    String? furigana,
    int? age,
    String? gender,
    String? bloodType,
    String? currentLocation,
    bool? favorite,
    int? favoriteColor,
    String? freeMemo,
}) {
    return MemberRecord(
      calledName: calledName ?? this.calledName,
      fullName: fullName ?? this.fullName,
      furigana: furigana ?? this.furigana,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      bloodType: bloodType ?? this.bloodType,
      currentLocation: currentLocation ?? this.currentLocation,
      favorite: favorite ?? this.favorite,
      favoriteColor: favoriteColor ?? this.favoriteColor,
      createdAt: createdAt,
      freeMemo: freeMemo ?? this.freeMemo,
    );
  }
}
