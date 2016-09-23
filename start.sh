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
java JavaTest
cd ..
cd scala
sbt run
cd ..
cd swfexec
.build/debug/swfexec
cd ..
echo "END!!"
