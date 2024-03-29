import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:student_commute/const.dart';
import 'package:student_commute/view/user/user_bottom_navigation.dart';
import 'package:student_commute/view/user/user_home.dart';
import 'package:student_commute/view/user/user_signup.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome',
                style: GoogleFonts.robotoSerif(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Email/Phone',
              style: GoogleFonts.poppins(),
            ),
            TextFormField(
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Password',
              style: GoogleFonts.poppins(),
            ),
            TextFormField(
              decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Iconsax.eye_slash))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text(
                  'Remember me',
                  style: GoogleFonts.poppins(),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UserBottomNavigation(),
                  ));
                },
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                        ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    minimumSize: MaterialStatePropertyAll<Size>(
                      Size.fromHeight(50),
                    ),
                    backgroundColor:
                        MaterialStatePropertyAll(DEFAULT_BLUE_DARK)),
                child: Text(
                  'Login Now',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UserSignup(),
                      ));
                    },
                    child: Text(
                      'Signup Now',
                      style: GoogleFonts.poppins(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
