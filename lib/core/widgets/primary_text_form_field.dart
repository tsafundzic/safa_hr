import 'package:flutter/material.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField({
    Key? key,
    this.label,
    this.controller,
    this.validator,
    this.hintText,
    this.readOnly = false,
    this.suffixIcon,
    this.isPasswordField = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.initialValue,
    this.maxLength,
    this.minLines,
    this.maxLines = 1,
    this.tooltipText,
    this.labelSuffix,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final bool readOnly;
  final Widget? suffixIcon;
  final bool isPasswordField;
  final AutovalidateMode autovalidateMode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final String? tooltipText;
  final Widget? labelSuffix;
  final GestureTapCallback? onTap;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldBody();
}

class _PrimaryTextFormFieldBody extends State<PrimaryTextFormField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.label != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.label ?? '',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          autovalidateMode: widget.autovalidateMode,
          obscureText: widget.isPasswordField ? _obscurePassword : false,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          maxLength: widget.maxLength,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          initialValue: widget.initialValue,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            errorMaxLines: 4,
            suffixIconConstraints: const BoxConstraints.tightFor(width: 24.0 + 2 * 12, height: 24.0 + 2),
            // Icon 24 + horizontal padding for alignment and vertical for InkWell touch
            suffixIcon: widget.isPasswordField
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: _obscurePassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                    ),
                  )
                : widget.suffixIcon,
          ),
          cursorWidth: 1,
        ),
      ],
    );
  }
}
