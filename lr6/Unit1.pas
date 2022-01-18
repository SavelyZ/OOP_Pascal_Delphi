unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure Jump(Sender: TObject);
    procedure Change(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
  Buttons:array [1..10] of TButton;

implementation

{$R *.dfm}

procedure TForm1.Jump(Sender: TObject);
var i,x:integer;
b:TButton;
begin
   b:=Sender as TButton;
   x:=1;
   for i:=1 to 10 do
   begin
      b.Top:=b.top+x*10;
      x:=x*-1;
      sleep(50);
   end;
   change(sender);
end;

procedure TForm1.change(Sender: TObject);
var i:integer;
b:TButton;
begin
   for i:=1 to 10 do             
   begin
      buttons[i].onClick:=change;
      buttons[i].Caption:=intToStr(i);
   end;
   //разыграть jump
   i:=random(10)+1;
   buttons[i].onClick:=jump;
   buttons[i].Caption:='JUMP';
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
   Form1.Color:= clRed;
   for i:=1 to 10 do
   begin
      Buttons[i]:=TButton.Create(Self);
      Buttons[i].parent:=Self;
      Buttons[i].Caption:=intToStr(i);
      Buttons[i].Top:=i*40;
      Buttons[i].Left:=20;
      Buttons[i].Visible:=true;
   end;
   change(Sender);
end;

end.
