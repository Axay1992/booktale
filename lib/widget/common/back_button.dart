import 'dart:io';

import 'package:booktale/main.dart';
import 'package:booktale/utils/math_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget buildBackButton() => CupertinoButton(
      onPressed: onTap,
      child: _backIcon(),
    );

Widget _backIcon() => Icon(
      Platform.isIOS ? Icons.arrow_back_ios_new_rounded : Icons.arrow_back,
      color: Theme.of(getContext).primaryColor,
      size: getSize(24),
    );

void onTap() => Navigator.pop(getContext);
