VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2565
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2565
   ScaleWidth      =   5790
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Your product here !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   178
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C9FAFC&
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   360
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'NOTE TO RESET THE EXECUTION GOTO THIS KEY IN REGEDIT
'HKEY_CURRENT_USER\Software\VB and VBA Program Settings\me


Sub getit()
ret = GetSetting("me", "0", "Runcount")
G$ = Val(ret) + 1
Form1.Caption = (G$) & " Times you Execute this product"

SaveSetting "me", "0", "RunCount", G$
If G$ > 5 Then

Confirm = MsgBox("Sorry its time to register your product !", vbYesNo, "Sorry trial period expired")
If Confirm = vbYes Then

Shell "start http://www.Productname.somthing", vbNormalFocus
Else
MsgBox "You like this techniq?", vbDefaultButton4, "Ok thx vote if you like "

End
End If
End If


End Sub

Private Sub Form_Load()

getit

End Sub
