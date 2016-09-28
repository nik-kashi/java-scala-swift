echo "START: compilation started"
javac java/JavaTest.java
cd c
gcc -o cTest cTest.c
cd ..
cd swfexec
swift build
cd ..
cd scala
scalac scalaTest.scala
cd ..
echo "compilation finished. Now benchmarking starts:"
echo "-----------------------------------------------------C-----------------------------------------------------"
cd c
time ./cTest
cd ..
echo "-----------------------------------------------------JAVA-----------------------------------------------------"
cd java
time java JavaTest
cd ..
echo "-----------------------------------------------------SCALA-----------------------------------------------------"
cd scala
time scala -classpath . Hi
cd ..
echo "-----------------------------------------------------SWIFT-----------------------------------------------------"
cd swfexec
time .build/debug/swfexec
cd ..
echo "END!!"
