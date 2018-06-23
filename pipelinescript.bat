node {
  stage 'Run JMeter Test'
  sh C://TestWheel-Phase2//apache-jmeter-3.0//bin//jmeter.bat  -Jjmeter.save.saveservice.output_format=csv -n -t C:/TestWheel-Phase2/apache-jmeter-3.0/bin/Etax2290.jmx -l
   C:/Users/schakra/.jenkins/workspace/PerformanceTest/report/Etax2290Test.jtl  -e -o C:/Users/schakra/.jenkins/workspace/PerformanceTest/report/HtmlReports

}
