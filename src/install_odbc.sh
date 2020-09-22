Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	sudo apt -y install libsqlite3-dev unixodbc unixodbc-dev unixodbc-bin libsqliteodbc
	cp ./odbcinst.ini /etc/
	cp ./.odbc.ini ~/
}
Run "$@"
