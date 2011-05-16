part1 = "http://foo.bar/one/two/three/ok"
part2a = "../UpOneLevel"
part2b = "/TopLevel"
part2c = "CurrentLevel"

part2 = part2a
part2 = part2b
part2 = part2c

part1Array = part1.split('/')
part2Array = part2.split('/')

if part2[0..1] == ".." then
  upDir = part2Array.select{|e| e == ".."}.length
  processedPart1 = part1Array[0..(-1 - upDir)].join('/') + "/"
  url = processedPart1 + part2Array[upDir..-1].join('/')
#elsif part2[0] == "." then
  #url = part1Array.join('/')[0..
elsif part2[0] == "/" then
  url = part1Array[0..2].join('/') + part2
else
  url = part1Array[0..-2].join('/') + "/" + part2
end
   
