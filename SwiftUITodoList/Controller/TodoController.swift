import RealmSwift

class TodoController {
    @Published var todos: Results<Todo>
    weak var realmController: RealmController?
    
    static var shared: TodoController { get { ApplicationController.shared.todoController } }
    
    init(realmController: RealmController) {
        self.realmController = realmController
        self.todos = realmController.todos()
    }
    
    func append(todo: Todo) {
        try! realmController?.realm.write {
            realmController?.realm.add(todo)
        }
        
        self.todos = realmController!.todos()
    }
}

extension TodoController: ObservableObject {
    
}
