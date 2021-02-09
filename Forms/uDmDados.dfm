object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 251
  Width = 573
  object fdCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\leand\Documents\CURSOS\CURSO DELPHI\ProjetoCur' +
        'soBasico\Banco de Dados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=LOCALHOST'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 88
  end
end
