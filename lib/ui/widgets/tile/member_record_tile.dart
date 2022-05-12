import 'package:connectionary/model/member_record.dart';
import 'package:connectionary/viewModel/member_record_vm.dart';
import 'package:flutter/material.dart';

Widget buildContext(
    List<MemberRecord> memberRecord, MemberRecordVM memberRecordVM) {
  return memberRecord.isEmpty
      ? const SizedBox(
          child: Text('no data'),
        )
      : ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(memberRecord[index].calledName),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  memberRecordVM.deleteRecord(memberRecord[index]);
                },
              ),
            );
          },
          itemCount: memberRecord.length,
        );
}
