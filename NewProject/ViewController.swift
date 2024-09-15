import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTeam()
    }
    
    private func updateTeam() {
        helper.addPerson(User(name: "Сергей", lastName: "Смирнов", login: "SmirnovS", password: "Password-1"))
        helper.addPerson(User(name: "Иван", lastName: "Иванов", login: "IvanovI", password: "Password-2"))
        
        for person in helper.getPeople() {
            print(User.userName.getFullName())
        }
    }
}
