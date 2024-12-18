import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'criar_empresa_model.dart';
export 'criar_empresa_model.dart';

class CriarEmpresaWidget extends StatefulWidget {
  const CriarEmpresaWidget({super.key});

  @override
  State<CriarEmpresaWidget> createState() => _CriarEmpresaWidgetState();
}

class _CriarEmpresaWidgetState extends State<CriarEmpresaWidget> {
  late CriarEmpresaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriarEmpresaModel());

    _model.nameCreateTextController ??= TextEditingController();
    _model.nameCreateFocusNode ??= FocusNode();

    _model.emailCreateTextController ??= TextEditingController();
    _model.emailCreateFocusNode ??= FocusNode();

    _model.passwordCreateTextController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmCreateTextController ??= TextEditingController();
    _model.passwordConfirmCreateFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 24.0,
                    buttonSize: 50.0,
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Criar empresa',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.nameCreateTextController,
                              focusNode: _model.nameCreateFocusNode,
                              autofocus: true,
                              autofillHints: const [AutofillHints.name],
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Nome',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Nome da empresa',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.name,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .nameCreateTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.emailCreateTextController,
                              focusNode: _model.emailCreateFocusNode,
                              autofocus: true,
                              autofillHints: const [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Email',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Email da empresa',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.emailAddress,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .emailCreateTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.passwordCreateTextController,
                              focusNode: _model.passwordCreateFocusNode,
                              autofocus: true,
                              autofillHints: const [AutofillHints.password],
                              obscureText: !_model.passwordCreateVisibility,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Senha',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Senha',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                    () => _model.passwordCreateVisibility =
                                        !_model.passwordCreateVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordCreateVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .passwordCreateTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller:
                                    _model.passwordConfirmCreateTextController,
                                focusNode:
                                    _model.passwordConfirmCreateFocusNode,
                                autofocus: true,
                                autofillHints: const [AutofillHints.password],
                                obscureText:
                                    !_model.passwordConfirmCreateVisibility,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Confirmar senha',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Confirmar senha',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model
                                              .passwordConfirmCreateVisibility =
                                          !_model
                                              .passwordConfirmCreateVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordConfirmCreateVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .passwordConfirmCreateTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await EmpresasTable().insert({
                                  'id': currentUserUid,
                                  'created_at': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                  'name': _model.nameCreateTextController.text,
                                  'email':
                                      _model.emailCreateTextController.text,
                                  'password':
                                      _model.passwordCreateTextController.text,
                                });

                                context.pushNamed('HomePage');
                              },
                              text: 'Criar',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 10.0))
                            .addToStart(const SizedBox(height: 30.0))
                            .addToEnd(const SizedBox(height: 30.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 30.0)).addToStart(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
