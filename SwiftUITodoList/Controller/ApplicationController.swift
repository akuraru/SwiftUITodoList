class ApplicationController {
    let realmController: RealmController
    let todoController: TodoController
    
    static var controller = ApplicationController()
    static var shared: ApplicationController { get { ApplicationController.controller } }
    
    init() {
        realmController = RealmController()
        todoController = TodoController(realmController: realmController)
    }
}
