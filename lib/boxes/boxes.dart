import 'package:connectionary/model/member_record.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<MemberRecord> getMemberRecords() =>
      Hive.box<MemberRecord>('memberRecord');
}
