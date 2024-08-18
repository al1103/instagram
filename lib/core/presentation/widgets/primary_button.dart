import 'package:flutter/material.dart';
import 'package:network_social/common/theme/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(StadiumBorder()),
      ),
      child: child,
    );
  }
}

class PrimarySmallButton extends StatelessWidget {
  const PrimarySmallButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.padding,
  });

  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: const WidgetStatePropertyAll(StadiumBorder()),
        padding: WidgetStatePropertyAll(EdgeInsets.all(padding ?? 20)),
        textStyle:
            WidgetStatePropertyAll(Theme.of(context).textTheme.labelMedium),
        backgroundColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.isEmpty) return color;
          return null;
        }),
      ),
      child: child,
    );
  }
}

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
  });

  final VoidCallback? onPressed;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? AppTheme.blue[500],
        ),
        side: WidgetStatePropertyAll(
          BorderSide(
            color: backgroundColor ?? AppTheme.blue[500] ?? Colors.blue,
          ),
        ),
        textStyle: WidgetStatePropertyAll(
          Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w900),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.all(20)),
      ),
      child: child,
    );
  }
}

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    super.key,
    required this.onPressed,
    this.bgColor,
    this.textColor,
    required this.title,
    this.isExpandedButton = false,
    this.showLoading = false,
  });

  final VoidCallback? onPressed;
  final Color? bgColor;
  final Color? textColor;
  final String title;
  final bool isExpandedButton;
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final enabled = onPressed != null;
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
          width: isExpandedButton ? double.infinity : null,
          child: FilledButton(
            style: theme.filledButtonTheme.style?.copyWith(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              backgroundColor: enabled
                  ? WidgetStatePropertyAll(bgColor)
                  : WidgetStatePropertyAll(theme.disabledColor),
              textStyle: WidgetStatePropertyAll(
                TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: textColor ?? Colors.white,
                ),
              ),
            ),
            onPressed: enabled ? onPressed : null,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: textColor ?? Colors.white,
              ),
            ),
          ),
        ),
        if (showLoading) loading(),
      ],
    );
  }

  Widget loading() {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 38,
      height: 38,
      child: const CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 2,
      ),
    );
  }
}

class BaseButton extends StatelessWidget {
  const BaseButton({
    required this.title,
    this.backgroundColor,
    this.titleColor,
    super.key,
  });

  final String title;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: backgroundColor ?? const Color(0xFF137DC0),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: titleColor ?? Colors.white,
            ),
      ),
    );
  }
}
