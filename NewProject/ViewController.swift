import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let redCustomButton = CustomButton(buttonTitle: "Show New User", buttonColor: .red, showShadow: false)
    private let greenCustomButton = CustomButton(buttonTitle: "Hide User", buttonColor: .green, showShadow: true)
    private let stackView = UIStackView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        helper.addUsers(userRepository.getUsersRequest())
        view.backgroundColor = .orange
        view.alpha = 1.0
        updateTeam()
        
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
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
        textLabel.textAlignment = .center
    }

    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(redCustomButton)
        stackView.addArrangedSubview(greenCustomButton)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 230),
            stackView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}

