Remove-Item out/ -Recurse -ErrorAction Ignore
java -jar OSTRAJava-1.0-SNAPSHOT.jar compile src/ -d out/
java -jar OSTRAJava-1.0-SNAPSHOT.jar run out/