alias bazel_debug="bazel run tests -c dbg --run_under='gdb -ex \"catch throw\"'"
alias cat='bat'
alias ctags='ctags -R --exclude=.git .'
alias full_upgrade='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove && sudo apt autoclean'
alias global_ip='curl http://icanhazip.com'
alias makec='compiledb make'
alias ping='prettyping'
alias please='sudo'
alias sa='source ~/.bashrc'
alias ssh_no_key='ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no'
alias tmux='tmx2 new -A -s work'
run_until_fail() {
    iteration=0
    while $@; do
        echo "Iteration: $iteration";
        ((iteration+=1))
    done;
    echo "Iteration: $iteration";
}
bazel_compilation_database() {
  rm -rf bazel-compilation-database-*
  rm compile_commands.json
  RELEASE_VERSION=0.3.5
  curl -L https://github.com/grailbio/bazel-compilation-database/archive/${RELEASE_VERSION}.tar.gz | tar -xz
  bazel-compilation-database-${RELEASE_VERSION}/generate.sh
}
watch_files() {
  # inotifywait -q -m -r -e create -e delete -e move -e close_write -e modify $1 |
  inotifywait -q -m -r -e close_write $1 |
    while read -r filename event;
    do ${@:2};
    done;
}
swap() {
  local TMPFILE=tmp.$$
  mv "$1" "$TMPFILE" && mv "$2" "$1" && mv "$TMPFILE" "$2"
}

if [ -f ~/.my_bash_profile ]; then
    . ~/.my_bash_profile
fi
