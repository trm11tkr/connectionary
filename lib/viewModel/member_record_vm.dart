import 'package:connectionary/model/member_record.dart';
import 'package:connectionary/repository/member_rocord_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../boxes/boxes.dart';

final memberRecordProvider =
    StateNotifierProvider<MemberRecordVM, Box<MemberRecord>>(
        (ref) => MemberRecordVM());

class MemberRecordVM extends StateNotifier<Box<MemberRecord>> {
  MemberRecordVM() : super(Boxes.getMemberRecords());
  MemberRecordRepository memberRecordRepository = MemberRecordRepository();

  void addRecord(MemberRecord memberRecord) {
    memberRecordRepository.addRecord(memberRecord);
  }

  void deleteRecord(MemberRecord memberRecord) {
    memberRecordRepository.deleteRecord(memberRecord);
  }

  void updateRecord(MemberRecord memberRecord, MemberRecord newRecord) {
    memberRecordRepository.updateRecord(memberRecord, newRecord);
  }
}
