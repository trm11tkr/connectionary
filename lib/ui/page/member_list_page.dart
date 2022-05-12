import 'package:connectionary/model/member_record.dart';
import 'package:connectionary/ui/widgets/tile/member_record_tile.dart';
import 'package:connectionary/viewModel/member_record_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../boxes/boxes.dart';

class MemberListPage extends ConsumerWidget {
  const MemberListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberRecordVM = ref.read(memberRecordProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('メンバーリスト'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                final addBox = Boxes.getMemberRecords();
                addBox.add(MemberRecord.create(
                    calledName: 'calledName', fullName: 'fullName'));
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: ValueListenableBuilder<Box<MemberRecord>>(
          valueListenable: Boxes.getMemberRecords().listenable(),
          builder: (context, box, _) {
            final memberRecord = box.values.toList();
            return buildContext(memberRecord, MemberRecordVM());
          },
        ));
  }
}
