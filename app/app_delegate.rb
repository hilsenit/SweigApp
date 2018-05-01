class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # alert = UIAlertView.new
    # alert.message = "heykas"
    # alert.show
    #

    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'APP'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # @window.makeKeyAndVisible

    @green_view = UIView.alloc.initWithFrame(CGRectMake(10, 30, 39, 39))
    @green_view.backgroundColor = UIColor.blueColor

    @red_view = UIView.alloc.initWithFrame(CGRectMake(50, 50, 200, 200))
    @red_view.backgroundColor = UIColor.redColor
    @red_view.addSubview(@green_view)


    @window.addSubview(@red_view)


    true
  end
end
