echo "START: compilation started"
javac java/JavaTest.java
cd swfexec
swift build
cd ..
cd scala
sbt compile
cd ..
echo "compilation finished. Now benchmarking starts:"
cd java
echo "-----------------------------------------------------JAVA-----------------------------------------------------"
time java JavaTest
cd ..
cd scala
echo "-----------------------------------------------------SCALA-----------------------------------------------------"
time sbt run
cd ..
cd swfexec
echo "-----------------------------------------------------SWIFT-----------------------------------------------------"
time .build/debug/swfexec
cd ..
echo "END!!"
