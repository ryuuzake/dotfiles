alias dots='/usr/bin/git --git-dir=/home/shiroe/.dotfiles --work-tree=/home/shiroe'
zoxide init fish | source

# opencode
# fish_add_path /home/shiroe/.opencode/bin

fish_add_path "/home/shiroe/.bun/bin"
fish_add_path "/home/shiroe/go/bin"
fish_add_path "/home/shiroe/.cargo/bin"


# pnpm
set -gx PNPM_HOME "/home/shiroe/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# nub
set -gx PATH "$HOME/.nub/bin" $PATH

# swift (swiftly)
fish_add_path "/home/shiroe/.local/share/swiftly/bin"
# Arch ships only the wide-char ncurses lib; shim for Swift
set -gx LD_LIBRARY_PATH "/home/shiroe/.local/swift-compat" $LD_LIBRARY_PATH

# vi
set -g fish_key_bindings fish_vi_key_bindings

set -Ux JAVA_HOME /usr/lib/jvm/default
