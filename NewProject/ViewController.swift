import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let customButton = UIButton()
    private let stackView = UIStackView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        helper.addUsers(userRepository.getUsersRequest())
        view.backgroundColor = .orange
        view.alpha = 1.0
        updateTeam()
        
        setupLabel()
        setupButton()
        setupStackView()
//        view.addSubview(textLabel)
//        view.addSubview(customButton)
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
//        textLabel.frame = CGRect(x: 100, y: 100, width: 230, height: 50)
    }
        
    private func setupButton() {
        customButton.setTitle("Show FullName", for: .normal)
        customButton.setTitleColor(.black, for: .normal)
        customButton.backgroundColor = .green
//        customButton.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(customButton)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 230),
            stackView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

