import 'package:flutter/material.dart';
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
  Color? favoriteColor;

  // 作成日
  @HiveField(9)
  final DateTime createdAt;

  // 自由メモ
  @HiveField(10)
  String? freeMemo;

  MemberRecord({
    required this.calledName,
    required this.fullName,
    String? furigana,
    int? age,
    String? gender,
    String? bloodType,
    String? currentLocation,
    this.favorite = false,
    Color? favoriteColor,
    required this.createdAt,
    String? freeMemo,
  });

  factory MemberRecord.create({
    required String calledName,
    required String fullName,
    String? furigana,
    int? age,
    String? gender,
    String? bloodType,
    String? currentLocation,
    Color? favoriteColor,
    required DateTime createdAt,
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
    Color? favoriteColor,
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
