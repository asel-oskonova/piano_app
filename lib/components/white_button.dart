import 'dart:developer';

import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';


class WhiteButton extends StatelessWidget {
  const WhiteButton({
    required this.text,
    required this.soundPath,
  
    super.key,
  });

  final String text;
  final String soundPath;


  @override
  Widget build(BuildContext context) {
    // final pianoWidth = getPianoWidth(context);

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.09,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 1.sp,
        ),
        child: ElevatedButton(
          onPressed: () async {
            log(soundPath);
            final source = await soloud.loadAsset('assets/sounds/$soundPath');
             await soloud.play(source);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shadowColor: Colors.black,
              padding: EdgeInsets.zero,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              )),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}
final shotSounds = <int, String>{
  1: 'shot/-1_A.mp3',
  2: 'shot/-1_Ab.mp3',
  3: 'shot/-1_B.mp3',
  4: 'shot/0_C.mp3',
  5: 'shot/0_Cb.mp3',
  6: 'shot/0_D.mp3',
  7: 'shot/0_Db.mp3',
  8: 'shot/0_E.mp3',
  9: 'shot/0_F.mp3',
  10: 'shot/0_Fb.mp3',
  11: 'shot/0_G.mp3',
  12: 'shot/0_Gb.mp3',
  13: 'shot/0_A.mp3',
  14: 'shot/0_Ab.mp3',
  15: 'shot/0_B.mp3',
  16: 'shot/1_C.mp3',
  17: 'shot/1_Cb.mp3',
  18: 'shot/1_D.mp3',
  19: 'shot/1_Db.mp3',
  20: 'shot/1_E.mp3',
  21: 'shot/1_F.mp3',
  22: 'shot/1_Fb.mp3',
  23: 'shot/1_G.mp3',
  24: 'shot/1_Gb.mp3',
  25: 'shot/1_A.mp3',
  26: 'shot/1_Ab.mp3',
  27: 'shot/1_B.mp3',
  28: 'shot/2_C.mp3',
  29: 'shot/2_Cb.mp3',
  30: 'shot/2_D.mp3',
  31: 'shot/2_Db.mp3',
  32: 'shot/2_E.mp3',
  33: 'shot/2_F.mp3',
  34: 'shot/2_Fb.mp3',
  35: 'shot/2_G.mp3',
  36: 'shot/2_Gb.mp3',
  37: 'shot/2_A.mp3',
  38: 'shot/2_Ab.mp3',
  39: 'shot/2_B.mp3',
  40: 'shot/3_C.mp3',
  41: 'shot/3_Cb.mp3',
  42: 'shot/3_D.mp3',
  43: 'shot/3_Db.mp3',
  44: 'shot/3_E.mp3',
  45: 'shot/3_F.mp3',
  46: 'shot/3_Fb.mp3',
  47: 'shot/3_G.mp3',
  48: 'shot/3_Gb.mp3',
  49: 'shot/3_A.mp3',
  50: 'shot/3_Ab.mp3',
  51: 'shot/3_B.mp3',
  52: 'shot/4_C.mp3',
  53: 'shot/4_Cb.mp3',
  54: 'shot/4_D.mp3',
  55: 'shot/4_Db.mp3',
  56: 'shot/4_E.mp3',
  57: 'shot/4_F.mp3',
  58: 'shot/4_Fb.mp3',
  59: 'shot/4_G.mp3',
  60: 'shot/4_Gb.mp3',
  61: 'shot/4_A.mp3',
  62: 'shot/4_Ab.mp3',
  63: 'shot/4_B.mp3',
  64: 'shot/5_C.mp3',
  65: 'shot/5_Cb.mp3',
  66: 'shot/5_D.mp3',
  67: 'shot/5_Db.mp3',
  68: 'shot/5_E.mp3',
  69: 'shot/5_F.mp3',
  70: 'shot/5_Fb.mp3',
  71: 'shot/5_G.mp3',
  72: 'shot/5_Gb.mp3',
  73: 'shot/5_A.mp3',
  74: 'shot/5_Ab.mp3',
  75: 'shot/5_B.mp3',
  76: 'shot/6_C.mp3',
  77: 'shot/6_Cb.mp3',
  78: 'shot/6_D.mp3',
  79: 'shot/6_Db.mp3',
  80: 'shot/6_E.mp3',
  81: 'shot/6_F.mp3',
  82: 'shot/6_Fb.mp3',
  83: 'shot/6_G.mp3',
  84: 'shot/6_Gb.mp3',
  85: 'shot/6_A.mp3',
  86: 'shot/6_Ab.mp3',
  87: 'shot/6_B.mp3',
  88: 'shot/7_C.mp3',
};