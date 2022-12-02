unit samples;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Tools;

type

  { TfrmSample }

  TfrmSample = class(TForm)
    cmdOpen: TButton;
    cmdClose: TButton;
    lblSamples: TLabel;
    lstFiles: TListBox;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstFilesClick(Sender: TObject);
    procedure lstFilesDblClick(Sender: TObject);
  private
    procedure LoadSamples;
  public

  end;

var
  frmSample: TfrmSample;
  lzPath: string;

implementation

{$R *.lfm}

{ TfrmSample }

procedure Tfrmsample.LoadSamples;
var
  sr: TSearchRec;
begin

  if DirectoryExists(lzPath) then
  begin
    if FindFirst(lzPath + '*.bat', faAnyFile, sr) = 0 then
    begin
      repeat
        lstFiles.Items.Add(sr.Name);
      until FindNext(sr) <> 0;
    end;
  end;

  if lstFiles.Count > 0 then
  begin
    lstFiles.ItemIndex := 0;
  end;
end;

procedure TfrmSample.FormCreate(Sender: TObject);
begin
  //Load sample batch files into listbox
  lzPath := AppPath + 'samples' + PathDelim;
  LoadSamples;
end;

procedure TfrmSample.lstFilesClick(Sender: TObject);
begin
  Tools.AppSmpleFile := lzPath + lstFiles.Items[lstFiles.ItemIndex];
end;

procedure TfrmSample.lstFilesDblClick(Sender: TObject);
begin
  cmdOpenClick(sender);
end;

procedure TfrmSample.cmdOpenClick(Sender: TObject);
begin
  Tools.ButtonPress := 1;
  Close;
end;

procedure TfrmSample.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

end.
