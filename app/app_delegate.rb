class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # designated initiliazer for controllers
    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [alphabet_controller, nav_controller]

    @window.rootViewController = tab_controller
    @window.makeKeyAndVisible

    @window_width, @window_height = [@window.frame.size.width - 100, @window.frame.size.height - 100]

    @points = [[0, 0], [0, @window_height], [@window_width, 0], [@window_width, @window_height]]
    @current_index = 0

    @view = UIView.alloc.initWithFrame [@points[@current_index], [100, 100]]
    @view.backgroundColor = UIColor.blueColor
    @window.addSubview(@view)

    animate_to_next_point

    true
  end


  def animate_to_next_point
    @current_index += 1
    @current_index = @current_index % @points.count #Keep @current_index in a loop from 0 - 3'

    UIView.animateWithDuration( 2,
      delay: 1,
      options: UIViewAnimationOptionCurveLinear,
      animations: lambda {
        @view.frame = [@points[@current_index], [100, 100]]
      },
      completion: lambda {|finished| # remember the OBJECT!
        self.animate_to_next_point
      }
    )
  end
end
