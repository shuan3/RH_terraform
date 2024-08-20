=IIF(Parameters!date_type.Value="Last Day",
FORMAT(
    IIF(Weekday(Today(),vbMonday)=1,DateAdd("d",-3,Today()),
    IIF(Weekday(Today(),vbMonday)=7,DateAdd("d",-2,Today()),DateAdd("d",-1,Today()))
    ), "MM-dd-yy"
),
IIF(Parameters!date_type.Value="Last Week",
FORMAT(
    DateAdd("d",-WEEKDAY(TODAY(),2),Today()),
    ), "MM-dd-yy"
' ),
IIF(Parameters!date_type.Value="Last Month",
FORMAT(DateSerial(Year(Today()),Month(Today())-1,1),"MM-dd-yy"),
IIF(Parameters!date_type.Value="Last Quarter",
FORMAT(DateSerial(Year(Today()),3*(((Month(Today())-1)\3)-1,+1),1),"MM-dd-yy"),
IIF(Parameters!date_type.Value="Last Year",
FORMAT(DateSerial(Year(Today())-1,1,1),"MM-dd-yy"),
IIF(Parameters!date_type.Value="Custom",
FORMAT(CDATE(Parameters!date.Value),"MM-dd-yy"),
FORMAT(CDATE(Parameters!date.Value),"MM-dd-yy")
)
)
)
)
)
)