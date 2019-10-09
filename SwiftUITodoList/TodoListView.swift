import SwiftUI

struct TodoListView: View {
    @EnvironmentObject var controller: TodoController
    @State var isShowAlert = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach (controller.todos, content: TodoView.init)
            }
                
            .navigationBarTitle("Todo List")
            .navigationBarItems(trailing: NewTodoButton().environmentObject(self.controller))
        }
    }
}

struct TodoView: View {
    @State var todo: Todo
    
    var body: some View {
        Text(todo.label)
    }
}

struct NewTodoButton: View {
    @EnvironmentObject var controller: TodoController
    
    var body: some View {
        Button(action: {
            let todo = Todo()
            todo.label = "hoge"
            self.controller.append(todo: todo)
        }) { Text("New") }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
