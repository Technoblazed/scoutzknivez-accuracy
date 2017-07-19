#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name        = "Scoutzknivez Accuracy Enforcer",
	author      = "Techno",
	description = "Sets weapon accuracy on s/k maps, used on a multimap server",
	version     = "1.0.0",
	url         = "https://github.com/Technoblazed/scoutzknivez-accuracy"
};

public void OnMapStart()
{
	char currentMap[64];

	GetCurrentMap(currentMap, sizeof(currentMap));

	if (StrContains(currentMap, "scoutzknivez", false))
	{
		ServerCommand("weapon_accuracy_nospread 0;");
	}
	else
	{
		ServerCommand("weapon_accuracy_nospread 1;");
	}
}
