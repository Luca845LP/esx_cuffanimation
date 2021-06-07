~~**Report Bugs on Github!**~~
### Support Moved to https://discord.gg/HaWdXdSmtg

*Download:* [https://github.com/Luca845LP/esx_cuffanimation](https://github.com/Luca845LP/esx_cuffanimation)

*Preview:*
https://streamable.com/998sl5
if the video not working [https://streamable.com/998sl5](https://streamable.com/998sl5)

*Installation:*

Search in 'esx_policejob/client/main.lua' for
```
elseif action == 'handcuff' then
TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
```
Replace it with:
```
elseif action == 'handcuff' then
TriggerServerEvent('esx_cuffanimation:startArrest',
GetPlayerServerId(closestPlayer))
Citizen.Wait(3100)
TriggerServerEvent('esx_policejob:handcuff',
GetPlayerServerId(closestPlayer))
```

**Start The PoliceJob AFTER the cuff Script!**

Based on: [https://forum.cfx.re/t/release-esx-advanced-arrest-animation/750551](https://forum.cfx.re/t/release-esx-advanced-arrest-animation/750551)

*But is it way better than the Old one.*
