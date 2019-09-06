Sub mutiple_year():

Dim ws As Worksheet
    For Each ws In ActiveWorkbook.Worksheets
    ws.Activate
Dim Ticker As String
Dim YOpen As Double
Dim YClose As Double
Dim Yearly_change As Double
Yearly_change = 0
Dim Per_Change As Double
Dim SummaryTable As Integer

SummaryTable = 2


'LastRow = Cells(Rows.Count, 1).End(xlUp).Row

    
    'labeling'
    Cells(1, 9).Value = "Ticker"
    Cells(1, 10).Value = "Yearly Change"
    Cells(1, 11).Value = "Percent Change"
    Cells(1, 12).Value = "Total Stock Value"
    
    'Data'
    'Date = Cells(i, 2).Value

    
    lastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
    
    For i = 2 To lastRow
    
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
        
        
        'Fix this only prints out 4-5 lines and they are just them same ones
            Ticker = Cells(i, 1).Value
            
            Range("I" & SummaryTable).Value = Ticker
            
            YOpen = Cells(i, 3).Value
            YClose = Cells(i, 6).Value
            
            Yearly_change = YClose - YOpen
            
            Cells(SummaryTable, 10).Value = Yearly_change
            
            
            'Yearly_change = 0
            
            Per_Change = (YClose - YOpen) / YOpen 'has it set to 0/0 ?
            
            Cells(SummaryTable, 11).Value = Per_Change
            ''Add percent format
            
            Cells(SummaryTable, 11).NumberFormat = "00.0%"
            
            Volume = Cells(i, 7).Value
            
            Cells(SummaryTable, 12).Value = Volume
            
            
            
            SummaryTable = SummaryTable + 1
            
            
        Else
        
            Yearly_change = Yearly_change + Cells(i, 10).Value
        
        End If
        
        Next i
        
        
    
    'Color
    
    ColLastRow = Cells(Rows.Count, 10).End(xlUp).Row
    
    For c = 2 To ColLastRow
    
      If (Cells(c, 10).Value >= 0) Then
               Cells(c, 10).Interior.ColorIndex = 4
       ElseIf (Cells(c, 10).Value < 0) Then
           Cells(c, 10).Interior.ColorIndex = 3
        End If
    Next c
    
    
    'Challenge not done
    
    ''Dim rng As Range
   ' 'Dim PMax As Double
    ''Dim Min As Double
    ''Dim GrVol As Double
    
    ''Set rng = Range("J")
    
    ''PMax = Application.WorksheetFunction.Max(rng)
    
    
    ''Cells(2, 18).Value = PMax
    
        
        
            
            
    
    
    ''SummaryTable = SummaryTable + 1
    
    
 
    
    
    Next ws
    
    
    

    

    
End Sub



