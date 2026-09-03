cask "flowwatch" do
  version "2.7.0"
  sha256 "367ac9e300dcdfd5a177c12911ea7c4d846400a06c5adaf5a0688035fad07dcb"

  url "https://github.com/W1tFzQq08pTv/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/W1tFzQq08pTv/FlowWatch"
  auto_updates true

  depends_on macos: :ventura

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
