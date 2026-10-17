export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export EDITOR="nvim"
export VISUAL="nvim"

export GPG_TTY=$(tty)


export NVM_DIR="$HOME/.config/nvm"
export ANDROID_HOME="/mnt/E278E1D278E1A58F/dev/programs/Android_SDK"
export ANDROID_NDK_HOME="/mnt/E278E1D278E1A58F/dev/programs/Android_SDK/ndk/25.1.8937393/"
export JAVA_HOME="/usr/lib/jvm/java-25-openjdk"
export PATH=${PATH}:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/30.0.3:$JAVA_HOME/bin
export PATH="$ANDROID_NDK_HOME:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/opt/premake5:$PATH"
export PATH="$HOME/.local/opt/clipboard/bin:$PATH"
export PATH="$HOME/.local/opt/gradle-8.5/bin:$PATH"
export PATH="$HOME/.local/opt/Digital-Logic-Sim:$PATH"
. "$HOME/.cargo/env"
