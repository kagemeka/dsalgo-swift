install_swiftlint() {
    REPO=https://github.com/realm/SwiftLint
    TAG=0.50.3
    FILE=swiftlint_linux.zip
    URL=$REPO/releases/download/$TAG/$FILE
    rm -r tmp
    mkdir tmp
    cd tmp
    wget $URL
    unzip $FILE
    mv swiftlint /usr/local/bin/
    swiftlint --version
    cd ..
    rm -r tmp
}

install_swift-format() {
    BRANCH=release/5.7
    git clone -b $BRANCH https://github.com/apple/swift-format.git
    p=$(pwd)
    cd swift-format
    swift build -c release
    mv .build/release/swift-format /usr/local/bin/
    cd $p
    rm -r swift-format
}

install_swiftlint
install_swift-format

apt update
apt install -y python3-pip
pip install -U pip
pip install pre-commit
