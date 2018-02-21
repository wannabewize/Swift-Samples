import Foundation

let dirPath = "/Users/wannabewize/Projects"

let fm = FileManager.default

// try? : 에러가 발생하면 nil 반환. 동작 성공하면 셔널 반환
let contentsOfDir = try? fm.contentsOfDirectory(atPath: dirPath)

if let fileList = contentsOfDir {
   print("file list in \(dirPath)")
   for file in fileList {
      print("\(file)")
   }
}
else {
   print("에러")
}
