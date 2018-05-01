class TapController < UIViewController
  def viewDidLoad # always use it to set up your controller
    super

    self.view.backgroundColor = UIColor.redColor

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Goood morning"
    @label.sizeToFit #The label resizes itself to perfectly fill the text size
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)

    self.view.addSubview @label

    self.title = "Sweig"

    # push gets called on the target
    right_button = UIBarButtonItem.alloc.initWithTitle("Push", style: UIBarButtonItemStylePlain, target: self, action: 'push')
    self.navigationItem.leftBarButtonItem = right_button
  end

  def push
    new_controller = BookController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(new_controller, animated: true)
  end
end
