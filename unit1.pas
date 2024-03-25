unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHasil: TButton;
    btnClear: TButton;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    btnTambah: TButton;
    btnKurang: TButton;
    btnKali: TButton;
    btnBagi: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    edtDisplay: TEdit;
    procedure btnBagiClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnHasilClick(Sender: TObject);
    procedure btnKaliClick(Sender: TObject);
    procedure btnKurangClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnNumber(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
    bilanganPertama, bilanganKedua, hasil: Extended;
    perintahTerakhir: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnNumber(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
  begin
   if TButton(Sender).Caption = ',' then
    edtDisplay.Text:= '0'
   else
     edtDisplay.Clear;
   end;

  edtDisplay.Text := edtDisplay.Text + TButton(Sender).Caption;
end;

procedure TForm1.btnTambahClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtDisplay.Text);
  edtDisplay.Text := '';
  edtDisplay.Clear;
  perintahTerakhir := 'tambah';
end;

procedure TForm1.btnHasilClick(Sender: TObject);
begin
  if perintahTerakhir = 'tambah' then
  begin
      bilanganKedua:= StrToFloat(edtDisplay.Text);
      hasil :=  bilanganPertama + bilanganKedua;
      edtDisplay.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kurang' then
  begin
      bilanganKedua:= StrToFloat(edtDisplay.Text);
      hasil :=  bilanganPertama - bilanganKedua;
      edtDisplay.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kali' then
  begin
      bilanganKedua:= StrToFloat(edtDisplay.Text);
      hasil :=  bilanganPertama * bilanganKedua;
      edtDisplay.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'bagi' then
  begin
      bilanganKedua:= StrToFloat(edtDisplay.Text);
      hasil :=  bilanganPertama / bilanganKedua;
      edtDisplay.Text := FloatToStr(hasil);
  end;
end;

procedure TForm1.btnKaliClick(Sender: TObject);
begin
   bilanganPertama:= StrToFloat(edtDisplay.Text);
   edtDisplay.Text := '';
   edtDisplay.Clear;
   perintahTerakhir := 'kali';
end;

procedure TForm1.btnKurangClick(Sender: TObject);
begin
   bilanganPertama:= StrToFloat(edtDisplay.Text);
   edtDisplay.Text := '';
   edtDisplay.Clear;
   perintahTerakhir := 'kurang';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtDisplay.Text:= '0';
end;

procedure TForm1.btnBagiClick(Sender: TObject);
begin
  bilanganPertama:= StrToFloat(edtDisplay.Text);
   edtDisplay.Text := '';
   edtDisplay.Clear;
   perintahTerakhir := 'bagi';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

end;

end.

