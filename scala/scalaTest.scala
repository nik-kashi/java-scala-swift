object Hi {
  def main(args: Array[String]) {
    var i = 0;
    var j:Long = 0;
    var k:Long = 0;
    for (i <- 1 to 1000000000) {
        k += j;
        if (i % 3 == 1) {
            j += 1;
        }
    }
    println(j)
    println(k)
  }
}
