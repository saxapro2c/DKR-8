unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure ProcClick(Sender: TObject);
    procedure SlozhnClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,c,d: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ProcClick(Sender: TObject);
begin
  if Edit1.Text = '' then a := 1
  else a := StrToFloat(Edit1.Text);
  if Edit2.Text = '' then b := 1
  else b := StrToFloat(Edit2.Text);
  if Edit3.Text = '' then c := 1
  else c := StrToFloat(Edit3.Text);
  d := a*(1 + (b*c)/100);

  Edit4.Text := FloatToStr(d);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  case Key of
'0'..'9':;
#8:;
',':;
else Key:=#0;
end;
  if Key = ',' then
  begin
    if Pos(',', Edit1.Text) > 0 then // Проверяем, есть ли уже запятая в тексте
      Key := #0; // Если запятая уже есть, то отменяем ввод новой запятой
  end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
begin
  case Key of
'0'..'9':;
#8:;
',':;
else Key:=#0;
end;
  if Key = ',' then
  begin
    if Pos(',', Edit2.Text) > 0 then // Проверяем, есть ли уже запятая в тексте
      Key := #0; // Если запятая уже есть, то отменяем ввод новой запятой
  end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: char);
begin
    case Key of
'0'..'9':;
#8:;
',':;
else Key:=#0;
end;
  if Key = ',' then
  begin
    if Pos(',', Edit3.Text) > 0 then // Проверяем, есть ли уже запятая в тексте
      Key := #0; // Если запятая уже есть, то отменяем ввод новой запятой
  end;
end;

procedure TForm1.SlozhnClick(Sender: TObject);
begin
  if Edit1.Text = '' then a := 1
  else a := StrToFloat(Edit1.Text);
  if Edit2.Text = '' then b := 1
  else b := StrToFloat(Edit2.Text);
  if Edit3.Text = '' then c := 1
  else c := StrToFloat(Edit3.Text);
  d := a*(1 + c/100) * sqrt(b);

  Edit4.Text := FloatToStr(d);
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
end;

end.

