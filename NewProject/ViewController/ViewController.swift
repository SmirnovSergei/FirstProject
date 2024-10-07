import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let redCustomButton = CustomButton(buttonTitle: "Show New User", buttonColor: .systemRed, showShadow: false)
    private let greenCustomButton = CustomButton(buttonTitle: "Hide User", buttonColor: .systemGreen, showShadow: true)
    //private let viewsList =
    private let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUsers()
        helper.addUsers(userRepository.getUsersRequest())
        view.backgroundColor = .systemGray4
        view.alpha = 1.0
        
        setupLabel()
        setupStackView()
        view.addViews(stackView)
        addAction()
        
        setupLayout()
    }
    
    private func updateUsers() {
        for user in userRepository.getUsersRequest() {
            
            print(user.userName.fullName)
        }
    }
    
    @objc
    private func redCustomButtonTapped() {
        textLabel.text = helper.getUsers().randomElement()?.userName.fullName ?? "Users not found..."
    }
}

// MARK: - Setup View
private extension ViewController {
    func setupLabel() {
        //        let randomUser = helper.getUsers().randomElement()?.userName.fullName ?? "Пользователи не найдены..."
        
        //        textLabel.text = randomUser
        textLabel.font = .systemFont(ofSize: 25, weight: .semibold)
        textLabel.textColor = .systemBlue
        textLabel.textAlignment = .center
    }
    
    func addAction() {
        redCustomButton.addTarget(
            self,
            action: #selector(redCustomButtonTapped),
            for: .touchUpInside
        )
        
        let hideUser = UIAction { _ in
            self.textLabel.text = ""
        }
        greenCustomButton.addAction(hideUser, for: .touchUpInside)
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 20
        
        stackView.addStackViews(textLabel, redCustomButton, greenCustomButton)
    }
}

// MARK: - Setup Layout
extension ViewController {
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 230)
        ])
    }
}
