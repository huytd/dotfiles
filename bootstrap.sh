sudo apt update
cp -rf ./helix ~/.config/helix
cp .tmux.conf ~/.tmux.conf

curl https://sh.rustup.rs -sSf | sh -s -- -y

cd /workspace

git clone https://github.com/helix-editor/helix
cd helix
cargo install --path helix-term
