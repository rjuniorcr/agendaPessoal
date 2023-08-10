unit UnitAgenda;

interface

uses
  Windows, Messages, variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Db, ExtCtrls, DBTables, Calendar,
  Buttons, Mask, Menus;

type
  TFormAgenda = class(TForm)
    DSTabelaAgenda: TDataSource;
    Panel10: TPanel;
    Panel20: TPanel;
    Panel30: TPanel;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    ScrollBar1: TScrollBar;
    Panel1: TPanel;
    ScrollBar2: TScrollBar;
    Panel3: TPanel;
    ScrollBar3: TScrollBar;
    Calendar1: TCalendar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    Timer2: TTimer;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    TabelaAgenda: TTable;
    TabelaAgendaCont: TAutoIncField;
    TabelaAgendaNome: TStringField;
    TabelaAgendaData: TDateField;
    TabelaAgendaFone: TStringField;
    TabelaAgendaEmail: TStringField;
    TabelaAgendaAssunto: TMemoField;
    TabelaAgendaHora: TTimeField;
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgenda: TFormAgenda;

implementation

uses Unit1;

{$R *.DFM}




procedure TFormAgenda.ScrollBar1Change(Sender: TObject);
begin
     if ScrollBar1.Position=1 Then
      Panel1.Caption:='Janeiro'
     Else if ScrollBar1.Position=2 Then
      Panel1.Caption:='Fevereiro'
     Else if ScrollBar1.Position=3 Then
      Panel1.Caption:='Março'
     Else if ScrollBar1.Position=4 Then
      Panel1.Caption:='Abril'
     Else if ScrollBar1.Position= 5 Then
      Panel1.Caption:='Maio'
     Else if ScrollBar1.Position=6 Then
      Panel1.Caption:='Junho'
     Else if ScrollBar1.Position=7 Then
      Panel1.Caption:='Julho'
     Else if ScrollBar1.Position=8 Then
      Panel1.Caption:='Agosto'
     Else if ScrollBar1.Position=9 Then
      Panel1.Caption:='Setembro'
     Else if ScrollBar1.Position=10 Then
      Panel1.Caption:='Outubro'
     Else if ScrollBar1.Position=11 Then
      Panel1.Caption:='Novembro'
     Else if ScrollBar1.Position=12 Then
      Panel1.Caption:='Dezembro';
/////////
     if ScrollBar1.Position=13 Then begin
      ScrollBar1.Position:=1;
       Panel3.Caption:=FloatToStr(StrToFloat(Panel3.Caption)+1);
        end;
     if ScrollBar1.Position=0 Then begin
      ScrollBar1.Position:=12;
       Panel3.Caption:=FloatToStr(StrToFloat(Panel3.Caption)-1);
        end;
     Calendar1.Month:=ScrollBar1.Position;
   Calendar1.Year:=StrToInt(Panel3.Caption);

end;

procedure TFormAgenda.ScrollBar2Change(Sender: TObject);
begin
     Panel3.Caption:=FloatToStr(StrToFloat(Panel3.Caption)-1);
     Calendar1.Year:=StrToInt(Panel3.Caption);
end;

procedure TFormAgenda.ScrollBar3Change(Sender: TObject);
begin
     Panel3.Caption:=FloatToStr(StrToFloat(Panel3.Caption)+1);
      Calendar1.Year:=StrToInt(Panel3.Caption);
end;

procedure TFormAgenda.FormCreate(Sender: TObject);
begin
     Panel1.Caption:=FormatDateTime ('mmmm', Date);
      Panel3.Caption:=FormatDateTime ('yyyy', Date);


end;

procedure TFormAgenda.SpeedButton1Click(Sender: TObject);
begin
     TabelaAgenda.Insert;
      TabelaAgenda['Data']:=(IntToStr(Calendar1.Day)+'/'+ IntToStr(Calendar1.Month)+'/'+IntToStr(Calendar1.Year));;
       DBGrid1.SetFocus;
        DBGrid1.SelectedIndex:=1;

end;

procedure TFormAgenda.SpeedButton2Click(Sender: TObject);

begin
  if TabelaAgenda['nome']<>null Then begin
   case MessageDLG ('Tem certeza que deseja apagar o registro? ', MtConfirmation, [MBYes, MBNo],0) of
    IdYes:TabelaAgenda.Delete;
end;
end else
 ShowMessage ('não há registro a ser apagado');
end;
procedure TFormAgenda.Timer1Timer(Sender: TObject);
begin
   Panel1.Caption:=FormatDateTime ('mmmm',Date);
    Panel3.Caption:=FormatDateTime ('yyyy',Date);
     Panel7.Caption:='Hoje: ' + DateTimeToStr(now);

     if Panel1.Caption='janeiro' Then
     ScrollBar1.Position:=1
     Else if Panel1.Caption='fevereiro' Then
       ScrollBar1.Position:=2
     Else if Panel1.Caption='março' Then
       ScrollBar1.Position:=3
     Else if Panel1.Caption='abril' Then
      ScrollBar1.Position:=4
     Else if Panel1.Caption='maio' Then
       ScrollBar1.Position:= 5
     Else if Panel1.Caption='junho' Then
       ScrollBar1.Position:=6
     Else if Panel1.Caption='julho' Then
       ScrollBar1.Position:=7
     Else if Panel1.Caption='agosto' Then
       ScrollBar1.Position:=8
     Else if Panel1.Caption='setembro'Then
       ScrollBar1.Position:=9
     Else if Panel1.Caption='outubro' Then
       ScrollBar1.Position:=10
     Else if Panel1.Caption='novembro'Then
       ScrollBar1.Position:=11
     Else if Panel1.Caption='dezembro'Then
      ScrollBar1.Position:=12 ;

end;



procedure TFormAgenda.Timer2Timer(Sender: TObject);
begin
     Panel7.Caption:='Hoje: ' + DateTimeToStr(now);
end;

procedure TFormAgenda.Edit1Change(Sender: TObject);
begin
    TabelaAgenda.IndexFieldNames:='Nome';
     TabelaAgenda.FindNearest ([Edit1.Text]);
end;

procedure TFormAgenda.SpeedButton3Click(Sender: TObject);
begin
     FormPesquisa.Show;
end;


end.

