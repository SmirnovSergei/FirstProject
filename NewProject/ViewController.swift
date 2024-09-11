import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTeam()
    }
    
    private func updateTeam() {
        helper.addPerson(name: "Сергей", lastName: "Смирнов")
        helper.addPerson(name: "Иван", lastName: "Иванов")
        
        for person in helper.getPeople() {
            print(person)
        }
    }
}
