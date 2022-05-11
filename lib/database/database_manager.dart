import 'package:connectionary/model/member_record.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DBManager {
  DBManager._();

  static final instance = DBManager._();

  late final Box memberRecord;

  Future<void> initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter(MemberRecordAdapter());
    memberRecord = await Hive.openBox<MemberRecord>('memberRecord');
  }
}
