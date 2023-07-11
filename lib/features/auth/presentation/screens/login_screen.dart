import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';

import 'package:products_app/config/config.dart';
import 'package:products_app/features/shared/shared.dart';
import 'package:products_app/features/auth/presentation/presentation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                _IconLogin(),
                SizedBox(height: 20),
                _LoginView(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleLogin(),
        SizedBox(height: 20),
        _LoginForm(),
        SizedBox(height: 20),
        _ForgotPasswordWidget(),
        SizedBox(height: 20),
        _LoginButtons(),
        SizedBox(height: 30),
        _NotAccountWidget(),
      ],
    );
  }
}

class _NotAccountWidget extends StatelessWidget {
  const _NotAccountWidget();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AutoSizeText(
          'Don\'t have an account? ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: AutoSizeText(
            'Sign Up',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colors.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginButtons extends StatelessWidget {
  const _LoginButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonLargeWidget(
          onPressed: () => context.push(Routes.product),
          child: const AutoSizeText(
            'Login',
            maxFontSize: 18,
            minFontSize: 14,
            presetFontSizes: [18, 16, 14],
          ),
        ),
        const SizedBox(height: 20),
        const _LineORLogin(),
        const SizedBox(height: 20),
        ButtonLargeWidget(
          onPressed: () {},
          color: Colors.grey[200],
          child: Row(
            children: [
              Image.asset(
                LocalImagesDataSource.googleLogoPath,
                height: 30,
              ),
              const SizedBox(width: 50),
              const AutoSizeText(
                'Login with Google',
                maxFontSize: 18,
                minFontSize: 14,
                presetFontSizes: [18, 16, 14],
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ForgotPasswordWidget extends StatelessWidget {
  const _ForgotPasswordWidget();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: AutoSizeText(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colors.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class _TitleLogin extends StatelessWidget {
  const _TitleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      'Login',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email ID',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            icon: const Icon(Icons.email_outlined),
            iconColor: Colors.grey,
            fillColor: Colors.grey,
            focusColor: colors.primary,
            prefixIconColor: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            icon: const Icon(Icons.lock_sharp),
            iconColor: Colors.grey,
            fillColor: Colors.grey,
            focusColor: colors.primary,
            prefixIconColor: Colors.grey,
            suffixIcon: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.remove_red_eye_outlined),
            ),
          ),
        ),
      ],
    );
  }
}

class _LineORLogin extends StatelessWidget {
  const _LineORLogin();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: size.width * .3,
          color: Colors.grey,
        ),
        const AutoSizeText(
          '  OR  ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        Container(
          height: 1,
          width: size.width * .3,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class _IconLogin extends StatelessWidget {
  const _IconLogin();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;

    return Icon(
      Icons.screen_lock_portrait_outlined,
      size: size.height * 0.3,
      color: colors.primary,
    );
  }
}