install_swiftlint() {
    git clone https://github.com/realm/SwiftLint.git
    p=$(pwd) # snapshot
    cd SwiftLint
    swift build -c release
    mv .build/release/swiftlint /usr/local/bin/
    cd $p
    rm -r SwiftLint
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
