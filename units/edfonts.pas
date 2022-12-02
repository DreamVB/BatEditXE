unit edfonts;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Tools;

type

  { TfrmFonts }

  TfrmFonts = class(TForm)
    cmdOK: TButton;
    cmdClose: TButton;
    cmdBackColor: TColorButton;
    txtFind: TEdit;
    lblBackground: TLabel;
    lblFonts: TLabel;
    lblFonts1: TLabel;
    lblFontSize: TLabel;
    lstFonts: TListBox;
    lstFontSize: TListBox;
    pPreview: TPanel;
    procedure cmdBackColorColorChanged(Sender: TObject);
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstFontsClick(Sender: TObject);
    procedure lstFontSizeClick(Sender: TObject);
    procedure txtFindChange(Sender: TObject);
  private
    procedure DoPreview;
  public

  end;

var
  frmFonts: TfrmFonts;

implementation

{$R *.lfm}

{ TfrmFonts }

procedure TfrmFonts.DoPreview;
begin
  pPreview.Color := cmdBackColor.ButtonColor;
  pPreview.Font.Name := lstFonts.Items[lstFonts.ItemIndex];
  pPreview.Font.Size := StrToInt(lstFontSize.Items[lstFontSize.ItemIndex]);
end;

procedure TfrmFonts.FormCreate(Sender: TObject);
var
  X: integer;
begin
  for X := 9 to 72 do
  begin
    lstFontSize.Items.Add(IntToStr(X));
  end;
  lstFontSize.ItemIndex := 1;
  lstFonts.Items := Screen.Fonts;
  LstFonts.ItemIndex := FindItemInListBox(lstFonts, 'Courier New');
  DoPreview;
end;

procedure TfrmFonts.lstFontsClick(Sender: TObject);
begin
  DoPreview;
end;

procedure TfrmFonts.lstFontSizeClick(Sender: TObject);
begin
  DoPreview;
end;

procedure TfrmFonts.txtFindChange(Sender: TObject);
var
  X: integer;
  S: string;
begin
  for X := 0 to lstFonts.Count - 1 do
  begin
    S := lowercase(lstFonts.Items[X]);

    if leftstr(S, Length(txtFind.Text)) = lowercase(txtfind.Text) then
    begin
      lstFonts.ItemIndex := X;
      Break;
    end;
  end;
  DoPreview;
end;

procedure TfrmFonts.cmdOKClick(Sender: TObject);
begin
  Tools.ButtonPress := 1;
  Tools.EdFontName := lstFonts.Items[lstFonts.ItemIndex];
  Tools.EdFontSize := StrToInt(lstFontSize.Items[lstFontSize.ItemIndex]);
  Tools.EdBk := cmdBackColor.ButtonColor;
  Close;
end;

procedure TfrmFonts.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

procedure TfrmFonts.cmdBackColorColorChanged(Sender: TObject);
begin
  DoPreview;
end;

end.
