## WeKan ® Open Source kanban for FreeDOS and Bash

- In Progress.
- Only some menu options show something.
- Has counting of boards etc from SQLite database.
- Related MongoDB to SQLite migration script https://github.com/wekan/minio-metadata/blob/main/mongoexport-all-tables.sh
- https://www.meteor.com (Node.js+MongoDB) based WeKan Open Source kanban https://wekan.github.io and https://github.com/wekan/wekan

### Starting FreeDOS version

Tested at FreeDOS running at VirtualBox.

1. Download https://github.com/wekan/wedos/archive/refs/heads/main.zip
2. `unzip main.zip`
3. `cd wedos`
4. `w`

### Starting Bash version

Tested at Bash at Ubuntu 23.04. Works where Bash, Git and SQLite3 are available.

```
sudo apt -y install git sqlite3 

git clone https://github.com/wekan/wedos

cd wedos

./w.sh
```
