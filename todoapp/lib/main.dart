import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TodoApp()));
}

class Todo {
  String title;
  String description;
  bool isDone;

  Todo({
    required this.title,
    required this.description,
    this.isDone = false,
  });
}

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<Todo> todos = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _addTodo() async {
    Todo? newTodo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Todo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(hintText: 'Enter title here'),
              ),
              SizedBox(height: 8.0),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(hintText: 'Enter description here'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(null);
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                Navigator.of(context).pop(Todo(
                  title: _titleController.text,
                  description: _descriptionController.text,
                ));
              },
            ),
          ],
        );
      },
    );

    if (newTodo != null) {
      setState(() {
        todos.add(newTodo);
      });
    }
  }

  void _removeTodoAtIndex(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  void _toggleTodoAtIndex(int index) {
    setState(() {
      todos[index].isDone = !todos[index].isDone;
    });
  }

  Widget _buildTodoItem(BuildContext context, int index) {
    final todo = todos[index];

    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.description),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _removeTodoAtIndex(index),
      ),
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (_) => _toggleTodoAtIndex(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: todos.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.assignment_turned_in, size: 64.0),
                  SizedBox(height: 16.0),
                  Text(
                    'You have no todos yet',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: _buildTodoItem,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
    );
  }
}
