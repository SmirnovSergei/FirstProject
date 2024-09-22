import UIKit

class ViewController: UIViewController {
    
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.alpha = 0.9
        updateTeam()
    }
    
    private func updateTeam() {
        for user in userRepository.getUsers() {
            print(user.userName.fullName)
        }
    }
}

