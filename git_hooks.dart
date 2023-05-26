import 'dart:io';
import 'package:git_hooks/git_hooks.dart';
import "package:dart_pre_commit/dart_pre_commit.dart";

void main(List<String> arguments) {
  // ignore: omit_local_variable_types
  Map<Git, UserBackFun> params = {Git.preCommit: preCommit};
  GitHooks.call(arguments, params);
}

Future<bool> preCommit() async {
  Directory.current = './';
  final result = await DartPreCommit.run();
  return result.isSuccess;
}
