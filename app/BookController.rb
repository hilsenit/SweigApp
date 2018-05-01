class BookController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.blueColor

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Blå side"
    @label.sizeToFit

    @label.center = CGPointMake(self.view.frame.size.width / 2 , self.view.frame.size.height / 2 )

    self.view.addSubview @label
  end
end
