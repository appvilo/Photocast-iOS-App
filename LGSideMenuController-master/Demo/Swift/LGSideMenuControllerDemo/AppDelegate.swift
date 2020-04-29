//
//  AppDelegate.swift
//  LGSideMenuControllerDemo
//

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
    
        
        let viewController: UIViewController
    
        viewController = ViewController()

        
        let navigationController = NavigationController(rootViewController: viewController)
        
        let mainViewController = MainViewController()
        mainViewController.rootViewController = navigationController
        mainViewController.setup(type: 0)
        
        UINavigationBar.appearance().barTintColor =  UIColor.orange
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.backgroundColor = .white
        window!.rootViewController = mainViewController
        window!.makeKeyAndVisible()

        return true
    }

}

