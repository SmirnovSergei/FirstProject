import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.alpha = 0.9
        updateTeam()
    }
    
    private func updateTeam() {
        helper.addUser(
            User(
                login: "SmirnovS",
                password: "Password-1",
                userName: Person(
                    name: "Сергей",
                    lastName: "Смирнов"
                )
            )
        )
        
        helper.addUser(
            User(
                login: "IvanovI",
                password: "Password-2",
                userName: Person(
                    name: "Иван",
                    lastName: "Иванов"
                )
            )
        )
        
        for user in helper.getPeople() {
            print(user.userName.fullName)
        }
    }
}
