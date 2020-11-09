﻿UNIT GController;

//{$WARNINGS OFF}
//{$HINTS OFF}

INTERFACE

{$REGION 'HELP'}

  {$REGION 'Help about VERCNPJ'}

  {$ENDREGION}

  {$REGION 'Help about VERIFICA_CAMPOS'}

  {$ENDREGION}

  {$REGION 'Help about DELETE_CAMPO'}

  {$ENDREGION}

  {$REGION 'Help about FILTRO_REGISTROS'}

  {$ENDREGION}

  {$REGION 'Help about CONTREGISTROS'}

  {$ENDREGION}

  {$REGION 'Help about MSG_API'}

  {$ENDREGION}

  {$REGION 'Help about TOTALIZA_CAMPO'}

  {$ENDREGION}

  {$REGION 'Help about CARREGA_DADOS'}

  {$ENDREGION}

  {$REGION 'Help about MAXLENGTH'}

  {$ENDREGION}

  {$REGION 'Help about LIMPAR_LETRAS'}

  {$ENDREGION}

  {$REGION 'Help about LIMPAR_NUMEROS'}

  {$ENDREGION}

  {$REGION 'Help about DELAY'}

  {$ENDREGION}

  {$REGION 'Help about COPIA_ARQUIVOS'}

  {$ENDREGION}

  {$REGION 'Help about MOVIMENTAR_JANELA'}

  {$ENDREGION}

  {$REGION 'Help about MSG_BALAO_FOCO'}

  {$ENDREGION}

  {$REGION 'Help about ARREDONDAR'}

  {$ENDREGION}

  {$REGION 'Help about CARATERISTICAS_EDIT_ONCLICK'}

  {$ENDREGION}

  {$REGION 'Help about CARATERISTICAS_EDIT_DBCLICK'}

  {$ENDREGION}

  {$REGION 'Help about CARATERISTICAS_EDIT_SHOWHINT'}

  {$ENDREGION}

  {$REGION 'Help about CARATERISTICAS_EDIT_ONENTER'}

  {$ENDREGION}

  {$REGION 'Help about CARATERISTICAS_EDIT_ONEXIT'}

  {$ENDREGION}

  {$REGION 'Help about LIMPAFORM'}

  {$ENDREGION}

  {$REGION 'Help about ALINHACXCENTER'}

  {$ENDREGION}

  {$REGION 'Help about REDUZCONSUMO'}

  {$ENDREGION}

  {$REGION 'Help about DESENHASOMBRA'}

  {$ENDREGION}

  {$REGION 'Help about MSG_BALAO'}

  {$ENDREGION}

  {$REGION 'Help about SET_EVENTOS'}

  {$ENDREGION}

  {$REGION 'Help about SETCOLORGRID'}

  {$ENDREGION}

  {$REGION 'Help about MANAGER_CONTROLS'}
    {
      OBJETOS podem ser definidos manualmente utilizando a virgula ','.
      ACAO_ATIVAR (Define a propriedade do OBJETO(s) *Enable como true ou false dependendo da opção SENTIDO)
      ACAO_EXIBIR (Define a propriedade do OBJETO(s) *Visible como true ou false dependendo da opção SENTIDO)
    }
  {$ENDREGION}

  {$REGION 'Help about ENVIAREMAIL'}

  {$ENDREGION}

  {$REGION 'Help about LOGINCAT'}

  {$ENDREGION}

{$ENDREGION}

{$REGION 'USES'}

USES

  WINDOWS, MESSAGES, SYSUTILS, VARIANTS, CLASSES, GRAPHICS, CONTROLS, FORMS, IDIPWATCH,
  DIALOGS, COMCTRLS, SCUSTOMCOMBOEDIT,SSPINEDIT,STDCTRLS, SMEMO, SCURREDIT, SCURRENCYEDIT,
  DBGRIDS, ACDBGRID, MASK, SMASKEDIT, SCOMBOBOX, SEDIT, DBCTRLS, BUTTONS, SSPEEDBUTTON,
  EXTCTRLS, SPANEL, DB, SSKINMANAGER, ZABSTRACTRODATASET, ZABSTRACTDATASET,
  ZDATASET,PLATFORMDEFAULTSTYLEACTNCTRLS, ZABSTRACTCONNECTION, STOOLEDIT, IDMESSAGE,
  IDTCPCONNECTION, IDEXPLICITTLSCLIENTSERVERBASE, IDSMTP, IDBASECOMPONENT, IDIOHANDLER,
  IDIOHANDLERSOCKET, IDIOHANDLERSTACK, IDSSL, IDSSLOPENSSL, DXCALLOUTPOPUP, SCOMBOEDIT,
  GRIDS, SHELLAPI, IDANTIFREEZE, STRUTILS, CXGRIDCUSTOMVIEW, CXGRIDDBTABLEVIEW,
  CXCONTROLS,  CXGRIDINPLACEEDITFORM, CXGRIDCUSTOMTABLEVIEW, CXGRIDTABLEVIEW, JVCOMPONENTBASE,
  JVTHREADTIMER, IDATTACHMENTFILE, ACARCCONTROLS, SCOMMONDATA, sDBEdit, sRichEdit, SDBMEMO,
  SDBCOMBOBOX, acDBComboEdit;

{$ENDREGION}

{$REGION 'ORQUESTRADOR'}

  TYPE
     TFORMMSG = CLASS(TFORM)
  END;

  TYPE
    TSTRINGARRAY = ARRAY OF STRING;
    
  FUNCTION VERCPF(SNRCPF:STRING):BOOLEAN;
  FUNCTION VERCNPJ(NUMCNPJ: STRING): BOOLEAN;
  FUNCTION VERIFICA_CAMPOS(LOCAL:TWINCONTROL):BOOLEAN;
  FUNCTION DELETE_CAMPO(QUERY:TZQUERY): BOOLEAN;
  FUNCTION FILTRO_REGISTROS(CAMPOS:STRING; QUERY:TZQUERY; TABELA:TZTABLE; FILTROS:STRING):INTEGER;
  FUNCTION CONTREGISTROS(DATASOURCE:TDataSource):INTEGER;
  FUNCTION MSG_API(TEXTO:STRING; IMG:STRING; QUESTAO:BOOLEAN; BT:STRING):BOOLEAN;
  FUNCTION TOTALIZA_CAMPO(CAMPO:TFIELD):DOUBLE;
  FUNCTION CARREGA_DADOS(FORM: TFORM; SENDER:TOBJECT; QUERY:TZQUERY; DIRECAO:BOOLEAN) :BOOLEAN;
  FUNCTION MAXLENGTH(TEXTO:STRING; LIMITE:INTEGER):STRING;
  FUNCTION LIMPAR_LETRAS(LIMPAR:STRING):string;
  FUNCTION LIMPAR_NUMEROS(LIMPAR:STRING):string;
  FUNCTION ENVIAREMAIL(ASSUNTO:STRING; DESTINO:STRING; MSG_TXT:WideString; ANEXO:STRING):BOOLEAN;
  FUNCTION LOGINCAT:TWINCONTROL;
  FUNCTION DELAY(DWMILLISECONDS: LONGINT;  ACTIVE:BOOLEAN):BOOLEAN;  
  FUNCTION ArrayClassToArrayString(list:array of tclass):TSTRINGARRAY; 
  
  PROCEDURE COPIA_ARQUIVOS(ORIGEM:STRING; DESTINO:STRING);
  PROCEDURE MOVIMENTAR_JANELA(SC_DRAGMOVE :integer = $F012);
  PROCEDURE MSG_BALAO_FOCO(TEXTO:STRING; CAMPO:TOBJECT);
  PROCEDURE ARREDONDAR(CONTROL: TWINCONTROL; PERCENTUAL:INTEGER) ;
  PROCEDURE LIMPAFORM(FORM: TFORM);
  PROCEDURE ALINHACXCENTER(CX:TOBJECT);
  PROCEDURE REDUZCONSUMO;
  PROCEDURE DESENHASOMBRA(CANVAS: TCANVAS; PAINEL: TSPANEL; COR: TCOLOR = CLBLACK);
  PROCEDURE MSG_BALAO(SENDER:TOBJECT; CONTEUDO:TWinControl; POSICAO:TDXCALLOUTPOPUPALIGNMENT; COR:TCOLOR; LOCAL_BLOQUEIO:TWinControl; BLOQUEAR:BOOLEAN; AUTOCLOSE:BOOLEAN);
  PROCEDURE SET_EVENTOS(FORM:TFORM);
  PROCEDURE SETCOLORGRID(SENDER:TOBJECT; CORLINHA:TCOLOR; ESTADO: TGRIDDRAWSTATE; NEGRITO:BOOLEAN);
  PROCEDURE MANAGER_CONTROLS(OBJETOS: STRING; ACAO:STRING; SENTIDO:BOOLEAN);

CONST

  LIST_COMPONENTS_EDIT: ARRAY [0..19] OF TCLASS =
  (
    TSCOMBOBOX, TSCOMBOEDIT, TSMASKEDIT, TSSPINEDIT, TSDECIMALSPINEDIT,
    TSCURRENCYEDIT, TSCUSTOMCOMBOEDIT, TSMEMO, TSDBEDIT, TSEDIT, TSDATEEDIT,
    TSRICHEDIT, TSFILEDIREDIT, TSFILENAMEEDIT, TSDIRECTORYEDIT, TSCALCEDIT,
    TSDBEDIT, TSDBMEMO, TSDBCOMBOBOX, TSDBCOMBOEDIT
  );


  INFO_LIST  : ARRAY [0..12] OF STRING =
  (
    {NOME_EMPRESA}      '',
    {CNPJ_EMPRESA}      '',
    {ENDERECO_EMPRESA}  '',
    {TELEFONE_EMPRESA}  '',
    {SETOR_EMPRESA}     '',
    {EMAIL_COMERCIAL}   '',
    {EMAIL_SUPORTE}     '',
    {FACEBOOK_EMPRESA}  '',
    {TWITTER_EMPRESA}   '',
    {EMAIL_DEV}         '',
    {SENHA_EMAIL_DEV}   '',
    {EMAIL_ADM}         '',
    {SITE_EMPRESA}      ''
    {CAPTURAR ESSAS INFO DE UMA BASE DE DADOS}
  );

  TYPE_EMAIL_LIST : ARRAY [0..3] OF STRING =
  (
    'T_EMAIL_COMERCIAL_DEV',
    'T_EMAIL_COMERCIAL_NORMAL',
    'T_EMAIL_NORMAL',
    'T_EMAIL_AVISO'
  );

  IM_OK         : ARRAY [0..2] OF STRING = ('Concluír',   'CLGREEN',   '0.PNG');
  IM_CANCEL     : ARRAY [0..2] OF STRING = ('Cancelar',   'CLRED',     '1.PNG');
  IM_DELETE     : ARRAY [0..2] OF STRING = ('Deletar',    '$008080FF', '4.PNG');
  IM_SEND       : ARRAY [0..2] OF STRING = ('Enviar',     'CLBLUE',    '2.PNG');
  IM_CLOSE      : ARRAY [0..2] OF STRING = ('Fechar',     'CLGRAY',    '5.PNG');
  IM_INFO       : ARRAY [0..2] OF STRING = ('Atenção',    'CLYELLOW',  '3.PNG');
  IM_EXCEPTION  : ARRAY [0..2] OF STRING = ('Erro',       'CLRED',     '6.PNG');
  COLOR_LIST    : ARRAY [0..2] OF TColor = (CLSILVER, clRED, $000080FF);

  ACAO_ATIVAR = 'ATIVAR';
  ACAO_EXIBIR = 'EXIBIR';
  ACAO_FLEX = 'FLEX';

  SIZE_LIST_COMPONENTS = Length(LIST_COMPONENTS_EDIT)-1;

VAR

  FORMMSG:TFORM;
  BT_MSG_ACAO_CANCELAR, BT_MSG_ACAO_CONFIRMAR:BOOLEAN;
  BALAO_POPUP:TDXCALLOUTPOPUP;
  BALAO_POPUP_BLOQUEAR:Boolean;
  BALAO_POPUP_LOCAL_PUBLIC:TWinControl;
  BALAO_POPUP_STATUS:BOOLEAN;
  BALAO_POPUP_LOCAL:TOBJECT;
  BALAO_POPUP_LOCAL_CORDENADAS:TRECT;
  SKIN_CATLOGIN: TSSKINMANAGER;
  PNL_CATLOGIN:TSPANEL;


  {$ENDREGION}

IMPLEMENTATION

{$REGION 'PROCEDIMENTOSE FUNÇÕES'}


FUNCTION ArrayClassToArrayString(list:Array of tclass):TSTRINGARRAY;
VAR
  I:INTEGER;
BEGIN

  SetLength(Result, Length(list));
  
  FOR I:=0 TO Length(list)-1 DO
    result[I]:=UpperCase(list[I].ClassName);     

END;


FUNCTION MAXLENGTH(TEXTO:STRING; LIMITE:INTEGER):STRING;
VAR
  tamanho :integer;
BEGIN

  tamanho:=Length(texto);
  if tamanho > limite then
    result:=Copy(texto, 0, limite)+'...'
  else
    result:=texto;

END;


PROCEDURE MANAGER_CONTROLS(OBJETOS: STRING; ACAO:STRING; SENTIDO:BOOLEAN);
VAR
  Lista: TStringList;
  Largura,I,J,iRetorno:Integer;

begin

  if (trim(OBJETOS) <> NullAsStringValue) then
    if trim(OBJETOS) <> Screen.ActiveForm.Name then
      try

        Lista := TStringList.Create;
        iRetorno := ExtractStrings([',','*'],[' '],PChar(trim(OBJETOS)),Lista);
        
        TRY
          if pos('*',trim(OBJETOS))>0 then
          begin

            for J := 0 to TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).ControlCount -1 do
              for I := 0 to Lista.COUNT-1 do
                WITH TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).Controls[j] DO
                begin

                  with TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])) do
                    LARGURA:=trunc(Width / ControlCount);

                  if acao = ACAO_EXIBIR then
                    if SENTIDO = TRUE then
                      SHOW
                    ELSE
                      hide
                  ELSE
                  if acao = ACAO_ATIVAR then
                    if SENTIDO = TRUE then
                      Enabled:=true
                    ELSE
                      Enabled:=false
                  ELSE
                  if acao = ACAO_FLEX then
                  begin
                    ALIGN:=ALLEFT;
                    WIDTH:=LARGURA;
                  end

                end;

          end
          ELSE
            for J := 0 to TWINCONTROL(TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).PARENT).ControlCount -1 do
              for I := 0 to Lista.COUNT-1 do
                if TWINCONTROL(TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).PARENT).Controls[j].name  = Lista.Strings[I]  then
                  WITH TWINCONTROL(TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).PARENT).Controls[j] DO
                  begin

                    with TWINCONTROL(TWINCONTROL(Screen.ActiveForm.FindComponent(Lista.Strings[0])).PARENT) do
                      LARGURA:=trunc(Width / ControlCount);

                    if acao = ACAO_EXIBIR then
                      if SENTIDO = TRUE then
                        SHOW
                      ELSE
                        hide
                    ELSE
                    if acao = ACAO_ATIVAR then
                      if SENTIDO = TRUE then
                        Enabled:=true
                      ELSE
                        Enabled:=false
                    else
                    if acao = ACAO_FLEX then
                    begin
                      ALIGN:=ALLEFT;
                      WIDTH:=LARGURA;
                    end;

                  end;
        EXCEPT
          ShowMessage('Erro ao identificar os objetos.')
        END;

      finally
        FreeAndNil(Lista);
      end
    else
      ShowMessage('O formulario não pode ser usado para esta finalidade')
  else
    ShowMessage('A lista de objetos não pode estar vazia');

end;


FUNCTION LIMPAR_LETRAS(LIMPAR:STRING):string;
var
  I: Integer;
  RESULTADO: String;
begin

  RESULTADO := '';
  For I := 1 to Length(LIMPAR) do
    if CharInSet(LIMPAR[I],['0'..'9'] ) then
      RESULTADO := RESULTADO + LIMPAR[I];

    Result := RESULTADO;

END;

FUNCTION LIMPAR_NUMEROS(LIMPAR:STRING):string;
var
  I: Integer;
  RESULTADO: String;
begin

  RESULTADO := '';
  For I := 1 to Length(LIMPAR) do
    if CharInSet(LIMPAR[I],['A'..'Z','_']) then
      RESULTADO := RESULTADO + LIMPAR[I];

    Result := RESULTADO;

END;


FUNCTION MSG_API(TEXTO:STRING; IMG:STRING; QUESTAO:BOOLEAN; BT:STRING):BOOLEAN;

  PROCEDURE ACAO_CANCEL(DATA: POINTER; SENDER: TOBJECT);
  BEGIN
    BT_MSG_ACAO_CANCELAR:=TRUE;
    BT_MSG_ACAO_CONFIRMAR:=FALSE;
    FORMMSG.CLOSE;
  END;

  PROCEDURE ACAO_CONFIRM(DATA: POINTER; SENDER: TOBJECT);
  BEGIN
    BT_MSG_ACAO_CANCELAR:=FALSE;
    BT_MSG_ACAO_CONFIRMAR:=TRUE;
    FORMMSG.CLOSE;
  END;

VAR
  EVENTO: TNOTIFYEVENT;
  PNL_MASTER:TSPANEL;
  BT_CONFIRM, BT_CANCEL:TSSPEEDBUTTON;
  PNL_TEXT, PNL_BTS:TSPANEL;
  IMG_ICONE:TIMAGE;
BEGIN

  TRY

    TRY

      WITH  FORMMSG  DO
      BEGIN
        FORMMSG := TFORM.CREATE(APPLICATION);
        WINDOWSTATE := WSNORMAL;
        BORDERSTYLE:=BSNONE;
        POSITION:=POMAINFORMCENTER;
        HEIGHT:=190;
        WIDTH:=300;
        ALPHABLEND:=TRUE;
        ALPHABLENDVALUE:=240;
        COLOR:=$00E2B58B;
        BORDERWIDTH:=1;
      END;

      WITH  PNL_MASTER  DO
      BEGIN
        PNL_MASTER := TSPANEL.CREATE(FORMMSG);
        PARENT  := FORMMSG;
        ALIGN:=ALCLIENT;
        FONT.COLOR:=CLBLACK;
        FONT.NAME:='CALIBRI';
        COLOR:=$00201817;
        BEVELOUTER:=BVNONE;
        SKINDATA.SKINSECTION:='CHECKBOX';
        SKINDATA.CUSTOMCOLOR:=TRUE;
        SKINDATA.CUSTOMFONT:=TRUE;
      END;

      WITH  PNL_TEXT  DO
      BEGIN
        PNL_TEXT := TSPANEL.CREATE(PNL_MASTER);
        PARENT  := PNL_MASTER;
        ALIGN:=ALCLIENT;
        FONT.COLOR:=CLWHITE;
        FONT.HEIGHT:=14;
        FONT.NAME:='CALIBRI';
        FONT.STYLE:= [FSBOLD];
        MARGINS.LEFT:=10;
        MARGINS.RIGHT:=10;
        ALIGNWITHMARGINS:=TRUE;
        BEVELOUTER:=BVNONE;
        SKINDATA.SKINSECTION:='CHECKBOX';
        SKINDATA.CUSTOMFONT:=TRUE;
      END;

      WITH  PNL_BTS  DO
      BEGIN
        PNL_BTS := TSPANEL.CREATE(PNL_MASTER);
        PARENT  := PNL_MASTER;
        ALIGN:=ALBOTTOM;
        HEIGHT:=35;
        BEVELOUTER:=BVNONE;
        SKINDATA.SKINSECTION:='CHECKBOX';
        SKINDATA.CUSTOMFONT:=TRUE;
      END;

      WITH BT_CONFIRM DO
      BEGIN
        BT_CONFIRM := TSSPEEDBUTTON.CREATE(PNL_BTS);
        PARENT  := PNL_BTS;
        ALIGN:=ALRIGHT;
        CURSOR:=CRHANDPOINT;
        WIDTH:=TRUNC(PNL_BTS.WIDTH/2)+55;
        SKINDATA.SKINSECTION:='CHECKBOX';
        Font.Style:=[FSBOLD];
        TMETHOD(EVENTO).CODE := @ACAO_CONFIRM;
        TMETHOD(EVENTO).DATA  := BT_CONFIRM;
        ONCLICK:= EVENTO;
      END;

      WITH BT_CANCEL DO
      BEGIN
        BT_CANCEL := TSSPEEDBUTTON.CREATE(PNL_BTS);
        PARENT  := PNL_BTS;
        ALIGN:=ALLEFT;
        CURSOR:=CRHANDPOINT;
        CAPTION:='CANCELAR ✖';
        WIDTH:=TRUNC(PNL_BTS.WIDTH/2)+55;
        SKINDATA.SKINSECTION:='CHECKBOX';
        Font.Style:=[FSBOLD];
        TMETHOD(EVENTO).CODE := @ACAO_CANCEL;
        TMETHOD(EVENTO).DATA  := BT_CANCEL;
        ONCLICK:= EVENTO;
      END;

      WITH  IMG_ICONE  DO
      BEGIN
        IMG_ICONE := timage.CREATE(PNL_MASTER);
        ALIGN:=alTop;
        PARENT  := PNL_MASTER;
        Height:=60;
        Transparent:=TRUE;
        Center:=TRUE;
        MARGINS.top:=20;
        ALIGNWITHMARGINS:=TRUE;
        if FileExists(GetCurrentDir +'\'+IMG) then
          Picture.LoadFromFile(GetCurrentDir +'\'+IMG)
        else
          ShowMessage('Erro ao carregar a imagem!'+#13+'VERIFIQUE SE EXISTEM AS IMAGENS DE 0 A 6 ex:(0.jpg) NA PASTA JUNTO AO EXECUTÁVEL'+#13+'('+GetCurrentDir +'\'+IMG+')');
      END;

      BT_MSG_ACAO_CANCELAR:=FALSE;
      BT_MSG_ACAO_CONFIRMAR:=FALSE;
      PNL_TEXT.CAPTION:=UpperCase(TEXTO);
      BT_CONFIRM.CAPTION:=UpperCase(BT +' ✔');

      IF (QUESTAO = TRUE) THEN
      BEGIN
        BT_CANCEL.SHOW;
        BT_CONFIRM.SHOW;
      END
      ELSE
      BEGIN
        BT_CONFIRM.ALIGN:=ALCLIENT;
        BT_CANCEL.HIDE;
      END;

    EXCEPT
      MSG_API('OCORREU UM ERRO AO GERAR OS OBJETOS DA MENSSAGEM.', IM_EXCEPTION[1], FALSE,  'ENTENDO');
    END;
      
  FINALLY

    FORMMSG.SHOWMODAL;

    IF BT_MSG_ACAO_CONFIRMAR = TRUE THEN
      RESULT:=TRUE;
    IF BT_MSG_ACAO_CANCELAR = TRUE THEN
      RESULT:=FALSE;

    FREEANDNIL(FORMMSG);

  END;

END;

PROCEDURE COPIA_ARQUIVOS(ORIGEM:STRING; DESTINO:STRING);
BEGIN

  IF (FILEEXISTS(ORIGEM)) AND (ORIGEM <> NULLASSTRINGVALUE)THEN
    TRY
      SHELLEXECUTE(0,NIL,'CMD.EXE',PWIDECHAR('/C ' + 'COPY "'+ORIGEM+'" "'+DESTINO+'" /Y'),NIL,0);
    EXCEPT
      MSG_API('ERRO AO SALVAR O ARQUIVO, VERIFIQUE SE O ARQUIVO REALMENTE EXISTE.', IM_EXCEPTION[2], FALSE, 'ENTENDO');
    END;

END;

PROCEDURE MOVIMENTAR_JANELA(SC_DRAGMOVE :integer = $F012);
begin

  WITH TWINCONTROL(Screen.ActiveForm) DO
  BEGIN
    RELEASECAPTURE;
    PERFORM(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  END;

END;

PROCEDURE LIMPAFORM(FORM: TFORM);
VAR
  I:Integer;
BEGIN

  for I:= 0 TO FORM.ComponentCount-1 DO
    case AnsiIndexStr(UpperCase(FORM.COMPONENTS[I].ClassName),
      ['TSEDIT', 'TSSPINEDIT', 'TSMASKEDIT', 'TSCURRENCYEDIT',
       'TSMEMO', 'TSDECIMALSPINEDIT', 'TSCOMBOBOX', 'TSDATEEDIT'])
    of

      0: TSEDIT(FORM.COMPONENTS[I]).CLEAR;
      1: TSSPINEDIT(FORM.COMPONENTS[I]).CLEAR;
      2: TSMASKEDIT(FORM.COMPONENTS[I]).CLEAR;
      3: TSCURRENCYEDIT(FORM.COMPONENTS[I]).CLEAR;
      4: TSMEMO(FORM.COMPONENTS[I]).CLEAR;
      5: TSDECIMALSPINEDIT(FORM.COMPONENTS[I]).CLEAR;
      6: TSCOMBOBOX(FORM.COMPONENTS[I]).ClearSelection;
      7: TSDATEEDIT(FORM.COMPONENTS[I]).CLEAR;

    end;

END;

PROCEDURE MSG_BALAO_FOCO(TEXTO:STRING; CAMPO:TOBJECT);
VAR
  PNL:TSPANEL;
  DXCALLOUTPOPUP:TDXCALLOUTPOPUP;
  SKINMANAGER:TSSKINMANAGER;
BEGIN

  TRY

    DXCALLOUTPOPUP := TDXCALLOUTPOPUP.CREATE(TFORM(APPLICATION.MAINFORM));

    WITH PNL DO
    BEGIN

      PNL := TSPANEL.CREATE(TFORM(APPLICATION.MAINFORM));
      PARENT := DXCALLOUTPOPUP.POPUPCONTROL;

      SKINMANAGER := TSSKINMANAGER.CREATE(TFORM(APPLICATION.MAINFORM));
      SKINMANAGER.SKINDIRECTORY := 'C:\SKINS';
      SKINMANAGER.SKINNAME:='GPLUS';
      SKINMANAGER.ACTIVE:=TRUE;

      SKINDATA.SKINMANAGER:=SKINMANAGER;
      SKINDATA.SKINSECTION:='CHECKBOX';
      SKINDATA.CUSTOMCOLOR:=TRUE;
      BEVELOUTER:=BVNONE;
      COLOR:=CLWHITE;
      ALIGN:=ALCLIENT;
      CAPTION:='  '+TEXTO+'  ';

    END;

    BEEP;
    DXCALLOUTPOPUP.ALIGNMENT:=CPABOTTOMCENTER;
    DXCALLOUTPOPUP.BORDERCOLOR:=$00FF8000;
    DXCALLOUTPOPUP.COLOR:=$00FF8000;
    DXCALLOUTPOPUP.POPUPCONTROL :=TSPANEL(PNL);
    DXCALLOUTPOPUP.POPUP(TSPANEL(CAMPO).PARENT);

    DELAY(1500, TRUE);

    case AnsiIndexStr(UpperCase(CAMPO.ClassName),
      ['TSEDIT', 'TSCOMBOBOX', 'TSMASKEDIT', 'TSCURRENCYEDIT',
      'TSMEMO',  'TSDECIMALSPINEDIT', 'TSSPINEDIT', 'TSDATEEDIT', 'TSCOMBOEDIT'])
    of

      0:  TSEDIT(CAMPO).SETFOCUS;
      1:  TSCOMBOBOX(CAMPO).SETFOCUS;
      2:  TSMASKEDIT(CAMPO).SETFOCUS;
      3:  TSCURRENCYEDIT(CAMPO).SETFOCUS;
      4:  TSMEMO(CAMPO).SETFOCUS;
      5:  TSDECIMALSPINEDIT(CAMPO).SETFOCUS;
      6:  TSSPINEDIT(CAMPO).SETFOCUS;
      7:  TSDATEEDIT(CAMPO).SETFOCUS;
      8:  TSCOMBOEDIT(CAMPO).SETFOCUS;

    end;

  FINALLY
    FREEANDNIL(DXCALLOUTPOPUP);
    FREEANDNIL(SKINMANAGER);
    FREEANDNIL(PNL);
  END;

END;



PROCEDURE MSG_BALAO(SENDER:TOBJECT; CONTEUDO:TWinControl; POSICAO:TDXCALLOUTPOPUPALIGNMENT; COR:TCOLOR; LOCAL_BLOQUEIO:TWinControl; BLOQUEAR:BOOLEAN; AUTOCLOSE:BOOLEAN);

  PROCEDURE HIDE_BALAOPOPUP;
  BEGIN

    BALAO_POPUP_STATUS:=FALSE;
    BALAO_POPUP_LOCAL_PUBLIC.Enabled:=TRUE;

  END;

  PROCEDURE SHOW_BALAOPOPUP;
  BEGIN

    BALAO_POPUP_STATUS:=TRUE;
    if (BALAO_POPUP_BLOQUEAR = TRUE) then
      BALAO_POPUP_LOCAL_PUBLIC.Enabled:=FALSE
    else
      BALAO_POPUP_LOCAL_PUBLIC.Enabled:=TRUE;

  END;

VAR
  EVENTO:TNotifyEvent;
  HitTest:TcxCustomGridHitTest;
  ASite: TcxGridSite;
begin

  BALAO_POPUP_LOCAL_PUBLIC:= LOCAL_BLOQUEIO;
  BALAO_POPUP := TDXCALLOUTPOPUP.CREATE(TFORM(APPLICATION.MAINFORM));

  with BALAO_POPUP do
  begin

    ALIGNMENT:=POSICAO;
    AnimationOptions.FadeEffect:=false;
    AnimationOptions.MoveEffect:=true;
    BORDERCOLOR:=COR;
    RoundRadius:=20;
    Rounded:=True;
    COLOR:=BORDERCOLOR;
    POPUPCONTROL := CONTEUDO;

    TMETHOD(EVENTO).CODE := @HIDE_BALAOPOPUP;
    OnHide      :=  EVENTO ;

    TMETHOD(EVENTO).CODE := @SHOW_BALAOPOPUP;
    OnShow      :=  EVENTO ;

    if (BLOQUEAR = TRUE) then
      BALAO_POPUP_BLOQUEAR:=TRUE
    ELSE
      BALAO_POPUP_BLOQUEAR:=FALSE;

    BALAO_POPUP_LOCAL:= SENDER;

    if (SENDER is TcxGridSite) then
      TRY

        ASite := SENDER as TcxGridSite;
        HitTest := ASite.GridView.GetHitTest(ASite.ScreenToClient(GetMouseCursorPos));
        BALAO_POPUP_LOCAL_CORDENADAS:=TcxGridRecordCellHitTest(HitTest).ViewInfo.Bounds;

//        if Assigned(HitTest) then
//          if HitTest is TcxGridRecordCellHitTest then
        POPUP(TWinControl(BALAO_POPUP_LOCAL), BALAO_POPUP_LOCAL_CORDENADAS);

      EXCEPT
        // EXCEÇÃO NAO TRATADA(RESOLVE POR HORA)
      END
    else
    begin
      BALAO_POPUP_LOCAL:=  TWINCONTROL(SENDER);
      POPUP(TWINCONTROL(BALAO_POPUP_LOCAL));
    end;

    IF DELAY(700, AUTOCLOSE) THEN
      BALAO_POPUP.Close;

  end;

END;



FUNCTION VERCPF(SNRCPF:STRING):BOOLEAN;
VAR
   WCPFCALC : STRING;
   WSOMACPF : INTEGER;
   WSX1     : SHORTINT;
   WCPFDIGT : INTEGER;
   DIGIT:STRING;
   S : STRING;
BEGIN
  S := SNRCPF;
  DIGIT:=COPY(SNRCPF,14,1);

  WHILE POS('.', S) > 0 DO
    S[POS('.', S)] := ' ';

  WHILE POS('-', S) > 0 DO
    S[POS('-', S)] := ' ';

  S := TRIM(S);

  IF S = '' THEN
  ELSE
    IF LENGTH(S) < 11 THEN
      VERCPF := FALSE
    ELSE
    BEGIN

      SNRCPF := COPY(SNRCPF,1,3)+COPY(SNRCPF,5,3)+
      COPY(SNRCPF,9,3)+COPY(SNRCPF,13,2);
      WCPFCALC := COPY(SNRCPF, 1, 9);
      WSOMACPF := 0;

      FOR WSX1:= 1 TO 9 DO
        WSOMACPF := WSOMACPF + STRTOINT(COPY(WCPFCALC, WSX1, 1)) * (11 - WSX1);

      WCPFDIGT:= 11 - WSOMACPF MOD 11;

      IF WCPFDIGT IN [10,11] THEN
        WCPFCALC:= WCPFCALC + '0'
      ELSE
        WCPFCALC := WCPFCALC +  INTTOSTR(WCPFDIGT);

      WSOMACPF:= 0;
      FOR WSX1:= 1 TO 10 DO
        WSOMACPF := WSOMACPF + STRTOINT(COPY(WCPFCALC, WSX1, 1)) * (12 - WSX1);

      WCPFDIGT:= 11 - WSOMACPF MOD 11;

      IF WCPFDIGT IN [10,11] THEN
        WCPFCALC:= WCPFCALC + '0'
      ELSE
        WCPFCALC := WCPFCALC +  INTTOSTR(WCPFDIGT);

      IF  SNRCPF <> WCPFCALC THEN
      BEGIN
        VERCPF := FALSE;
        RESULT:=FALSE;
      END
      ELSE
      BEGIN
        VERCPF := TRUE;
        RESULT:=TRUE;
      END;

    END;

END;

FUNCTION VERCNPJ(NUMCNPJ: STRING): BOOLEAN;
VAR
  CNPJ: STRING;
  DG1, DG2: INTEGER;
  X, TOTAL: INTEGER;
  RET: BOOLEAN;
BEGIN

  RET:=FALSE;
  CNPJ:='';

  IF LENGTH(NUMCNPJ) = 18 THEN
    IF (COPY(NUMCNPJ,3,1) + COPY(NUMCNPJ,7,1) + COPY(NUMCNPJ,11,1) + COPY(NUMCNPJ,16,1) = '../-') THEN
    BEGIN
      CNPJ:=COPY(NUMCNPJ,1,2) + COPY(NUMCNPJ,4,3) + COPY(NUMCNPJ,8,3) + COPY(NUMCNPJ,12,4) + COPY(NUMCNPJ,17,2);
      RET:=TRUE;
    END;

  IF LENGTH(NUMCNPJ) = 14 THEN
  BEGIN
    CNPJ:=NUMCNPJ;
    RET:=TRUE;
  END;

  IF RET THEN
  BEGIN

    TRY

      TOTAL:=0;

      FOR X:=1 TO 12 DO
        IF X < 5 THEN
            INC(TOTAL, STRTOINT(COPY(CNPJ, X, 1)) * (6 - X))
        ELSE
            INC(TOTAL, STRTOINT(COPY(CNPJ, X, 1)) * (14 - X));

      DG1:=11 - (TOTAL MOD 11);

      IF DG1 > 9 THEN
      BEGIN

        DG1:=0;
        TOTAL:=0;

      END;

      FOR X:=1 TO 13 DO
        IF X < 6 THEN
            INC(TOTAL, STRTOINT(COPY(CNPJ, X, 1)) * (7 - X))
        ELSE
            INC(TOTAL, STRTOINT(COPY(CNPJ, X, 1)) * (15 - X));

      DG2:=11 - (TOTAL MOD 11);

      IF DG2 > 9 THEN
      DG2:=0;

      IF (DG1 = STRTOINT(COPY(CNPJ, 13, 1))) AND (DG2 = STRTOINT(COPY(CNPJ, 14, 1))) THEN
        RET:=TRUE
      ELSE
        RET:=FALSE;

    EXCEPT
      RET:=FALSE;
    END;

  END;

  VERCNPJ:=RET;

END;

FUNCTION DELETE_CAMPO(QUERY:TZQUERY): BOOLEAN;
BEGIN

  IF QUERY.RECORDCOUNT>0 THEN
    IF MSG_API('DESEJA REALMENTE DELETAR?'+#13+'Não É possível recuperar este item apÓs o processo!',IM_DELETE[2], TRUE, IM_DELETE[0]) then
      TRY

        QUERY.DELETE;
        QUERY.APPLYUPDATES;
        MSG_API('DELETADO COM SUCESSO!', IM_OK[2], FALSE, 'Concluír');
        RESULT:=TRUE;

      EXCEPT
        MSG_API('NÃO É POSSÍVEL DELETAR!'+#13+'Aguarde alguns instantes e tente novamente.', IM_EXCEPTION[2], FALSE, 'Entendo');
        RESULT:=FALSE;
      END
    else
      RESULT:=FALSE
  ELSE
  BEGIN
    MSG_API('NÃO EXISTEM REGISTROS PARA DELETAR!', IM_CANCEL[2], FALSE, 'Entendo');
    RESULT:=FALSE;
  END;

END;

FUNCTION FILTRO_REGISTROS(CAMPOS:STRING; QUERY:TZQUERY; TABELA:TZTABLE; FILTROS:STRING):INTEGER;
BEGIN

  WITH QUERY DO
    TRY
      SQL.CLEAR;
      SQL.ADD('SELECT '+CAMPOS+' FROM '+TABELA.TABLENAME+' '+FILTROS);
      OPEN;
    FINALLY
      RESULT := RECORDCOUNT;
    END;

END;

FUNCTION VERIFICA_CAMPOS(LOCAL:TWINCONTROL):BOOLEAN;
VAR
  I:INTEGER;
BEGIN

  for I:= 0 TO LOCAL.controlcount-1 DO
    if MatchStr(UpperCase(LOCAL.controls[I].ClassName), ARRAYCLASSTOARRAYSTRING(LIST_COMPONENTS_EDIT)) then
      if (tsedit(LOCAL.controls[I]).Visible = TRUE) and
         (tsedit(LOCAL.controls[I]).TEXT = NullAsStringValue)then
      BEGIN

        ShowMessage('O Campo "'+tsedit(LOCAL.controls[I]).Name+'" está vazio!');
        RESULT:=FALSE;
        tsedit(LOCAL.controls[I]).SetFocus;
        ABORT;

      END
      else
        RESULT:=TRUE;

END;

FUNCTION TOTALIZA_CAMPO(CAMPO:TFIELD):DOUBLE;
BEGIN

  TRY

    RESULT:=0;
    WITH TZQUERY(CAMPO.DataSet) DO
      IF (CAMPO.ASSTRING <> NULLASSTRINGVALUE) AND (RECORDCOUNT>0) THEN
      BEGIN
        FIRST;

        WHILE NOT EOF DO
        BEGIN
          RESULT:=RESULT+STRTOFLOAT(FORMATFLOAT('###,###,##0.00',CAMPO.VALUE));
          NEXT;
        END;

      END
      ELSE
        NEXT;

  EXCEPT
    MSG_API('OCORREU UM ERRO AO PREPARAR OS VALORES', IM_EXCEPTION[2], FALSE, 'ENTENDO');
  END;

END;

FUNCTION CARREGA_DADOS(FORM: TFORM; SENDER:TOBJECT; QUERY:TZQUERY; DIRECAO:BOOLEAN) :BOOLEAN;
VAR
  VERIFICAR_1_NIVEL,
  VERIFICAR_2_NIVEL,
  VERIFICAR_3_NIVEL,
  NIVEL1:INTEGER;
BEGIN

    FOR VERIFICAR_1_NIVEL := 0 TO FORM.COMPONENTCOUNT -1 DO
      IF FORM.COMPONENTS[VERIFICAR_1_NIVEL].GETPARENTCOMPONENT = SENDER THEN
        FOR VERIFICAR_2_NIVEL := 1 TO FORM.COMPONENTCOUNT -1 DO
          IF FORM.COMPONENTS[VERIFICAR_2_NIVEL].GETPARENTCOMPONENT = FORM.COMPONENTS[VERIFICAR_1_NIVEL] THEN
            FOR VERIFICAR_3_NIVEL := 1 TO FORM.COMPONENTCOUNT -1 DO
              IF FORM.COMPONENTS[VERIFICAR_3_NIVEL].GETPARENTCOMPONENT = FORM.COMPONENTS[VERIFICAR_2_NIVEL] THEN
                  IF (DIRECAO) THEN
                    TRY
                      TRY

                        FOR NIVEL1 := 0 TO SIZE_LIST_COMPONENTS DO
                          IF MatchStr(UpperCase(TCOMPONENT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]).ClassName),  ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) THEN
                          BEGIN

                            WITH QUERY.FIELDBYNAME(TCOMPONENT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]).NAME),
                              TSEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSMASKEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSCOMBOBOX(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSCURRENCYEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSDECIMALSPINEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSSPINEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL])
                            DO
                              ASSTRING  :=  TEXT;

                            IF (QUERY.FIELDBYNAME('DATA') <> NIL)  AND  (QUERY.FIELDBYNAME('HORA') <> NIL) THEN
                            BEGIN
                              QUERY.FIELDBYNAME('DATA').ASSTRING  := DATETOSTR(NOW);
                              QUERY.FIELDBYNAME('HORA').ASSTRING  := TIMETOSTR(NOW);
                            END;

                          END;

                      FINALLY
                        RESULT:=TRUE;
                      END;

                    EXCEPT
                      MSG_API('ERRO AO ENVIAR OS DADOS SELECIONADOS AOS RESPECTIVOS CAMPOS!'+#13+
                      '('+FORM.COMPONENTS[VERIFICAR_3_NIVEL].NAME+')'+#13+'NÃO RELACIONADO.', IM_EXCEPTION[2], FALSE, 'ENTENDO');
                      RESULT:=FALSE;
                      ABORT;
                    END

                  ELSE
                    TRY

                      TRY

                        FOR NIVEL1 := 0 TO SIZE_LIST_COMPONENTS DO
                          IF MatchStr(UpperCase(TCOMPONENT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]).ClassName), ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) THEN
                            WITH QUERY.FIELDBYNAME(TCOMPONENT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]).NAME),                         
                              TSEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSMASKEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSCOMBOBOX(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSCURRENCYEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSDECIMALSPINEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL]),
                              TSSPINEDIT(FORM.COMPONENTS[VERIFICAR_3_NIVEL])
                            DO
                              TEXT :=  ASSTRING ;

                      FINALLY
                        RESULT:=TRUE;
                      END;

                    EXCEPT
                      MSG_API('ERRO AO ENVIAR OS DADOS SELECIONADOS AOS RESPECTIVOS CAMPOS!'+#13+
                      '('+FORM.COMPONENTS[VERIFICAR_3_NIVEL].NAME+')'+#13+'NÃO RELACIONADO.', IM_EXCEPTION[2], FALSE, 'ENTENDO');
                      RESULT:=FALSE;
                      ABORT;
                    END;


END;

FUNCTION CONTREGISTROS(DATASOURCE:TDataSource):INTEGER;
BEGIN

  WITH TZQUERY(DATASOURCE.DataSet) DO
    IF RECORDCOUNT>0 THEN
      RESULT:=RECORDCOUNT
    ELSE
      RESULT:=RECORDCOUNT;

END;

PROCEDURE REDUZCONSUMO;
VAR

  ZERADOR : THANDLE;
BEGIN

  TRY

    ZERADOR := OPENPROCESS(PROCESS_ALL_ACCESS, FALSE, GETCURRENTPROCESSID) ;
    SETPROCESSWORKINGSETSIZE(ZERADOR, $FFFFFFFF, $FFFFFFFF) ;
    CLOSEHANDLE(ZERADOR) ;

  EXCEPT
    MSG_API('ERRO REDUZIR O CONSUMO!', IM_EXCEPTION[2], FALSE, 'ENTENDO');
  END;
    APPLICATION.PROCESSMESSAGES;

END;

FUNCTION DELAY(DWMILLISECONDS: LONGINT;  ACTIVE:BOOLEAN):BOOLEAN;
VAR
  ISTART, ISTOP: DWORD;
BEGIN

  if ACTIVE = TRUE then
  BEGIN
    ISTART := GETTICKCOUNT;
    REPEAT ISTOP := GETTICKCOUNT;
      APPLICATION.PROCESSMESSAGES;
      SLEEP(1);
    UNTIL(ISTOP - ISTART) >= DWMILLISECONDS;
    RESULT:=TRUE;
  END
  ELSE
  BEGIN
    RESULT:=FALSE;
    EXIT;
  END;

END;

PROCEDURE SET_EVENTOS(FORM:TFORM);

  PROCEDURE CARATERISTICAS_EDIT_SHOWHINT(DATA: POINTER; SENDER: TOBJECT);
  BEGIN

    if MatchStr(UpperCase(TObject(sender).ClassName), ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) theN
    begin
      TsEDIT(SENDER).BOUNDLABEL.CAPTION:= TsEDIT(SENDER).name;
      TsEDIT(SENDER).HINT:=TsEDIT(SENDER).BOUNDLABEL.CAPTION;
      TsEDIT(SENDER).SHOWHINT:=TRUE;     
      abort;
    end;

  END;

  PROCEDURE CARATERISTICAS_EDIT_DBCLICK(DATA: POINTER; SENDER: TOBJECT);
  BEGIN

    if MatchStr(UpperCase(TObject(sender).ClassName), ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) theN
    begin
      TsEDIT(SENDER).Clear;
      TsEDIT(SENDER).ClearSelection;
      abort;
    end;

  END;

  PROCEDURE CARATERISTICAS_EDIT_ONCLICK(DATA: POINTER; SENDER: TOBJECT);
  BEGIN

    if MatchStr(UpperCase(TObject(sender).ClassName), ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) theN
    begin
      TsEDIT(SENDER).SelectAll;
      abort;
    end;

  END;

  PROCEDURE CARATERISTICAS_EDIT_ONENTER(DATA: POINTER; SENDER: TOBJECT);
  begin
//   
  END;

  PROCEDURE CARATERISTICAS_EDIT_ONEXIT(DATA: POINTER; SENDER: TOBJECT);
  BEGIN
//  
  END;

VAR
  I, J : INTEGER;
  EVENTO : TNOTIFYEVENT;
BEGIN

  FOR I := 0 TO FORM.COMPONENTCOUNT - 1 DO
    FOR J := 0 TO SIZE_LIST_COMPONENTS DO
      IF MatchStr(UpperCase(FORM.COMPONENTS[I].ClassName), ArrayClassToArrayString(LIST_COMPONENTS_EDIT)) THEN
        WITH tsedit(FORM.COMPONENTS[I])  DO
        BEGIN

          TMETHOD(EVENTO).DATA  := TComponent(FORM);

          TMETHOD(EVENTO).CODE := @CARATERISTICAS_EDIT_ONCLICK;
          ONCLICK      :=  EVENTO ;

          TMETHOD(EVENTO).CODE := @CARATERISTICAS_EDIT_ONENTER;
          ONENTER      :=  EVENTO ;

          TMETHOD(EVENTO).CODE := @CARATERISTICAS_EDIT_ONEXIT;
          ONEXIT       :=  EVENTO ;

          TMETHOD(EVENTO).CODE := @CARATERISTICAS_EDIT_DBCLICK;
          ONDBLCLICK   :=  EVENTO ;

          TMETHOD(EVENTO).CODE := @CARATERISTICAS_EDIT_SHOWHINT;
          ONMOUSEENTER :=  EVENTO ;

        END;

END;

{$ENDREGION}

{$REGION 'PROCEDIMENTOS DE APARÊNCIA'}

PROCEDURE SETCOLORGRID(SENDER:TOBJECT; CORLINHA:TCOLOR; ESTADO: TGRIDDRAWSTATE; NEGRITO:BOOLEAN);
BEGIN

  IF NOT ODD(TZQUERY(TsDBGrid(SENDER).DataSource.DataSet).RECNO) THEN
   IF NOT (GDSELECTED IN ESTADO) THEN
      TSDBGRID(SENDER).CANVAS.BRUSH.COLOR := CORLINHA;

  IF (GDSELECTED IN ESTADO) THEN
  BEGIN

    IF NEGRITO THEN
      TSDBGRID(SENDER).CANVAS.FONT.STYLE:=[FSBOLD];

    TSDBGRID(SENDER).CANVAS.FONT.COLOR:=CLBLACK;

  END;

END;

PROCEDURE DESENHASOMBRA(CANVAS: TCANVAS; PAINEL: TSPANEL; COR: TCOLOR = CLBLACK);
VAR
  R: TRECT;
BEGIN

  R.TOP      := PAINEL.TOP  + 5;
  R.LEFT     := PAINEL.LEFT + 5;
  R.RIGHT    := PAINEL.LEFT + PAINEL.WIDTH  + 5;
  R.BOTTOM   := PAINEL.TOP  + PAINEL.HEIGHT + 5;

  CANVAS.PEN.COLOR   := COR;
  CANVAS.BRUSH.COLOR := COR;
  CANVAS.RECTANGLE(R);

END;

PROCEDURE ALINHACXCENTER(CX:TOBJECT);
BEGIN

  WITH  TWINCONTROL(CX) DO
  BEGIN

    ALIGNWITHMARGINS:=TRUE;
    MARGINS.RIGHT :=  TRUNC(TSPANEL(TSPANEL(CX).PARENT).WIDTH / 3);
    MARGINS.LEFT  :=  TRUNC(TSPANEL(TSPANEL(CX).PARENT).WIDTH / 3);
    MARGINS.TOP:=0;
    MARGINS.BOTTOM:=0;

  END;

END;



PROCEDURE ARREDONDAR(CONTROL: TWINCONTROL; PERCENTUAL:INTEGER) ;
VAR
  R: TRECT;
  RGN: HRGN;
BEGIN

//  WITH CONTROL DO
//  BEGIN
//
//    R := CLIENTRECT;
//    RGN := CREATEROUNDRECTRGN(R.LEFT, R.TOP, R.RIGHT, R.BOTTOM, PERCENTUAL, PERCENTUAL) ;
//    PERFORM(EM_GETRECT, 100, LPARAM(@R)) ;
//    INFLATERECT(R,-1, -1) ;
//    PERFORM(EM_SETRECTNP, -100, LPARAM(@R)) ;
//    SETWINDOWRGN(HANDLE, RGN, TRUE) ;
//    INVALIDATE;
//
//  END;

END;



{$ENDREGION}

{$REGION 'ROTINAS ALPHA'}


function LoginCat:TWinControl;

  PROCEDURE CREATE_SKIN;
  BEGIN

    with  SKIN_CATLOGIN do
    begin

      SKIN_CATLOGIN := TsSkinManager.CREATE(Application.MainForm);
      AnimEffects.BlendOnMoving.Active := True;
      AnimEffects.Minimizing.Time := 50 ;
      ButtonsOptions.OldGlyphsMode := True;
      MenuSupport.IcoLineSkin := 'DIALOG';
      SkinDirectory := 'C:\Componentes\AlphaControls 14.21 D5-D10.3BCB6-BCB10.3 Retail\Skins';
      SkinName := 'Fluent Night';

    end;

  END;

  PROCEDURE CREATE_PNLCAT;
  VAR
    BTCAT:TSSPEEDBUTTON;
    BTLOGIN:TSROUNDBTN;
    EDPASS:  TSCOMBOEDIT;
    EDTUSER:TSEDIT;
    EVENTO : TNOTIFYEVENT;
  BEGIN

    with PNL_CATLOGIN do
    begin

      TRY

        PNL_CATLOGIN := TSPANEL.CREATE(Application.MainForm);
        PARENT  := Application.MainForm;

        Visible:=False;
        Width := 235;
        Height := 279;
        Margins.Left := 8;
        Margins.Top := 5;
        Margins.Right := 11;
        Margins.Bottom := 13;
        SkinData.SkinManager:=SKIN_CATLOGIN;
        SkinData.CustomColor := True;
        SkinData.CustomFont := True;
        SkinData.SkinSection := 'CHECKBOX';
        Align := alCustom;
        BevelOuter := bvNone;
        Color := 2826012;
        Font.Charset := DEFAULT_CHARSET;
        Font.Color := clWhite;
        Font.Height := -11;
        Font.Name := 'Tahoma';
        Font.Style := [];
        ParentBackground := False;
        ParentFont := False;
//        NAME:= 'pnlCat';
        Caption:='';

      FINALLY

        WITH btCat DO
        begin

          btCat := TsSpeedButton.CREATE(PNL_CATLOGIN);
          PARENT  := PNL_CATLOGIN;

          AlignWithMargins := True;
          Left := 0;
          Top := 5;
          Width := 235;
          Height := 78;
          Margins.Left := 0 ;
          Margins.Top := 5 ;
          Margins.Right := 0;
          Margins.Bottom := 0;
          Align := alTop ;
          Caption := 'Olá, identiique-se para continuar..';
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clSilver;
          Font.Height := -12;
          Font.Name := 'Calibri' ;
          Font.Style := [];
          Layout := blGlyphTop ;
          ParentFont := False;
          Spacing := 0;
          SkinData.SkinManager:=SKIN_CATLOGIN;
          SkinData.CustomFont := True ;
          SkinData.SkinSection := 'TRANSPARENT' ;
          ShowCaption := False;
//          Name:='btCat';

        end;

        with edtUser do
        begin

          edtUser := TsEdit.CREATE(PNL_CATLOGIN);
          PARENT  := PNL_CATLOGIN;

          AlignWithMargins := True;
          Left := 30;
          Top := 108;
          Width := 175 ;
          Height := 28 ;
          Margins.Left := 30 ;
          Margins.Top := 25;
          Margins.Right := 30;
          Margins.Bottom := 20;
          Align := alTop ;
          BevelInner := bvNone ;
          BevelOuter := bvNone;
          CharCase := ecUpperCase;
          Color := 2826012;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := 16765864;
          Font.Height := 20 ;
          Font.Name := 'Calibri' ;
          Font.Style := [] ;
          HideSelection := False;
          ParentFont := False;
          TabOrder := 0  ;
          SkinData.SkinManager:=SKIN_CATLOGIN;
          SkinData.CustomColor := True ;
          SkinData.CustomFont := True ;
          SkinData.SkinSection := 'EDIT';
    //        BoundLabel.Active := True ;
          BoundLabel.AllowClick := True;
          BoundLabel.UseSkinColor := False ;
          BoundLabel.Indent := 3;
          BoundLabel.Offset := 3 ;
          BoundLabel.Caption := 'Usuário';
          BoundLabel.Font.Charset := DEFAULT_CHARSET;
          BoundLabel.Font.Color := clWhite;
          BoundLabel.Font.Height := -11;
          BoundLabel.Font.Name := 'Calibri';
          BoundLabel.Font.Style := [];
          BoundLabel.ParentFont := False;
//          Name:= 'edtUser';
        end;

        with edPass do
        begin

          edPass := TsComboEdit.CREATE(PNL_CATLOGIN);
          PARENT  := PNL_CATLOGIN;

          AlignWithMargins := True;
          Left := 30 ;
          Top := 159    ;
          Width := 135  ;
          Height := 28 ;
          Margins.Left := 30   ;
          Margins.Right := 70  ;
          Margins.Bottom := 20 ;
          Align := alTop  ;
          BevelInner := bvNone ;
          BevelOuter := bvNone ;
          CharCase := ecUpperCase ;
          Color := 2826012 ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := 16183278;
          Font.Height := 20;
          Font.Name := 'Calibri';
          Font.Style := [] ;
          ParentFont := False ;
          PasswordChar := '*';
          TabOrder := 2  ;
          CheckOnExit := True  ;
    //        BoundLabel.Active := True ;
          BoundLabel.Indent := 3 ;
          BoundLabel.Offset := 3 ;
          BoundLabel.Caption := 'Senha';
          BoundLabel.Font.Charset := DEFAULT_CHARSET ;
          BoundLabel.Font.Color := clWindowText ;
          BoundLabel.Font.Height := -11 ;
          BoundLabel.Font.Name := 'Calibri';
          BoundLabel.Font.Style := [];
          BoundLabel.ParentFont := False ;
          VerticalAlignment := taVerticalCenter;

          SkinData.SkinManager:=SKIN_CATLOGIN;
          SkinData.CustomColor := True ;
          SkinData.CustomFont := True ;
          SkinData.SkinSection := 'EDIT';
//          NAME:= 'edPass';

        end;

        WITH btLogin DO
        BEGIN

          btLogin := TsRoundBtn.CREATE(PNL_CATLOGIN);
          PARENT  := PNL_CATLOGIN;

          AlignWithMargins := True;
          Width := 229 ;
          Height := 41;
          Cursor := crHandPoint ;
          Margins.Bottom := 25;
          Align := alBottom;
          UseEllipsis := False ;
          SkinData.SkinManager:=SKIN_CATLOGIN;
          SkinData.SkinSection := 'CHECKBOX';
          ShowCaption := False;
          PaintOptions.BevelWidth := 0 ;
          PaintOptions.BorderWidth := 0;
          PaintOptions.DataActive.Color1 := clNone;
          PaintOptions.DataActive.Color2 := clNone;
          PaintOptions.DataActive.BorderColor := clNone;
          PaintOptions.DataNormal.Color1 := clNone;
          PaintOptions.DataNormal.Color2 := clNone;
          PaintOptions.DataNormal.BorderColor := clNone ;
          PaintOptions.DataPressed.Color1 := clNone ;
          PaintOptions.DataPressed.Color2 := clNone ;
          PaintOptions.DataPressed.BorderColor := clNone ;
//          Name:='btLogin';

        end;

      END;

    end;

  END;

begin

  if assigned(Application.MainForm.FindComponent('skin')) then
  BEGIN
    FreeAndNil(SKIN_CATLOGIN);
    CREATE_SKIN;
  END
  else
    CREATE_SKIN;

  if assigned(Application.MainForm.FindComponent('pnlCat')) then
  BEGIN
    FreeAndNil(PNL_CATLOGIN);
    CREATE_PNLCAT;
  END
  else
    CREATE_PNLCAT;

  RESULT:=PNL_CATLOGIN;

end;



FUNCTION ENVIAREMAIL(ASSUNTO:STRING; DESTINO:STRING; MSG_TXT:WideString; ANEXO:STRING):BOOLEAN;

  FUNCTION CORPO:WIDESTRING;
  var
   conteudo: TStringList;
  begin

    if ExtractFileExt(MSG_TXT)  = '.txt' then
      try

        conteudo := nil;

        try
          conteudo := TStringList.Create;
          conteudo.LoadFromFile(MSG_TXT);
        finally

          Result:=conteudo.Text;

          if Assigned(conteudo) then
            FreeAndNil(conteudo);

        end;

      except
        RESULT:= MSG_TXT;
        ShowMessage('Não foi aberto o link porem carregado');
      end
    else
      RESULT:= MSG_TXT;

  END;

  FUNCTION RODAPE:WIDESTRING;
  BEGIN
    RESULT := #13#13#13#13+'NOSSO SITE - '+INFO_LIST[12]
              +#13+'FACEBOOK - '+INFO_LIST[7]
              +#13+'EMAIL COMERCIAL - '+INFO_LIST[5]
              +#13+'EMAIL DE SUPORTE E DUVIDAS - '+INFO_LIST[6]
              +#13+'TWITTER - '+INFO_LIST[8];
  END;


VAR
  // VARIÁVEIS E OBJETOS NECESSÁRIOS PARA O ENVIO
  IDSSLIOHANDLERSOCKET: TIDSSLIOHANDLERSOCKETOPENSSL;
  IDSMTP: TIDSMTP;
  IDMESSAGE: TIDMESSAGE;
  IDIPWATCH:TIDIPWATCH;
  IDANTFREEZE:TIDANTIFREEZE;

BEGIN

  IF (NOT FILEEXISTS(GetCurrentDir +'\SSLEAY32.DLL')) OR
     (NOT FILEEXISTS(GetCurrentDir +'\LIBEAY32.DLL')) THEN
    MSG_API('ERRO ESTÃO FALTANDO OS COMPONENTES NECESSÁRIOS PARA CONEXÃO!', IM_EXCEPTION[2], FALSE, 'ENTENDO')
  ELSE
  BEGIN
    Result:=FALSE;
    // INSTANCIAÇÃO DOS OBJETOS
    IDANTFREEZE := TIDANTIFREEZE.CREATE(TFORM(APPLICATION.MAINFORM));
    IDSSLIOHANDLERSOCKET := TIDSSLIOHANDLERSOCKETOPENSSL.CREATE(TFORM(APPLICATION.MAINFORM));
    IDSMTP := TIDSMTP.CREATE(TFORM(APPLICATION.MAINFORM));
    IDMESSAGE := TIDMESSAGE.CREATE(TFORM(APPLICATION.MAINFORM));
    IDIPWATCH := TIDIPWATCH.CREATE(TFORM(APPLICATION.MAINFORM));

    TRY

      // CONFIGURAÇÃO DO PROTOCOLO SSL (TIDSSLIOHANDLERSOCKETOPENSSL)
      IDSSLIOHANDLERSOCKET.SSLOPTIONS.METHOD := SSLVSSLV23;
      IDSSLIOHANDLERSOCKET.SSLOPTIONS.MODE := SSLMCLIENT;
      // CONFIGURAÇÃO DO SERVIDOR SMTP (TIDSMTP)
      IDSMTP.IOHANDLER := IDSSLIOHANDLERSOCKET;
      IDSMTP.USETLS := UTUSEIMPLICITTLS;
      IDSMTP.AUTHTYPE := SATDEFAULT;
      IDSMTP.PORT := 465;
      IDSMTP.HOST := 'SMTP.GMAIL.COM';
      IDSMTP.USERNAME :=INFO_LIST[9];
      IDSMTP.PASSWORD := INFO_LIST[10];

      // CONFIGURAÇÃO DA MENSAGEM (TIDMESSAGE)
      IDMESSAGE.FROM.ADDRESS := INFO_LIST[9];                    //EMAIL EMISSOR
      IDMESSAGE.FROM.NAME := INFO_LIST[0]+' - '+INFO_LIST[4];    //NOME DO EMISSOR
      IDMESSAGE.REPLYTO.EMAILADDRESSES := IDMESSAGE.FROM.ADDRESS;
      IDMESSAGE.ORGANIZATION:=INFO_LIST[0];                      //ORGANIZAÇÃO-EMPRESA(OPCIONAL)
      IDMESSAGE.RECIPIENTS.ADD.TEXT := DESTINO;

      IDMESSAGE.SUBJECT := INFO_LIST[0]+' - '+ASSUNTO;
      IDMESSAGE.BODY.TEXT:=CORPO+RODAPE;

      if FileExists(ANEXO) then
        TIdAttachmentFile.Create(IdMessage.MessageParts, ANEXO);

      IDMESSAGE.ENCODING := MEMIME;

      TRY  // CONEXÃO E AUTENTICAÇÃO

        IDSMTP.CONNECT;
        IDSMTP.AUTHENTICATE;
        TRY   // ENVIO DA MENSAGEM

          IDSMTP.SEND(IDMESSAGE);
          ShowMessage('EMAIL ENVIADO COM SUCESSO PARA:'+#13+DESTINO);
          IDSMTP.DISCONNECT;  // DESCONECTA DO SERVIDOR
          UNLOADOPENSSLLIBRARY;  // LIBERAÇÃO DA DLL

        EXCEPT

          ON E:EXCEPTION DO
            ShowMessage('ERRO AO ENVIAR SOLICITAÇÃO, VERIFIQUE SUA CONEXÃO DE INTERNET OU CONTATE O APOIO AO CONSUMIDOR.');

        END;

      EXCEPT

        ON E:EXCEPTION DO
          BEGIN
            ShowMessage('ERRO NA CONEXÃO E/OU AUTENTICAÇÃO!');
            IDSMTP.DISCONNECT;
          END;

      END;

    EXCEPT
      ShowMessage('ERRO AO PREPARAR OS DADOS PARA O ENVIO!');
    END;

    // LIBERAÇÃO DOS OBJETOS DA MEMÓRIA
    FREEANDNIL(IDMESSAGE);
    FREEANDNIL(IDSSLIOHANDLERSOCKET);
    FREEANDNIL(IDSMTP);
    FREEANDNIL(IDANTFREEZE);

    Result:=TRUE;

  END;

END;

{$ENDREGION}



END.