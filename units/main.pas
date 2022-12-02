unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  SynEdit, SynHighlighterBat, Clipbrd, Tools, SynEditTypes, SynCompletion,
  lclintf, appabout, edfonts, inifiles, Types, LCLType, samples;

type

  { Tfrmmain }

  Tfrmmain = class(TForm)
    FindDialog: TFindDialog;
    imgIcons: TImageList;
    mnuSamples: TMenuItem;
    MnuOPB1: TMenuItem;
    MnuOPB2: TMenuItem;
    MnuOPB3: TMenuItem;
    mnuOp5: TMenuItem;
    mnuOpL1: TMenuItem;
    mnuOpL2: TMenuItem;
    mnuOpL3: TMenuItem;
    MnuOp4: TMenuItem;
    MnuOpR6: TMenuItem;
    MenuItem3: TMenuItem;
    MnuOpR1: TMenuItem;
    MnuOpR2: TMenuItem;
    MnuOpR3: TMenuItem;
    MnuOpR4: TMenuItem;
    MnuOpR5: TMenuItem;
    mnuOp3: TMenuItem;
    mnuOpA1: TMenuItem;
    mnuOpA2: TMenuItem;
    mnuOpA3: TMenuItem;
    mnuOpA4: TMenuItem;
    mnuOpA5: TMenuItem;
    mnuOp2: TMenuItem;
    MnuOpA: TMenuItem;
    MnuOpB: TMenuItem;
    MnuOpC: TMenuItem;
    mnuOp1: TMenuItem;
    mnuBatOps: TMenuItem;
    Separator23: TMenuItem;
    mnuNewLabel: TMenuItem;
    mnuGotoLabel: TMenuItem;
    Separator22: TMenuItem;
    SetVarExp: TMenuItem;
    Separator21: TMenuItem;
    mnuHelp2: TMenuItem;
    Separator20: TMenuItem;
    mnuHelp1: TMenuItem;
    mnuComment: TMenuItem;
    Separator19: TMenuItem;
    mnuShowVar: TMenuItem;
    mnuSetVar: TMenuItem;
    mnuShowMsg: TMenuItem;
    Separator10: TMenuItem;
    mnuEchoOn: TMenuItem;
    mnuEchoOff: TMenuItem;
    mnuEnv: TMenuItem;
    mnuRun: TMenuItem;
    mnuDebug: TMenuItem;
    Separator18: TMenuItem;
    mnuLoadLst: TMenuItem;
    mnuSaveLst: TMenuItem;
    mnuMain: TMainMenu;
    MenuItem1: TMenuItem;
    chkStatuabar: TMenuItem;
    Separator17: TMenuItem;
    mnuTitleCase: TMenuItem;
    mnuUpcase: TMenuItem;
    mnuLowcase: TMenuItem;
    nuSelection: TMenuItem;
    mnuLongDate: TMenuItem;
    mnuReload: TMenuItem;
    mnuDelLine: TMenuItem;
    mnuDelSelection: TMenuItem;
    mnuFontBk: TMenuItem;
    Separator16: TMenuItem;
    mnuOpenPath: TMenuItem;
    mnuSave1: TMenuItem;
    mnuClose1: TMenuItem;
    mnuOpen1: TMenuItem;
    mnuSaveAs1: TMenuItem;
    Separator15: TMenuItem;
    Separator14: TMenuItem;
    mnuNew1: TMenuItem;
    mnuTabs: TPopupMenu;
    Separator13: TMenuItem;
    mnuFindGoogle1: TMenuItem;
    mnuInsertFile1: TMenuItem;
    mnuSelectAll1: TMenuItem;
    Separator12: TMenuItem;
    MenuItem2: TMenuItem;
    mnuUndo1: TMenuItem;
    mnuRedo1: TMenuItem;
    mnuCut1: TMenuItem;
    mnyCopy1: TMenuItem;
    mnuPaste1: TMenuItem;
    Separator11: TMenuItem;
    mnuAbout: TMenuItem;
    mnuHelp: TMenuItem;
    mnuEditor: TPopupMenu;
    Separator9: TMenuItem;
    mnuInsertFile: TMenuItem;
    mnuShowSpecialChars: TMenuItem;
    mnuAutoIndent: TMenuItem;
    Separator8: TMenuItem;
    mnuNewWindow: TMenuItem;
    mnuOpenGoogle: TMenuItem;
    mnuViewGutter: TMenuItem;
    mnuDateTime1: TMenuItem;
    mnuView: TMenuItem;
    mnuDate: TMenuItem;
    mnuTime: TMenuItem;
    mnuCustom: TMenuItem;
    Separator7: TMenuItem;
    mnuDateTime: TMenuItem;
    mnuFindPrevious: TMenuItem;
    mnuFindNext: TMenuItem;
    mnuReplace: TMenuItem;
    mnuReopen: TMenuItem;
    mnuPaste: TMenuItem;
    mnuDelete: TMenuItem;
    mnuFind: TMenuItem;
    mnuGotoLine: TMenuItem;
    mnuSelectAll: TMenuItem;
    Page1: TPageControl;
    ReplaceDialog: TReplaceDialog;
    Separator6: TMenuItem;
    Separator5: TMenuItem;
    mnuEdit: TMenuItem;
    mnuUndo: TMenuItem;
    mnuRedo: TMenuItem;
    mnuCut: TMenuItem;
    mnuCutAppend: TMenuItem;
    mnuCopy: TMenuItem;
    mnuCopyAppend: TMenuItem;
    Separator4: TMenuItem;
    mnuClose: TMenuItem;
    mnuCloseAll: TMenuItem;
    Separator3: TMenuItem;
    mnuNew: TMenuItem;
    mnuOpen: TMenuItem;
    mnuSave: TMenuItem;
    mnuSaveAs: TMenuItem;
    mnuSaveAll: TMenuItem;
    MenuItem7: TMenuItem;
    Separator2: TMenuItem;
    Separator1: TMenuItem;
    StatusBar1: TStatusBar;
    SynBat: TSynBatSyn;
    ComSynBat: TSynCompletion;
    procedure chkStatuabarClick(Sender: TObject);
    procedure ComSynBatCodeCompletion(var Value: string; SourceValue: string;
      var SourceStart, SourceEnd: TPoint; KeyChar: TUTF8Char; Shift: TShiftState);
    procedure FindDialogFind(Sender: TObject);
    procedure FindDialogShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    procedure mnuClose1Click(Sender: TObject);
    procedure mnuCommentClick(Sender: TObject);
    procedure mnuCut1Click(Sender: TObject);
    procedure mnuDelLineClick(Sender: TObject);
    procedure mnuDelSelectionClick(Sender: TObject);
    procedure mnuEchoOffClick(Sender: TObject);
    procedure mnuEchoOnClick(Sender: TObject);
    procedure mnuFindGoogle1Click(Sender: TObject);
    procedure mnuFontBkClick(Sender: TObject);
    procedure mnuGotoLabelClick(Sender: TObject);
    procedure mnuHelp1Click(Sender: TObject);
    procedure mnuHelp2Click(Sender: TObject);
    procedure mnuInsertFile1Click(Sender: TObject);
    procedure mnuLoadLstClick(Sender: TObject);
    procedure mnuLongDateClick(Sender: TObject);
    procedure mnuLowcaseClick(Sender: TObject);
    procedure mnuNew1Click(Sender: TObject);
    procedure mnuNewLabelClick(Sender: TObject);
    procedure mnuOpA1Click(Sender: TObject);
    procedure mnuOpA2Click(Sender: TObject);
    procedure mnuOpA3Click(Sender: TObject);
    procedure mnuOpA4Click(Sender: TObject);
    procedure mnuOpA5Click(Sender: TObject);
    procedure MnuOpAClick(Sender: TObject);
    procedure MnuOPB1Click(Sender: TObject);
    procedure MnuOPB2Click(Sender: TObject);
    procedure MnuOPB3Click(Sender: TObject);
    procedure MnuOpBClick(Sender: TObject);
    procedure MnuOpCClick(Sender: TObject);
    procedure mnuOpen1Click(Sender: TObject);
    procedure mnuOpenPathClick(Sender: TObject);
    procedure mnuOpL1Click(Sender: TObject);
    procedure mnuOpL2Click(Sender: TObject);
    procedure mnuOpL3Click(Sender: TObject);
    procedure MnuOpR1Click(Sender: TObject);
    procedure MnuOpR2Click(Sender: TObject);
    procedure MnuOpR3Click(Sender: TObject);
    procedure MnuOpR4Click(Sender: TObject);
    procedure MnuOpR5Click(Sender: TObject);
    procedure MnuOpR6Click(Sender: TObject);
    procedure mnuPaste1Click(Sender: TObject);
    procedure mnuRedo1Click(Sender: TObject);
    procedure mnuReloadClick(Sender: TObject);
    procedure mnuRunClick(Sender: TObject);
    procedure mnuSamplesClick(Sender: TObject);
    procedure mnuSave1Click(Sender: TObject);
    procedure mnuSaveAs1Click(Sender: TObject);
    procedure mnuSaveLstClick(Sender: TObject);
    procedure mnuSelectAll1Click(Sender: TObject);
    procedure mnuSetVarClick(Sender: TObject);
    procedure mnuShowMsgClick(Sender: TObject);
    procedure mnuShowVarClick(Sender: TObject);
    procedure mnuTitleCaseClick(Sender: TObject);
    procedure mnuUndoClick(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuAutoIndentClick(Sender: TObject);
    procedure mnuCloseAllClick(Sender: TObject);
    procedure mnuCloseClick(Sender: TObject);
    procedure mnuCopyAppendClick(Sender: TObject);
    procedure mnuCopyClick(Sender: TObject);
    procedure mnuCustomClick(Sender: TObject);
    procedure mnuCutAppendClick(Sender: TObject);
    procedure mnuCutClick(Sender: TObject);
    procedure mnuDateClick(Sender: TObject);
    procedure mnuDateTime1Click(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure mnuFindClick(Sender: TObject);
    procedure mnuFindNextClick(Sender: TObject);
    procedure mnuFindPreviousClick(Sender: TObject);
    procedure mnuGotoLineClick(Sender: TObject);
    procedure mnuInsertFileClick(Sender: TObject);
    procedure mnuNewClick(Sender: TObject);
    procedure mnuNewWindowClick(Sender: TObject);
    procedure mnuOpenClick(Sender: TObject);
    procedure mnuOpenGoogleClick(Sender: TObject);
    procedure mnuPasteClick(Sender: TObject);
    procedure mnuRedoClick(Sender: TObject);
    procedure mnuReopenClick(Sender: TObject);
    procedure mnuReplaceClick(Sender: TObject);
    procedure mnuSaveAllClick(Sender: TObject);
    procedure mnuSaveAsClick(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
    procedure mnuSelectAllClick(Sender: TObject);
    procedure mnuShowSpecialCharsClick(Sender: TObject);
    procedure mnuTimeClick(Sender: TObject);
    procedure mnuUndo1Click(Sender: TObject);
    procedure mnuUpcaseClick(Sender: TObject);
    procedure mnuViewGutterClick(Sender: TObject);
    procedure mnuViewInBrowserClick(Sender: TObject);
    procedure mnyCopy1Click(Sender: TObject);
    procedure Page1Change(Sender: TObject);
    procedure Page1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure SetVarExpClick(Sender: TObject);
    procedure ShowVarExpClick(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
    procedure DoFind(Sender: TObject);
    procedure DoReplace(Sender: TObject);

  private
    function GetSynEdit: TSynEdit;
    procedure NewTab(OpenFile: boolean; Filename: string = '');
    function GetOpenFiles(Title, Filter: string): TStringList;
    function GetOpenFile(Title, Filter: string): string;
    function GetSaveFilename(Title, Filter: string): string;

    procedure SynEdit_Change(Sender: TObject);
    procedure BuildRecentMenu;
    procedure BuildEnvMenu;
    procedure AddToRecentMenu(Filename: string);
    function IsInRecentList(Filename: string): boolean;
    function IsDocOpen(Filename: string): boolean;

    procedure RecentMenu_Click(Sender: TObject);
    procedure RecentMenuClear_Click(Sender: TObject);
    procedure EnvMenu_Click(Sender: TObject);

    procedure SynOnStatusChange(Sender: TObject; Changes: TSynStatusChanges);
    procedure ResetStatusBar;
    procedure UpdateEditorUI;

    procedure DoBatchOperatrs(OP: string);


    procedure SaveCfg;
    procedure LoadCfg;

  public

  end;

const
  dlgFilter = 'Windows Batch Files(*.bat)|*.bat|Text Files(*.txt)|*.txt|All Files(*.*)|*.*';

const
  scFile = scReadOnly;
  SynChange = [scCaretX, scCaretY, scFile];

var
  frmmain: Tfrmmain;
  DocCounter: integer;
  FindText: string;
  ReplaceText: string;
  FindOptions: TSynSearchOptions;
  ReplaceOptions: TSynSearchOptions;

implementation

{$R *.lfm}

{ Tfrmmain }

procedure Tfrmmain.DoBatchOperatrs(OP: string);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := OP;
  end;
end;

procedure Tfrmmain.SaveCfg;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(AppPath + 'config.ini');
  ini.WriteString('main', 'font-name', tools.EdFontName);
  ini.WriteInteger('main', 'Font-size', Tools.EdFontSize);
  ini.WriteString('main', 'Color', ColorToRgbStr(Tools.EdBk));
end;

procedure Tfrmmain.LoadCfg;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(AppPath + 'config.ini');
  Tools.EdFontName := ini.ReadString('main', 'font-name', 'Courier New');
  Tools.EdFontSize := ini.ReadInteger('main', 'font-size', 10);
  Tools.EdBk := RgbStrToColor(ini.ReadString('main', 'color', '255,255,255'));
end;

procedure tfrmmain.UpdateEditorUI;
var
  X: integer;
  ed: TSynEdit;
begin
  for X := 0 to Page1.PageCount - 1 do
  begin
    ed := Page1.Pages[X].Controls[0] as TSynEdit;
    ed.Font.Name := Tools.EdFontName;
    ed.Font.Size := Tools.EdFontSize;
    ed.Color := Tools.EdBk;
  end;

end;

procedure Tfrmmain.ResetStatusBar;
begin
  Statusbar1.Panels[0].Text := '';
  Statusbar1.Panels[1].Text := '';
  Statusbar1.Panels[2].Text := '';
end;

procedure Tfrmmain.SynOnStatusChange(Sender: TObject; Changes: TSynStatusChanges);
var
  X: integer;
begin

  with (Sender as TSynEdit) do
  begin
    if (scCaretX in Changes) or (scCaretY in Changes) then
    begin
      StatusBar1.Panels[0].Text := ' ln: ' + IntToStr(CaretY) + ' ';
      StatusBar1.Panels[1].Text := ' col: ' + IntToStr(CaretX) + ' ';
    end;

    if (scFile in Changes) then
    begin
      if FileExists(Page1.ActivePage.Hint) then
      begin
        StatusBar1.Panels[2].Text := Page1.ActivePage.Hint;
      end
      else
      begin
        StatusBar1.Panels[2].Text := '';
      end;
    end;

    for X := 0 to StatusBar1.Panels.Count - 1 do
      StatusBar1.Panels[X].Width :=
        StatusBar1.Canvas.TextWidth(StatusBar1.Panels[X].Text) + 8;
  end;
end;


procedure Tfrmmain.DoFind(Sender: TObject);
var
  fDlg: TFindDialog;
begin
  if assigned(Page1.ActivePage) then
  begin
    fDlg := (Sender as TFindDialog);
    begin
      fDlg := (Sender as TFindDialog);
      ReplaceOptions := [];
      if not (frDown in fDlg.Options) then
        ReplaceOptions := ReplaceOptions + [ssoBackWards];
      if frMatchCase in fDlg.Options then
        ReplaceOptions := ReplaceOptions + [ssoMatchCase];
      if frWholeWord in fDlg.Options then
        ReplaceOptions := ReplaceOptions + [ssoWholeWord];
      FindText := fDlg.FindText;
      if GetSynEdit.SearchReplace(FindText, '', ReplaceOptions) = 0 then
      begin
        MessageDlg(Text, 'String Not Found "' + FindText + '"',
          mtInformation, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tfrmmain.DoReplace(Sender: TObject);
var
  rDlg: TReplaceDialog;
begin
  if assigned(Page1.ActivePage) then
  begin
    rDlg := (Sender as TReplaceDialog);
    FindOptions := [];
    if not (frDown in rDlg.Options) then FindOptions := FindOptions + [ssoBackWards];
    if frMatchCase in rDlg.Options then FindOptions := FindOptions + [ssoMatchCase];
    if frWholeWord in rDlg.Options then FindOptions := FindOptions + [ssoWholeWord];
    if frReplace in rDlg.Options then ReplaceOptions := ReplaceOptions + [ssoReplace];
    if frReplaceAll in rDlg.Options then
      ReplaceOptions := ReplaceOptions + [ssoReplaceAll];
    if frFindNext in rDlg.Options then
      ReplaceOptions := ReplaceOptions - [ssoReplace, ssoReplaceAll];
    if GetSynEdit.SelAvail then ReplaceOptions := ReplaceOptions + [ssoSelectedOnly];

    FindText := rDlg.FindText;
    ReplaceText := rDlg.ReplaceText;

    if GetSynEdit.SearchReplace(FindText, ReplaceText, ReplaceOptions) = 0 then
      MessageDlg(Text, 'String Not Found "' + FindText + '"', mtInformation, [mbOK], 0)
    else
    if (ssoReplace in ReplaceOptions) and not (ssoReplaceAll in ReplaceOptions) then
    begin
      ReplaceOptions := ReplaceOptions - [ssoReplace];
      GetSynEdit.SearchReplace(FindText, '', ReplaceOptions);
    end;
  end;
end;

procedure Tfrmmain.RecentMenuClear_Click(Sender: TObject);
var
  mr: integer;
  sl: TStringList;
begin
  if mnuReopen.Count > 2 then
  begin
    mr := MessageDlg(Text, 'Are you sure you want to clear the recent files list?',
      mtInformation, [mbYes, mbNo, mbCancel], 0);

    if mr = mrYes then
    begin
      sl := TStringList.Create;
      sl.SaveToFile(RecentPath);
      BuildRecentMenu;
    end;
  end;
end;

function Tfrmmain.IsDocOpen(Filename: string): boolean;
var
  X: integer;
  Flag: boolean;
begin
  Flag := False;

  for X := 0 to Page1.PageCount - 1 do
  begin
    if lowercase(Page1.Pages[X].Hint) = lowercase(Filename) then
    begin
      Flag := True;
      Break;
    end;
  end;

  Result := Flag;
end;

procedure Tfrmmain.RecentMenu_Click(Sender: TObject);
var
  mi: TMenuItem;
begin
  mi := TMenuItem(Sender);

  if not IsDocOpen(mi.Caption) then
  begin

    if not FileExists(mi.Caption) then
    begin
      MessageDlg(Text, 'The File Was Not Found' + sLineBreak + mi.Caption,
        mtInformation, [mbOK], 0);
    end
    else
    begin
      NewTab(True, mi.Caption);
    end;
  end;
end;

function Tfrmmain.IsInRecentList(Filename: string): boolean;
var
  sl: TStringList;
  X: integer;
  Flag: boolean;
begin

  Flag := False;

  if FileExists(RecentPath) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(RecentPath);

    for X := 0 to sl.Count - 1 do
    begin
      if lowercase(sl[X]) = Lowercase(Filename) then
      begin
        Flag := True;
        Break;
      end;
    end;
  end;
  FreeAndNil(sl);
  Result := Flag;
end;

procedure Tfrmmain.AddToRecentMenu(Filename: string);
var
  sl: TStringList;
begin
  if FileExists(RecentPath) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(RecentPath);
    if not IsInRecentList(Filename) then
    begin
      sl.Add(Filename);
      sl.SaveToFile(RecentPath);
    end;
    FreeAndNil(sl);
  end;
end;

procedure TFrmmain.EnvMenu_Click(Sender: TObject);
var
  mi: TMenuItem;
begin
  mi := TMenuItem(Sender) as TMenuItem;

  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := mi.Caption;
  end;
  FreeAndNil(mi);
end;

procedure Tfrmmain.BuildRecentMenu;
var
  mi: TMenuItem;
  sl: TStringList;
  X: integer;
  lzFile: string;
begin

  mnuReopen.Clear;

  if FileExists(RecentPath) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(RecentPath);

    for X := 0 to sl.Count - 1 do
    begin
      lzFile := sl[X];

      if lzFile <> '' then
      begin
        mi := TMenuItem.Create(mnuReopen);
        mi.Caption := lzFile;
        mi.OnClick := @RecentMenu_Click;
        mnuReopen.Add(mi);
      end;
    end;
  end;

  //Add final items for clear recent list
  mi := TMenuItem.Create(mnuReopen);
  mi.Caption := '-';
  mnureopen.Add(mi);
  mi := TMenuItem.Create(mnuReopen);
  mi.Caption := 'Clear';
  mi.OnClick := @RecentMenuClear_Click;
  mnureopen.Add(mi);
end;

procedure Tfrmmain.BuildEnvMenu;
var
  iCount, X, iPos: integer;
  mi: TMenuItem;
  vName: string;
begin

  iCount := GetEnvironmentVariableCount;

  for X := 0 to iCount - 1 do
  begin
    vName := GetEnvironmentString(X);
    iPos := Pos('=', vName);
    vName := Trim(LeftStr(vName, iPos - 1));
    if Length(vName) > 0 then
    begin
      vName := '%' + vName + '%';

      mi := TMenuItem.Create(mnuEnv);
      mi.Caption := vName;
      mi.OnClick := @EnvMenu_Click;
      mnuEnv.Add(mi);
    end;

  end;
  FreeAndNil(mi);

end;

procedure Tfrmmain.SynEdit_Change(Sender: TObject);
var
  sCaption: string;
begin
  sCaption := Page1.ActivePage.Caption;

  if RightStr(sCaption, 2) <> ' *' then
  begin
    sCaption := sCaption + ' *';
    Page1.ActivePage.Caption := sCaption;
  end;
end;

function Tfrmmain.GetSynEdit: TSynEdit;
begin
  Result := Page1.ActivePage.Controls[0] as TSynEdit;
end;

function Tfrmmain.GetSaveFilename(Title, Filter: string): string;
var
  sd: TSaveDialog;
  lzFile: string;
begin
  sd := TSaveDialog.Create(self);
  sd.Title := Title;
  sd.Filter := Filter;
  sd.DefaultExt := 'bat';
  if sd.Execute then
  begin
    lzFile := sd.FileName;
  end;
  sd.Destroy;
  Result := lzFile;
end;

function TFrmmain.GetOpenFiles(Title, Filter: string): TStringList;
var
  sl: TStringList;
  od: TOpenDialog;
begin
  sl := TStringList.Create;
  od := TOpenDialog.Create(self);
  od.Title := Title;
  od.Filter := Filter;
  od.Options := [ofAllowMultiSelect];
  if od.Execute then
  begin
    sl.Assign(od.Files);
  end;
  od.Destroy;
  Result := sl;
end;

function Tfrmmain.GetOpenFile(Title, Filter: string): string;
var
  lzFile: string;
  od: TOpenDialog;
begin
  lzFile := '';

  od := TOpenDialog.Create(self);
  od.Title := Title;
  od.Filter := Filter;
  if od.Execute then
  begin
    lzFile := od.FileName;
  end;
  od.Destroy;
  Result := lzFile;
end;

procedure Tfrmmain.NewTab(OpenFile: boolean; Filename: string = '');
var
  ts: TTabSheet;
  lzFile: string;
  EditBox: TSynEdit;
begin

  Inc(DocCounter);

  ts := TTabSheet.Create(Page1);
  ts.Parent := Page1;
  ts.ShowHint := False;
  ts.ImageIndex := 0;
  //Create edit box
  EditBox := TSynEdit.Create(ts);
  EditBox.WantTabs := True;
  EditBox.Highlighter := SynBat;
  ComSynBat.Editor := EditBox;
  EditBox.Align := alClient;
  EditBox.Parent := ts;
  EditBox.OnChange := @SynEdit_Change;
  EditBox.OnStatusChange := @SynOnStatusChange;
  EditBox.PopupMenu := mnuEditor;
  EditBox.Font.Name := Tools.EdFontName;
  EditBox.Font.Size := Tools.EdFontSize;
  EditBox.Color := Tools.EdBk;
  EditBox.Visible := True;

  if not OpenFile then
  begin
    lzFile := 'NewFile' + IntToStr(DocCounter) + '.bat';
    ts.Hint := lzFile;
    ts.Caption := lzFile;
  end
  else
  begin
    lzFile := Filename;
    ts.Caption := ExtractFileName(lzFile);
    //Load file
    EditBox.Lines.LoadFromFile(lzFile);
    EditBox.Modified := False;
    ts.Hint := lzFile;
  end;
  Page1.SetFocus;
  Page1.PageIndex := (Page1.PageCount - 1);
  SynOnStatusChange(GetSynEdit, SynChange);
end;

procedure Tfrmmain.mnuNewClick(Sender: TObject);
begin
  NewTab(False, '');
  GetSynEdit.SetFocus;
end;

procedure Tfrmmain.mnuNewWindowClick(Sender: TObject);
begin
  OpenDocument(Application.ExeName);
end;

procedure Tfrmmain.mnuOpenClick(Sender: TObject);
var
  files: TStringList;
  X: integer;
begin
  files := TStringList.Create;
  files := GetOpenFiles('Open', dlgFilter);
  //Load the tabs
  for X := 0 to files.Count - 1 do
  begin
    if not IsDocOpen(files[X]) then
    begin
      NewTab(True, files[X]);
      AddToRecentMenu(files[X]);
      BuildRecentMenu;
    end;
  end;
  FreeAndNil(files);
end;

procedure Tfrmmain.mnuOpenGoogleClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    if Trim(GetSynEdit.SelText) = '' then
    begin
      MessageDlg(Text, 'No string was selected.', mtInformation, [mbOK], 0);
    end
    else
    begin
      OpenDocument('https://www.google.com/search?q=' + GetSynEdit.SelText);
    end;
  end;
end;

procedure Tfrmmain.mnuPasteClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynedit.PasteFromClipboard();
  end;
end;

procedure Tfrmmain.mnuRedoClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    if GetSynEdit.CanRedo then
    begin
      GetSynEdit.Redo;
    end;
  end;
end;

procedure Tfrmmain.mnuReopenClick(Sender: TObject);
begin

end;

procedure Tfrmmain.mnuReplaceClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    ReplaceDialog.Execute;
  end;
end;

procedure Tfrmmain.mnuSaveAllClick(Sender: TObject);
var
  X: integer;
  EditBox: TSynEdit;
  lzFile: string;
  mr: integer;
begin

  for X := 0 to Page1.PageCount - 1 do
  begin
    EditBox := Page1.Pages[X].Controls[0] as TSynEdit;
    lzFile := Page1.Pages[X].Hint;

    if FileExists(lzFile) and (EditBox.Modified) then
    begin
      //Save the pages.
      EditBox.Lines.SaveToFile(lzFile);
      EditBox.Modified := False;
      Page1.Pages[X].Caption := ExtractFileName(lzFile);
    end
    else
    begin
      //Ask user to save the pages.
      if not FileExists(lzFile) and (EditBox.Modified) then
      begin
        mr := MessageDlg(Text, 'The document ' + Page1.Pages[X].Hint +
          ' has changed' + 'Do you wish to save now?', mtInformation,
          [mbYes, mbNo, mbCancel], 0);
        if mr = mrYes then

        begin
          //Get filename from dialog
          lzFile := GetSaveFilename('Save As', dlgFilter);
          //Check for filename
          if lzFile <> '' then
          begin
            EditBox.Lines.SaveToFile(lzFile);
            EditBox.Modified := False;
            Page1.Pages[X].Hint := lzFile;
            Page1.Pages[X].Caption := ExtractFileName(lzFile);
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmmain.mnuSaveAsClick(Sender: TObject);
var
  lzFile: string;
begin

  if assigned(Page1.ActivePage) then
  begin
    lzFile := GetSaveFilename('Save As', dlgFilter);
    if lzFile <> '' then
    begin
      GetSynEdit.Lines.SaveToFile(lzFile);
      GetSynEdit.Modified := False;
      Page1.ActivePage.Hint := lzFile;
      Page1.ActivePage.Caption := ExtractFileName(lzFile);
    end;
    SynOnStatusChange(GetSynEdit, SynChange);
  end;

end;

procedure Tfrmmain.mnuSaveClick(Sender: TObject);
var
  lzFile: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    lzFile := Page1.ActivePage.Hint;

    if FileExists(lzFile) then
    begin
      GetSynEdit.Lines.SaveToFile(lzFile);
      GetSynEdit.Modified := False;
      Page1.ActivePage.Caption := ExtractFileName(lzFile);
    end
    else
    begin
      lzFile := GetSaveFilename('Save As', dlgFilter);
      if lzFile <> '' then
      begin
        GetSynEdit.Lines.SaveToFile(lzFile);
        GetSynEdit.Modified := False;
        Page1.ActivePage.Hint := lzFile;
        Page1.ActivePage.Caption := ExtractFileName(lzFile);
      end;
    end;
    SynOnStatusChange(GetSynEdit, SynChange);
  end;
end;

procedure Tfrmmain.mnuSelectAllClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelectAll;
  end;
end;

procedure Tfrmmain.mnuShowSpecialCharsClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    mnuShowSpecialChars.Checked := not mnuShowSpecialChars.Checked;
    if not mnuShowSpecialChars.Checked then
    begin
      GetSynEdit.Options := GetSynEdit.Options - [eoShowSpecialChars];
    end
    else
    begin
      GetSynEdit.Options := GetSynEdit.Options + [eoShowSpecialChars];
    end;
  end;
end;

procedure Tfrmmain.mnuTimeClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := FormatDateTime('hh:mm:ss', Now);
  end;
end;

procedure Tfrmmain.mnuUndo1Click(Sender: TObject);
begin
  mnuUndoClick(Sender);
end;

procedure Tfrmmain.mnuUpcaseClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := UpperCase(GetSynEdit.SelText);
  end;
end;

procedure Tfrmmain.mnuViewGutterClick(Sender: TObject);
begin

  if Assigned(Page1.ActivePage) then
  begin
    mnuViewGutter.Checked := not mnuViewGutter.Checked;
    GetSynEdit.Gutter.Visible := mnuViewGutter.Checked;
  end;
end;

procedure Tfrmmain.mnuViewInBrowserClick(Sender: TObject);
begin

end;

procedure Tfrmmain.mnyCopy1Click(Sender: TObject);
begin
  mnuCopyClick(Sender);
end;

procedure Tfrmmain.Page1Change(Sender: TObject);
begin
  GetSynEdit.SetFocus;
  SynOnStatusChange(GetSynEdit, SynChange);
end;

procedure Tfrmmain.Page1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  if Button = mbMiddle then
  begin
    mnuCloseClick(Sender);
  end;
end;

procedure Tfrmmain.SetVarExpClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := 'SET /A "TEST_VAR=25+25"';
  end;
end;

procedure Tfrmmain.ShowVarExpClick(Sender: TObject);
begin

end;

procedure Tfrmmain.SynEdit1Change(Sender: TObject);
begin

end;

procedure Tfrmmain.mnuUndoClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    if GetSynEdit.CanUndo then
    begin
      GetSynEdit.Undo;
    end;
  end;
end;

procedure Tfrmmain.MenuItem7Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmmain.mnuAboutClick(Sender: TObject);
var
  frm: TfrmAbout;
begin
  frm := TfrmAbout.Create(self);
  frm.ShowModal;
  frm.Destroy;
end;

procedure Tfrmmain.mnuAutoIndentClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    mnuAutoIndent.Checked := not mnuAutoIndent.Checked;
    if not mnuAutoIndent.Checked then
    begin
      GetSynEdit.Options := GetSynEdit.Options - [eoAutoIndent];
    end
    else
    begin
      GetSynEdit.Options := GetSynEdit.Options + [eoAutoIndent];
    end;
  end;
end;

procedure Tfrmmain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
var
  X: integer;
  EditBox: TSynEdit;
  lzFile: string;
  mr: integer;
  Flag: boolean;
begin
  Flag := True;
  for X := Page1.PageCount - 1 downto 0 do
  begin
    EditBox := Page1.Pages[X].Controls[0] as TSynEdit;
    lzFile := Page1.Pages[X].Hint;

    if FileExists(lzFile) and (EditBox.Modified) then
    begin
      mr := MessageDlg(Text, 'The document ' + Page1.Pages[X].Hint +
        ' has changed.' + ' Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrCancel:
        begin
          Flag := False;
        end;
        mrNo:
        begin
          Flag := True;
          Page1.Pages[X].Destroy;
        end;
        mrYes:
        begin
          //Save the pages.
          EditBox.Lines.SaveToFile(lzFile);
          Page1.Pages[X].Destroy;
          Flag := True;
        end;
      end;
    end
    else if not FileExists(lzFile) and (EditBox.Modified) then
    begin
      mr := MessageDlg(Text, 'The document ' + Page1.Pages[X].Hint +
        ' has changed.' + ' Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrCancel:
        begin
          Flag := False;
        end;
        mrNo:
        begin
          Flag := True;
          Page1.Pages[X].Destroy;
        end;
        mrYes:
        begin
          //Get filename from dialog
          lzFile := GetSaveFilename('Save As', dlgFilter);
          //Check for filename
          if lzFile <> '' then
          begin
            EditBox.Lines.SaveToFile(lzFile);
            Page1.Pages[X].Destroy;
            Flag := True;
          end
          else
          begin
            Flag := False;
          end;
        end;
      end;
    end
    else
    begin
      Page1.Pages[X].Destroy;
      Flag := True;
    end;
  end;

  CanClose := Flag;
end;

procedure Tfrmmain.FindDialogShow(Sender: TObject);
begin

end;

procedure Tfrmmain.FindDialogFind(Sender: TObject);
begin

end;

procedure Tfrmmain.chkStatuabarClick(Sender: TObject);
begin
  chkStatuabar.Checked := not chkStatuabar.Checked;
  StatusBar1.Visible := chkStatuabar.Checked;
end;

procedure Tfrmmain.ComSynBatCodeCompletion(var Value: string;
  SourceValue: string; var SourceStart, SourceEnd: TPoint; KeyChar: TUTF8Char;
  Shift: TShiftState);
begin

end;

procedure Tfrmmain.FormCreate(Sender: TObject);
var
  X: integer;
begin
  AppPath := FixPath(ExtractFilePath(Application.ExeName));
  RecentPath := AppPath + 'reopen.txt';
  LoadCfg;

  if ParamCount > 0 then
  begin
    for X := 1 to ParamCount do
    begin
      //Check file is open in the editor
      if not IsDocOpen(ParamStr(X)) then
      begin
        //Create new tab
        NewTab(True, ParamStr(X));
        //Add file to recent menu
        AddToRecentMenu(ParamStr(X));
      end;
    end;
  end;
  //Build recent opened files menu
  BuildRecentMenu;
  BuildEnvMenu;

  mnuAbout.Caption := '&About ' + Caption + '...';

end;

procedure Tfrmmain.FormDropFiles(Sender: TObject; const FileNames: array of string);
var
  X: integer;
begin
  for X := Low(FileNames) to High(FileNames) do
  begin
    if not IsDocOpen(FileNames[X]) then
    begin
      NewTab(True, FileNames[X]);
      AddToRecentMenu(FileNames[X]);
      BuildRecentMenu;
    end;
  end;
end;

procedure Tfrmmain.mnuClose1Click(Sender: TObject);
begin
  mnuCloseClick(Sender);
end;

procedure Tfrmmain.mnuCommentClick(Sender: TObject);
var
  S: string;
  IsOk: boolean;
begin
  if assigned(Page1.ActivePage) then
  begin
    if GetSynEdit.SelText <> '' then
    begin
      S := 'REM ' + GetSynEdit.SelText;
      GetSynEdit.SelText := S;
    end
    else
    begin
      S := 'Your coment here';
      IsOk := InputQuery(Text, 'Enter your comment and press Ok', S);
      if IsOk then
      begin
        GetSynEdit.SelText := 'REM ' + S;
      end;
    end;
  end;
end;

procedure Tfrmmain.mnuCut1Click(Sender: TObject);
begin
  mnuCutClick(Sender);
end;

procedure Tfrmmain.mnuDelLineClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.Lines.Delete(GetSynEdit.CaretY - 1);
  end;
end;

procedure Tfrmmain.mnuDelSelectionClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := '';
  end;
end;

procedure Tfrmmain.mnuEchoOffClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := '@ECHO OFF';
  end;
end;

procedure Tfrmmain.mnuEchoOnClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := '@ECHO ON';
  end;
end;

procedure Tfrmmain.mnuFindGoogle1Click(Sender: TObject);
begin
  mnuOpenGoogleClick(Sender);
end;

procedure Tfrmmain.mnuFontBkClick(Sender: TObject);
var
  frm: TfrmFonts;
begin
  frm := TfrmFonts.Create(self);
  Tools.ButtonPress := 0;
  frm.lstFonts.ItemIndex := FindItemInListBox(frm.lstFonts, Tools.EdFontName);
  frm.lstFontSize.ItemIndex :=
    FindItemInListBox(frm.lstFontSize, IntToStr(Tools.EdFontSize));
  frm.cmdBackColor.ButtonColor := Tools.EdBk;
  frm.ShowModal;
  if Tools.ButtonPress = 1 then
  begin
    UpdateEditorUI;
    SaveCfg;
  end;
  frm.Destroy;
end;

procedure Tfrmmain.mnuGotoLabelClick(Sender: TObject);
var
  S: string;
  isOk: boolean;
begin
  if assigned(Page1.ActivePage) then
  begin
    S := 'LabelName';
    IsOk := InputQuery(Text, 'Enter a label name', S);
    if IsOk then
    begin
      GetSynEdit.SelText := 'GOTO ' + S;
    end;
  end;
end;

procedure Tfrmmain.mnuHelp1Click(Sender: TObject);
begin
  OpenDocument('https://www.tutorialspoint.com/batch_script/index.htm');
end;

procedure Tfrmmain.mnuHelp2Click(Sender: TObject);
begin
  OpenDocument('http://www.trytoprogram.com/batch-file');
end;

procedure Tfrmmain.mnuInsertFile1Click(Sender: TObject);
begin
  mnuInsertFileClick(Sender);
end;

procedure Tfrmmain.mnuLoadLstClick(Sender: TObject);
var
  sl: TStringList;
  X: integer;
  lzFile: string;
begin
  //Get list filename
  lzFile := GetOpenFile('Open List', 'List Files(*.lst)|*.lst');
  if lzFile <> '' then
  begin
    //Create string list obj
    sl := TStringList.Create;
    //Load the list into sl
    sl.LoadFromFile(lzFile);
    for X := 0 to sl.Count - 1 do
    begin
      //Ge the item from the sting list at index X
      lzFile := sl[X];
      //Check if file is not open in the editor and the file exsists
      if (not IsDocOpen(lzFile)) and FileExists(lzFile) then
      begin
        //Create new tab
        NewTab(True, lzFile);
      end;
    end;
    //Clear up
    FreeAndNil(sl);
  end;
end;

procedure Tfrmmain.mnuLongDateClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := FormatDateTime('DDDD DD MMMM YYYY', Now);
  end;
end;

procedure Tfrmmain.mnuLowcaseClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := LowerCase(GetSynEdit.SelText);
  end;
end;

procedure Tfrmmain.mnuNew1Click(Sender: TObject);
begin
  mnuNewClick(Sender);
end;

procedure Tfrmmain.mnuNewLabelClick(Sender: TObject);
var
  S: string;
  isOk: boolean;
begin
  if assigned(Page1.ActivePage) then
  begin
    S := 'NewLabel';
    IsOk := InputQuery(Text, 'Enter a name for your label', S);
    if IsOk then
    begin
      GetSynEdit.SelText := ':' + S;
    end;
  end;
end;

procedure Tfrmmain.mnuOpA1Click(Sender: TObject);
begin
  DoBatchOperatrs('+');
end;

procedure Tfrmmain.mnuOpA2Click(Sender: TObject);
begin
  DoBatchOperatrs('-');
end;

procedure Tfrmmain.mnuOpA3Click(Sender: TObject);
begin
  DoBatchOperatrs('%');
end;

procedure Tfrmmain.mnuOpA4Click(Sender: TObject);
begin
  DoBatchOperatrs('/');
end;

procedure Tfrmmain.mnuOpA5Click(Sender: TObject);
begin
  DoBatchOperatrs('*');
end;

procedure Tfrmmain.MnuOpAClick(Sender: TObject);
begin
  DoBatchOperatrs('~');
end;

procedure Tfrmmain.MnuOPB1Click(Sender: TObject);
begin
  DoBatchOperatrs('&');
end;

procedure Tfrmmain.MnuOPB2Click(Sender: TObject);
begin
  DoBatchOperatrs('|');
end;

procedure Tfrmmain.MnuOPB3Click(Sender: TObject);
begin
  DoBatchOperatrs('^');
end;

procedure Tfrmmain.MnuOpBClick(Sender: TObject);
begin
  DoBatchOperatrs('!');
end;

procedure Tfrmmain.MnuOpCClick(Sender: TObject);
begin
  DoBatchOperatrs('–');
end;

procedure Tfrmmain.mnuOpen1Click(Sender: TObject);
begin
  mnuOpenClick(Sender);
end;

procedure Tfrmmain.mnuOpenPathClick(Sender: TObject);
var
  lzPath: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    lzPath := ExtractFilePath(Page1.ActivePage.Hint);
    if lzPath <> '' then
    begin
      OpenDocument(lzPath);
    end
    else
    begin
      OpenDocument(ExtractFilePath(Application.ExeName));
    end;
  end;
end;

procedure Tfrmmain.mnuOpL1Click(Sender: TObject);
begin
  DoBatchOperatrs('>>');
end;

procedure Tfrmmain.mnuOpL2Click(Sender: TObject);
begin
  DoBatchOperatrs('<');
end;

procedure Tfrmmain.mnuOpL3Click(Sender: TObject);
begin
  DoBatchOperatrs('>');
end;

procedure Tfrmmain.MnuOpR1Click(Sender: TObject);
begin
  DoBatchOperatrs('EQU');
end;

procedure Tfrmmain.MnuOpR2Click(Sender: TObject);
begin
  DoBatchOperatrs('NEQ');
end;

procedure Tfrmmain.MnuOpR3Click(Sender: TObject);
begin
  DoBatchOperatrs('LSS');
end;

procedure Tfrmmain.MnuOpR4Click(Sender: TObject);
begin
  DoBatchOperatrs('LEQ');
end;

procedure Tfrmmain.MnuOpR5Click(Sender: TObject);
begin
  DoBatchOperatrs('GTR');
end;

procedure Tfrmmain.MnuOpR6Click(Sender: TObject);
begin
  DoBatchOperatrs('GEQ');
end;

procedure Tfrmmain.mnuPaste1Click(Sender: TObject);
begin
  mnuPasteClick(Sender);
end;

procedure Tfrmmain.mnuRedo1Click(Sender: TObject);
begin
  mnuRedoClick(Sender);
end;

procedure Tfrmmain.mnuReloadClick(Sender: TObject);
var
  lzFile: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    //Reload the file
    lzFile := Page1.ActivePage.Hint;
    if FileExists(lzFile) then
    begin

      if MessageDlg(Text, 'Are you sure you want to reload the file form the drive?',
        mtInformation, [mbYes, mbNo, mbCancel], 0) = mrYes then
      begin

        GetSynEdit.Lines.LoadFromFile(lzFile);
        GetSynEdit.Modified := False;
        Page1.ActivePage.Caption := ExtractFileName(lzFile);
      end;
    end;
  end;
end;

procedure Tfrmmain.mnuRunClick(Sender: TObject);
var
  sTemp : String;
begin
  if assigned(Page1.ActivePage) then
  begin
    if not FileExists(Page1.ActivePage.Hint) then
    begin
      sTemp := GetTempFileName;
      sTemp := ChangeFileExt(sTemp,'.bat');
      GetSynEdit.Lines.SaveToFile(sTemp);
      OpenDocument(sTemp);
    end
    else
    begin
      OpenDocument(Page1.ActivePage.Hint);
    end;
  end;
end;

procedure Tfrmmain.mnuSamplesClick(Sender: TObject);
var
  frm: TfrmSample;
  sl: TStringList;
begin
  Tools.ButtonPress := 0;
  frm := TfrmSample.Create(self);
  frm.ShowModal;
  if ButtonPress = 1 then
  begin
    if FileExists(AppSmpleFile) and (not IsDocOpen(AppSmpleFile)) then
    begin
      sl := TStringList.Create;
      sl.LoadFromFile(AppSmpleFile);
      NewTab(False, '');
      GetSynEdit.Text := sl.Text;
      GetSynEdit.Modified := True;
      Page1.ActivePage.Caption := Page1.ActivePage.Caption + ' *';
      FreeAndNil(sl);
    end;
  end;
  frm.Destroy;
end;

procedure Tfrmmain.mnuSave1Click(Sender: TObject);
begin
  mnuSaveClick(Sender);
end;

procedure Tfrmmain.mnuSaveAs1Click(Sender: TObject);
begin
  mnuSaveAsClick(Sender);
end;

procedure Tfrmmain.mnuSaveLstClick(Sender: TObject);
var
  sl: TStringList;
  X: integer;
  lzFile: string;
begin
  if Page1.PageCount > 0 then
  begin
    //Create string list obj
    sl := TStringList.Create;
    for X := 0 to Page1.PageCount - 1 do
    begin
      //Make sure the file is on disk
      lzFile := Page1.Pages[X].Hint;
      if FileExists(lzFile) then
      begin
        //Add to string list sl
        sl.Add(lzFile);
      end;
    end;
    if sl.Count > 0 then
    begin
      //Get save filename
      lzFile := GetSaveFilename('Save List', 'List Files(*.lst)|*.lst');
      if lzFile <> '' then
      begin
        //Save string list
        sl.SaveToFile(lzFile);
      end;
      FreeAndNil(sl);
    end;
  end;
end;

procedure Tfrmmain.mnuSelectAll1Click(Sender: TObject);
begin
  mnuSelectAllClick(Sender);
end;

procedure Tfrmmain.mnuSetVarClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := 'SET "TEST_VAR=%DATE%"';
  end;
end;

procedure Tfrmmain.mnuShowMsgClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    if GetSynEdit.SelText <> '' then
    begin
      GetSynEdit.SelText := 'ECHO ' + GetSynEdit.SelText;
    end
    else
    begin
      GetSynEdit.SelText := 'ECHO This script was made in ' + Caption;
    end;
  end;
end;

procedure Tfrmmain.mnuShowVarClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := 'ECHO %TEST_VAR%';
  end;
end;

procedure Tfrmmain.mnuTitleCaseClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := TitleCase(GetSynEdit.SelText);
  end;
end;

procedure Tfrmmain.mnuCloseAllClick(Sender: TObject);
var
  X: integer;
  EditBox: TSynEdit;
  lzFile: string;
  mr: integer;
begin

  for X := Page1.PageCount - 1 downto 0 do
  begin
    EditBox := Page1.Pages[X].Controls[0] as TSynEdit;
    lzFile := Page1.Pages[X].Hint;

    if FileExists(lzFile) and (EditBox.Modified) then
    begin
      mr := MessageDlg(Text, 'The document ' + Page1.Pages[X].Hint +
        ' has changed' + ' Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrNo:
        begin
          Page1.Pages[X].Destroy;
        end;
        mrYes:
        begin
          //Save the pages.
          EditBox.Lines.SaveToFile(lzFile);
          Page1.Pages[X].Destroy;
        end;
      end;
    end
    else if not FileExists(lzFile) and (EditBox.Modified) then
    begin
      mr := MessageDlg(Text, 'The document ' + Page1.Pages[X].Hint +
        ' has changed' + ' Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrNo:
        begin
          Page1.Pages[X].Destroy;
        end;
        mrYes:
        begin
          //Get filename from dialog
          lzFile := GetSaveFilename('Save As', dlgFilter);
          //Check for filename
          if lzFile <> '' then
          begin
            EditBox.Lines.SaveToFile(lzFile);
            Page1.Pages[X].Destroy;
          end;
        end;
      end;
    end
    else
    begin
      Page1.Pages[X].Destroy;
    end;
  end;

  if Page1.PageCount > 0 then
  begin
    Page1Change(Sender);
  end;

  //Reset doc counter
  if Page1.PageCount = 0 then
  begin
    DocCounter := 0;
    ResetStatusBar;
  end;
end;

procedure Tfrmmain.mnuCloseClick(Sender: TObject);
var
  lzFile: string;
  mr: integer;
begin
  if Assigned(Page1.ActivePage) then
  begin
    lzFile := Page1.ActivePage.Hint;
    if FileExists(lzFile) and (GetSynEdit.Modified) then
    begin

      mr := MessageDlg(Text, 'The document ' + Page1.ActivePage.Hint +
        ' has chnaged. Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrYes:
        begin
          //Save and close the tab
          GetSynEdit.Lines.SaveToFile(lzFile);
          Page1.ActivePage.Destroy;
        end;
        mrNo:
        begin
          Page1.ActivePage.Destroy;
        end;
      end;

    end
    else if not FileExists(lzFile) and (GetSynEdit.Modified) then
    begin
      mr := MessageDlg(Text, 'The document ' + Page1.ActivePage.Hint +
        ' has chnaged. Do you wish to save now?', mtInformation,
        [mbYes, mbNo, mbCancel], 0);

      case mr of
        mrYes:
        begin
          lzFile := GetSaveFilename('Save As', dlgFilter);
          if lzFile <> '' then
          begin
            GetSynEdit.Lines.SaveToFile(lzFile);
            Page1.ActivePage.Destroy;
          end;
        end;
        mrNo:
        begin
          Page1.ActivePage.Destroy;
        end;
      end;
    end
    else
    begin
      Page1.ActivePage.Destroy;
    end;
  end;

  if Page1.PageCount > 0 then
  begin
    Page1Change(Sender);
  end;
  if Page1.PageCount = 0 then
  begin
    DocCounter := 0;
    ResetStatusBar;
  end;
end;

procedure Tfrmmain.mnuCopyAppendClick(Sender: TObject);
var
  S: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    S := ClipBoard.AsText;
    ClipBoard.AsText := S + GetSynEdit.SelText;
  end;
end;

procedure Tfrmmain.mnuCopyClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.CopyToClipboard;
  end;
end;

procedure Tfrmmain.mnuCustomClick(Sender: TObject);
var
  IsOk: boolean;
  S: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    IsOk := InputQuery(Text, 'Please enter date or time format:', S);

    if IsOk and (Trim(S) <> '') then
    begin
      GetSynEdit.SelText := FormatDateTime(S, Now);
    end;
  end;
end;

procedure Tfrmmain.mnuCutAppendClick(Sender: TObject);
var
  S: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    S := ClipBoard.AsText;
    ClipBoard.AsText := S + GetSynEdit.SelText;
    GetSynEdit.SelText := '';
  end;
end;

procedure Tfrmmain.mnuCutClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.CutToClipboard;
  end;
end;

procedure Tfrmmain.mnuDateClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := FormatDateTime('DD/MM/YYYY', Now);
  end;
end;

procedure Tfrmmain.mnuDateTime1Click(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    GetSynEdit.SelText := FormatDateTime('DD/MM/YYYY hh:mm:ss', Now);
  end;
end;

procedure Tfrmmain.mnuDeleteClick(Sender: TObject);
begin

end;

procedure Tfrmmain.mnuFindClick(Sender: TObject);
begin
  if assigned(Page1.ActivePage) then
  begin
    if GetSynEdit.SelAvail and (GetSynEdit.BlockBegin.Y = GetSynEdit.BlockEnd.Y) then
      FindDialog.FindText := GetSynEdit.SelText;
    FindDialog.Execute;
  end;
end;

procedure Tfrmmain.mnuFindNextClick(Sender: TObject);
var
  sOptions: TSynSearchOptions;
begin
  if assigned(Page1.ActivePage) then
  begin
    if FindText <> '' then
    begin
      sOptions := FindOptions;
      sOptions := sOptions - [ssoBackwards];
      GetSynEdit.SearchReplace(FindText, '', sOptions);
    end;
  end;
end;

procedure Tfrmmain.mnuFindPreviousClick(Sender: TObject);
var
  sOptions: TSynSearchOptions;
begin
  if assigned(Page1.ActivePage) then
  begin
    if FindText <> '' then
    begin
      sOptions := FindOptions;
      sOptions := sOptions + [ssoBackwards];
      GetSynEdit.SearchReplace(FindText, '', sOptions);
    end;
  end;
end;

procedure Tfrmmain.mnuGotoLineClick(Sender: TObject);
var
  S: string;
  IsOk: boolean;
begin

  if assigned(Page1.ActivePage) then
  begin
    S := '';
    IsOk := InputQuery(Text, 'Enter line number:', S);
    if Trim(S) = '' then exit;
    if IsOk and (isNumber(S)) then
    begin
      GetSynEdit.CaretXY := Point(1, StrToInt(S));
      GetSynEdit.SelectLine;
      GetSynEdit.SetFocus;
    end
    else
    begin
      MessageDlg(Text, 'Input string was not a valid integer.',
        mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure Tfrmmain.mnuInsertFileClick(Sender: TObject);
var
  sl: TStringList;
  lzFile: string;
begin
  if assigned(Page1.ActivePage) then
  begin
    lzFile := GetOpenFile('Insert File', dlgFilter);
    if lzFile <> '' then
    begin
      sl := TStringList.Create;
      sl.LoadFromFile(lzFile);
      GetSynEdit.SelText := sl.Text;
      FreeAndNil(sl);
    end;
  end;
end;

end.
