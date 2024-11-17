import 'package:flutter/material.dart';

class OptCheckbox extends StatefulWidget {
  final String title;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final TextStyle? style;
  final bool enableLinkButton;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding;

  const OptCheckbox({
    super.key,
    this.title = "",
    this.value = false,
    this.onChanged,
    this.enableLinkButton = false,
    this.onPressed,
    this.style,
    this.padding = const EdgeInsets.only(bottom: 15),
  });

  @override
  OptCheckboxState createState() => OptCheckboxState();
}

class OptCheckboxState extends State<OptCheckbox> {
  bool _checked = false;
  final TextStyle _style = TextStyle();

  final TextStyle _linkButtonStyle = const TextStyle(
    color: Colors.blue,
    decorationThickness: 1,
    decorationColor: Colors.blue,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid,
  );

  @override
  void initState() {
    _checked = widget.value;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant OptCheckbox oldWidget) {
    _checked = widget.value;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var icon = _checked ? const Icon(Icons.check, size: 15, color: Colors.purple) : const SizedBox();

    return Padding(
      padding: widget.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          InkWell(
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: icon,
            ),
            onTap: () {
              setState(() {
                _checked = !_checked;
                widget.onChanged?.call(_checked);
              });
            },
          ),
          const SizedBox(width: 5),
          Expanded(
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: _getText(),
              ),
              onTap: () {
                setState(() {
                  _checked = !_checked;
                  widget.onChanged?.call(_checked);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getText() {
    if (widget.enableLinkButton) {
      return InkWell(
        onTap: () {
          widget.onPressed?.call();
        },
        child: Text(
          widget.title.replaceAll('\\n', '\n'),
          style: _linkButtonStyle.merge(widget.style),
          textAlign: TextAlign.start,
        ),
      );
    }

    return Text(
      widget.title.replaceAll('\\n', '\n'),
      style: _style.merge(widget.style),
      textAlign: TextAlign.start,
    );
  }
}
