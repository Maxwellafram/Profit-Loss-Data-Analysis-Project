SELECT 
GL.Date,
CL.Day,
CL.Month,
CL.Quarter,
CL.Year,
GL.Entry_No,
CA.Account,
CA.Account_key_Chart_of_Accounts,
CA.Class,
CA.Report,
CA.Sub_Account,
CA.Sub_Class,
CA.SubClass2,
GL.Amount,
GL.Details,
GL.Territory_key,
DT.Country,
DT.Region
FROM [Financial Report Data_Chart of Accounts] as CA
LEFT JOIN [Financial Report Data_GL] as GL
ON CA.Account_key_Chart_of_Accounts = GL.Account_key
LEFT JOIN [Financial Report Data_Territory] as DT
ON GL.Territory_key = DT.Territory_key_Territory
LEFT JOIN [dbo].[Financial Report Data_Calendar] as CL
ON GL.Date = CL.Date_Calendar
WHERE CA.Report = 'Profit and Loss'




