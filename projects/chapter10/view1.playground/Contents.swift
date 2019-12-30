import UIKit


let label1 = UILabel(frame:CGRect(x:0, y:0, width:200, height:30))
label1.text = "안녕!"
label1.textColor = UIColor.blackColor()
label1.font = UIFont.boldSystemFontOfSize(20.0)
label1.textAlignment = NSTextAlignment.Center


let imageView1 = UIImageView(frame:CGRect(x:20, y:20, width:280, height:50))
imageView1.image = UIImage(contentsOfFile: "house.png")


let buttonView = UIView(frame:CGRect(x:0,y:0,width:200,height:50))
let button1 = UIButton(type: .System)
button1.setTitle("로그인", forState:.Normal)
button1.sizeToFit()
button1.center = CGPoint(x:100,y:25)
buttonView.addSubview(button1)

