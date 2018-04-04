set -xeuo pipefail

pushd $(dirname $0)
SCRIPTPATH=$(pwd)

git submodule update --init --recursive || true

rm -rf $HOME/.dotfiles
ln -s $SCRIPTPATH/. $HOME/.dotfiles

rm -f $HOME/.dircolors
ln -s $SCRIPTPATH/.dircolors $HOME/.dircolors

rm -f $HOME/.Xresources
ln -s $SCRIPTPATH/.Xresources $HOME/.Xresources

rm -f $HOME/.zshenv
ln -s $SCRIPTPATH/.zshenv $HOME/.zshenv

rm -f $HOME/.zshrc
ln -s $SCRIPTPATH/.zshrc $HOME/.zshrc

rm -rf $HOME/.oh-my-zsh
ln -s $SCRIPTPATH/thirdparty/oh-my-zsh $HOME/.oh-my-zsh

rm -rf $HOME/.oh-my-zsh/custom/themes/powerlevel9k
mkdir -p ~/.oh-my-zsh/custom/themes
ln -s $SCRIPTPATH/thirdparty/powerlevel9k $HOME/.oh-my-zsh/custom/themes/powerlevel9k

popd

cleanup() {
    popd || true
}
trap cleanup EXIT
