function :add-task() {
  task="python ~/Dev/tasks/t/t.py --task-dir ~/Dev/tasks/list --list tasks"
  echo "Add a new task"
  read -r input
  task "$input"
  clear
  task
}

function :edi-task() {
  task="python ~/Dev/tasks/t/t.py --task-dir ~/Dev/tasks/list --list tasks"
  echo "Enter the task ID"
  read -r id
  echo "Enter the new description"
  read -r desc
  task -e "$id" "$desc"
  clear
  task
}

function :fin-task() {
  task="python ~/Dev/tasks/t/t.py --task-dir ~/Dev/tasks/list --list tasks"
  echo "Enter the ID"
  read -r id
  task -f "$id"
  clear
  task
}
