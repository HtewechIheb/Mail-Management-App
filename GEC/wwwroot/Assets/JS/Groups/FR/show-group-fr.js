﻿var sidebarGroupsArray;

//Bind Sidebar Loading Event
bindGroupsLoading("groups-menu-item", "group-node");

//Bind Sidebar Searching Event
bindGroupSearching("submenu-group-search", "group-node");

//Build Sibar Menu
buildGroupsMenu(groupsArray, "groups-menu-item", "group-node");
