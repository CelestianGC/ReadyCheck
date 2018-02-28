--
--
-- slash command
--
--

function onInit()
  if User.isHost()  then
    Comm.registerSlashHandler("readycheck", processReadyCheck);
  end
end

function processReadyCheck(sCommand, sParams)
  if User.isHost() then
    local wWindow = Interface.openWindow("readycheck","");
    if wWindow then
      local aList = ConnectionManagerADND.getUserLoggedInList();
      -- share this window with every person connected.
      for _,name in pairs(aList) do
        wWindow.share(name);
      end
    end
  end
end

