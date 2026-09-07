cask "flowwatch" do
  version "2.7.4"
  sha256 "465b72b6f07192e888087dfb6f692c174d537cc0224f2fb1a210b832d8f695a5"

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
