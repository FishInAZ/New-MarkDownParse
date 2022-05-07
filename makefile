all: test1 test2

test1: MarkdownParse.java
	javac MarkdownParse.java

test2: MarkdownParse.class MarkdownParseTest.class
	javac -cp lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:. MarkdownParseTest.java 
	java -cp lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar:. org.junit.runner.JUnitCore MarkdownParseTest 

