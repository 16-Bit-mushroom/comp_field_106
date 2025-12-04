  import 'package:flutter/material.dart';

// --- Data Model ---
// A simple class to represent a single To-Do task.
class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({required this.title, this.isCompleted = false});
}

// --- Stateful Widget ---
class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  // The list holding all task data
  final List<TodoItem> _todoList = [];

  // Controller to manage text input field content
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textController.dispose();
    super.dispose();
  }

  // --- Logic Functions ---

  // Function to add a new task
  void _addTask() {
    String text = _textController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _todoList.add(TodoItem(title: text));
        // Clear the text field after adding
        _textController.clear();
      });
    }
  }

  // Function to delete a specific task by its index
  void _deleteTask(int index) {
    setState(() {
      _todoList.removeAt(index);
    });
  }

  // Function to toggle the completion status of a task
  void _toggleTaskStatus(int index) {
    setState(() {
      _todoList[index].isCompleted = !_todoList[index].isCompleted;
    });
  }

  // Function to clear all tasks (used by AppBar icon and FAB)
  void _clearAllTasks() {
    setState(() {
      _todoList.clear();
    });
  }

  // --- UI Build Method ---
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Requirement: AppBar with specific Title and Action button
      appBar: AppBar(
        title: const Text("Stateful Widget Lab Exam"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Clear All Tasks',
            onPressed: _clearAllTasks,
          ),
        ],
      ),

      // Requirement: Body Layout Column
      body: Column(
        children: [
          // Input Section container for styling
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[100],
            child: Column(
              children: [
                // Requirement: TextField for task input
                TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    labelText: 'Enter a task name',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.task_alt),
                  ),
                  onSubmitted: (_) => _addTask(), // Allow submitting via keyboard enter
                ),
                const SizedBox(height: 10),
                // Requirement: ElevatedButton to add task
                ElevatedButton.icon(
                  onPressed: _addTask,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(45), // Full width button
                  ),
                  icon: const Icon(Icons.add),
                  label: const Text("Add Task"),
                ),
              ],
            ),
          ),

          // Requirement: Task List Display (Expanded ListView)
          Expanded(
            child: _todoList.isEmpty
                ? const Center(child: Text("No tasks yet. Add some!"))
                : ListView.builder(
                    itemCount: _todoList.length,
                    itemBuilder: (context, index) {
                      final task = _todoList[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4.0,
                        ),
                        elevation: 2,
                        child: ListTile(
                          // Requirement: Leading icon toggles based on completion
                          leading: Icon(
                            task.isCompleted
                                ? Icons.check_circle
                                : Icons.circle_outlined,
                            color: task.isCompleted ? Colors.teal : Colors.grey,
                            size: 28,
                          ),
                          // Requirement: Title -> task text (with conditional strike-through)
                          title: Text(
                            task.title,
                            style: TextStyle(
                              fontSize: 18,
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : null,
                              color: task.isCompleted ? Colors.grey : Colors.black87,
                            ),
                          ),
                          // Requirement: Trailing IconButton (trash icon) -> deletes task
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
                            onPressed: () => _deleteTask(index),
                          ),
                          // Requirement: Tapping toggles status
                          onTap: () => _toggleTaskStatus(index),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),

      // Requirement: Floating Action Button (FAB) with refresh icon
      floatingActionButton: FloatingActionButton(
        onPressed: _clearAllTasks,
        backgroundColor: Colors.teal,
        child: const Icon(Icons.refresh),
        tooltip: 'Reset List',
      ),
    );
  }
}
