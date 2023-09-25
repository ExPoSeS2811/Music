import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.rootViewController = OnboardingViewController(image: UIImage(named: "Onboarding1")!, headerTitle: "Welcome to MusicApp: Your favorite tracks in one place", title: "Welcome to MusicApp, a unique music app that offers you a limitless world of music in the palm of your hand")

            window.makeKeyAndVisible()
        }
        return true
    }
}
