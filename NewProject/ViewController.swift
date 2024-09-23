import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let customButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        helper.addUsers(userRepository.getUsersRequest())
        view.backgroundColor = .orange
        view.alpha = 1.0
        updateTeam()
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(customButton)
    }
    
    private func updateTeam() {
        for user in userRepository.getUsersRequest() {
            
            print(user.userName.fullName)
        }
    }
    
    private func setupLabel() {
        let randomUser = helper.getUsers().randomElement()?.userName.fullName ?? "Пользователи не найдены..."
            
        textLabel.text = randomUser
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 300, height: 50)
    }
}

