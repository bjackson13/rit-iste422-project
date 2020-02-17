all : build test run

test : build
	java -cp .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:build/ org.junit.runner.JUnitCore EdgeConnectorTest

run : build
	java -cp build/ RunEdgeConvert

build : clean
	javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar -d build/ src/java/*.java test/java/*.java

clean : 
	rm -f build/*.class
