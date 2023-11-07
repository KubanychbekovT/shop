import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final phoneInputFormatter = MaskTextInputFormatter(
    mask: '+996 ### ### ###',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
);