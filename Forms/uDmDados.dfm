object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 372
  Width = 701
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
    Left = 216
    Top = 104
  end
end
