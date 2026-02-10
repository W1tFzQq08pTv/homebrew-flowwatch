cask "flowwatch" do
  version "1.3.2"
  sha256 "b0880ba82eb18b956b6a61415e46faf264d15da0b9672d7c2cc707e6ef3bb2ec"

  url "https://github.com/huangxida/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/huangxida/FlowWatch"

  depends_on macos: ">= :ventura"

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
