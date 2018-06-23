set hh=%time:~-11,2%
set /a hh=%hh%+100
set hh=%hh:~1%
set dateseed=%date:~10,4%%date:~4,2%%date:~7,2%_%hh%%time:~3,2%%time:~6,2%

if not exist "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%" mkdir "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%"
cd "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%"
copy "C:\Users\schakra\.jenkins\workspace\PerformanceTest\*.*" "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%"
copy "C:\Users\schakra\.jenkins\workspace\PerformanceTest\HtmlReports\*.*" "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%"
copy "C:\Users\schakra\.jenkins\workspace\PerformanceTest\report\*.*" "C:\Users\schakra\.jenkins\workspace\backups\source\%dateseed%"
cd C:\Users\schakra\.jenkins\workspace\PerformanceTest\report


del * /S /Q
rmdir /S /Q "C:\Users\schakra\.jenkins\workspace\PerformanceTest\report"


C:\TestWheel-Phase2\apache-jmeter-3.0\bin\jmeter.bat -Jjmeter.save.saveservice.output_format=csv -n -t C:\TestWheel-Phase2\apache-jmeter-3.0\bin\Etax2290.jmx -l C:\Users\schakra\.jenkins\workspace\PerformanceTest\report\Etax2290Test.jtl  -e -o C:\Users\schakra\.jenkins\workspace\PerformanceTest\report\HtmlReports
