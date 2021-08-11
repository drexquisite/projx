import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignUpWidget extends StatefulWidget {
  LoginSignUpWidget({Key key}) : super(key: key);

  @override
  _LoginSignUpWidgetState createState() => _LoginSignUpWidgetState();
}

class _LoginSignUpWidgetState extends State<LoginSignUpWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF4B39EF),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePageWidget(),
                                ),
                              );
                            },
                            child: AutoSizeText(
                              'P L A C E',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 30,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Sign In',
                                      style:
                                          FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8E55DE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                      child: Container(
                                        width: 90,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF8E55DE),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('SignUp pressed ...');
                                      },
                                      text: 'Sign Up',
                                      options: FFButtonOptions(
                                        width: 100,
                                        height: 50,
                                        color: Color(0x004B39EF),
                                        textStyle:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF8E55DE),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                      child: Container(
                                        width: 90,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF8E55DE),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                            child: TextFormField(
                              controller: emailAddressController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0x98FFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your email...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0x98FFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                filled: true,
                                fillColor: Color(0xFF8E55DE),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 24, 20, 24),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Field is required';
                                }

                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                            child: TextFormField(
                              controller: passwordController,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0x98FFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your password...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0x98FFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                filled: true,
                                fillColor: Color(0xFF8E55DE),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 24, 20, 24),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
                                  ),
                                  child: Icon(
                                    passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0x98FFFFFF),
                                    size: 20,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button-Login pressed ...');
                              },
                              text: 'Login',
                              options: FFButtonOptions(
                                width: 200,
                                height: 45,
                                color: Color(0xFF8E55DE),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button-ForgotPassword pressed ...');
                              },
                              text: 'Forgot Password?',
                              options: FFButtonOptions(
                                width: 160,
                                height: 20,
                                color: Color(0xFFBA8AFD),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                                  child: Text(
                                    'Or use a social account to login',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8E55DE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFF090F13),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/social_GoogleWhite.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFF090F13),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/social_Apple.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFF090F13),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(18, 18, 18, 18),
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
