import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme/theme_mode_cubit.dart';

class ToggleTheme extends StatelessWidget {
  const ToggleTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, bool>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              context.read<ThemeModeCubit>().toggleTheme();
            },
            icon: Icon(state ? Icons.dark_mode : Icons.light_mode));
      },
    );
  }
}
