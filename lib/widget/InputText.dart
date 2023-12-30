import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatefulWidget {
  final text;
  final keybord;
  final obscureText;
  final maxlength;
  final hintText;
  const InputText(
      {super.key,
      this.text,
      this.keybord,
      this.obscureText,
      this.maxlength,
      this.hintText});

  @override
  State<InputText> createState() => _nameState();
}

class _nameState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        
        inputFormatters: widget.text == "Card Number"
            ? [
                FilteringTextInputFormatter.digitsOnly,
                CardNumberFormatter(),
              ]
            : null,
        textInputAction: TextInputAction.done,
        keyboardType: widget.keybord,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintStyle: TextStyle(fontSize: 14,fontFamily: 'ProductSansRegular',color: Color(0xff757575)),
          hintText: widget.hintText,
          labelText: "${widget.text}",
          labelStyle: TextStyle(fontSize: 14,fontFamily: 'ProductSansRegular',color: Color(0xff757575)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 13.0, 20.0, 13.0),
          counterText: '',
        ),
        maxLength: widget.maxlength,
        onChanged: (value) {},
        obscureText: widget.obscureText,
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
