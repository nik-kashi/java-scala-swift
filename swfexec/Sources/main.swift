var j: Int64 = 0;
var k: Int64 = 0;
for var i in 1 ... 1000000000 {
    k += j;
    if i % 3 == 1 {
        j += 1;
    }
}
print(j)
print(k)
