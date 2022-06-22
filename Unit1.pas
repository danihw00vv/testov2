unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i:Integer;    n,w,d,p:Integer; mas:Integer;
begin
n:=StrToInt(Edit1.text);
w:=StrToInt(Edit2.text);
d:=StrToInt(Edit3.text);
p:=StrToInt(Edit4.text);
mas:=0;
 for i:=1 to n-1 do  mas:=mas+i*w;
if (mas=p) then Edit5.Text:=IntToStr(n)
 else Edit5.Text:=IntToStr(Round((mas-p)/d));

end;

end.
