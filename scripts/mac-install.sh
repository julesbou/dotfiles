echo 'Save screenshots to Pictures folder';
defaults write com.apple.screencapture location "/Users/$(whoami)/Pictures/screenshot"

echo 'disable dashboard';
defaults write com.apple.dashboard mcx-disabled -boolean YES

echo '\r\n/!\ You can now run this script: https://gist.github.com/2260182\r\n';