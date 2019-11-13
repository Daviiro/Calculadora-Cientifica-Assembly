unit ufrmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnDigit0: TButton;
    btnFunction: TButton;
    btnFunction1: TButton;
    btnFunction2: TButton;
    btnFunction3: TButton;
    btnClear: TButton;
    btnCalculate: TButton;
    btnPlusMinus: TButton;
    btnDigit1: TButton;
    btnDigit2: TButton;
    btnDigit3: TButton;
    btnDigit4: TButton;
    btnDigit5: TButton;
    btnDigit6: TButton;
    btnDigit7: TButton;
    btnDigit8: TButton;
    btnDigit9: TButton;
    edDisplay: TEdit;
    Panel1: TPanel;
    procedure btnDigit0Click(Sender: TObject);
    procedure btnDigit1Click(Sender: TObject);
    procedure btnDigit2Click(Sender: TObject);
    procedure btnDigit3Click(Sender: TObject);
    procedure btnDigit4Click(Sender: TObject);
    procedure btnDigit5Click(Sender: TObject);
    procedure btnDigit6Click(Sender: TObject);
    procedure btnDigit7Click(Sender: TObject);
    procedure btnDigit8Click(Sender: TObject);
    procedure btnDigit9Click(Sender: TObject);
    procedure btnFunction1Click(Sender: TObject);
    procedure btnFunction2Click(Sender: TObject);
    procedure btnFunction3Click(Sender: TObject);
    procedure btnFunctionClick(Sender: TObject);
    procedure edDisplayChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
     procedure AddDigit(const pDigit: byte);
  public

  end;

var
  Form1: TForm1;
  num, answer : real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.AddDigit(const pDigit: byte);
begin
  // Limitar o numero de digitos para nao estourar
  if length(edDisplay.Text) < 50 then
  begin
   // acabar com zero a direita (inuteis)
   if edDisplay.Text = '0' then
     edDisplay.Text := IntToStr(pDigit)
   else
     edDisplay.Text := edDisplay.Text + IntToStr(pDigit)
  end;
end;

procedure TForm1.edDisplayChange(Sender: TObject);
begin

end;

procedure TForm1.btnDigit0Click(Sender: TObject);
begin
  AddDigit(0)
end;

procedure TForm1.btnDigit1Click(Sender: TObject);
begin
  AddDigit(1)
end;

procedure TForm1.btnDigit2Click(Sender: TObject);
begin
  AddDigit(2)
end;

procedure TForm1.btnDigit3Click(Sender: TObject);
begin
  AddDigit(3)
end;

procedure TForm1.btnDigit4Click(Sender: TObject);
begin
 AddDigit(4)
end;

procedure TForm1.btnDigit5Click(Sender: TObject);
begin
 AddDigit(5)
end;

procedure TForm1.btnDigit6Click(Sender: TObject);
begin
  AddDigit(6)
end;

procedure TForm1.btnDigit7Click(Sender: TObject);
begin
  AddDigit(7)
end;

procedure TForm1.btnDigit8Click(Sender: TObject);
begin
  AddDigit(8)
end;

procedure TForm1.btnDigit9Click(Sender: TObject);
begin
  AddDigit(9)
end;

procedure TForm1.btnFunction1Click(Sender: TObject);
begin
  edDisplay.Text := edDisplay.Text + '-'
end;

procedure TForm1.btnFunction2Click(Sender: TObject);
begin
  edDisplay.Text := edDisplay.Text + '*'
end;

procedure TForm1.btnFunction3Click(Sender: TObject);
begin
  edDisplay.Text := edDisplay.Text + '/'
end;

procedure TForm1.btnFunctionClick(Sender: TObject);
begin
  edDisplay.Text := edDisplay.Text + '+'
end;

end.

