# Dom's Nexus
Dom's Nexus is a data pack library and framework designed to make Minecraft mapmaking easier and more streamlined, and to introduce various functions to allow for very sophisticated mechanics.

Documentation is written on the wiki: https://doms-nexus.fandom.com/wiki/Dom%27s_Nexus_Wiki
NOTE: The wiki is a major work in progress.

If you want to suggest updates, give your suggests on my Discord server: https://discord.gg/AV8N6zP

# Official Modules
Modules are special data packs which hook into the Nexus via various function tags to add features to the game.

The Template Module implements various random mechanics for the purposes of showcasing how to use the Nexus. The current version implements four entities and one object. The four entities are a skull mob, a physics-based soccer ball, a car, and the spider brain. The one object is a basic sphere generator. The attached resource pack contains the relevant assets used by the module.
https://github.com/Dominexis/Template-Module

The External Time Measurer makes the lag manager compatible with data packs that are not hooked into the Nexus. It works by having the Nexus be first enabled and the External Time Measurer be last enabled.
https://github.com/Dominexis/External-Time-Measurer

The Database Library adds an NBT storage database system commonly used for inventory save states and player-specific NBT.
https://github.com/Dominexis/Database-Library

The Function Tree Library adds a function tree system used to execute arbitrary functions in a score-driven space.
https://github.com/Dominexis/Function-Tree-Library

The Resource Pack Merger is used to merge several resource packs into one for use with the Dom's Nexus module collection. It is not itself a module but is useful to use alongside them.
https://github.com/Dominexis/Resource-Pack-Merger

The Module Manager is used to create blank template modules for Dom's Nexus, and can also update the version numbers of existing modules.
https://github.com/Dominexis/Module-Manager

# Terms of Use
These are the terms of use for using Dom's Nexus and the official modules for development. Any restrictions posed by these terms supersede freedoms granted by the attached license.
1) Anything you do with any of these packs including modification or distribution, credit me and link back to my YouTube channel: https://www.youtube.com/c/Dominexis
2) You are allowed to modify the Nexus if it is used in a map or on a server in any way you wish, but you are not allowed to publicly redistribute the modified version of the Nexus outside of a map. You are allowed to include the Nexus in a map and distribute the map whether the Nexus is modified or unmodified. But do not distribute the Nexus outside of a map. Instead, link to this repository.
3) The terms applied to the Nexus also apply to the External Time Measurer, the Database Library, and the Function Tree Library.
4) Do not distribute Nexus modules outside of a map that rely on a modified version of the Nexus. Any module which is publicly distributed expects the Nexus to contain certain features and releasing a module which relies on a modified version of the Nexus would create compatibility issues. Every module which you release as a standalone module outside of a map must depend on an official unmodified version of the Nexus.
5) You may modify and redistribute the Template Module in any way you wish.

# Support
If you like what I do with the Nexus, consider donating at my Patreon: https://www.patreon.com/Dominexis

# Special Thanks
Certain features of the Dom's Nexus library were inspired by the work of others.

Player launch system, inspired by BigPapi's "Delta" library: https://github.com/BigPapi13/Delta

Database Library, inspired by rx's PlayerDB: https://github.com/rx-modules/PlayerDB

Event ID system, inspired by nphhpn's data pack: https://discord.com/channels/154777837382008833/157097006500806656/809831906266054686

# Beta Release
Currently Dom's Nexus is under an open beta, meaning that the feature list is incomplete, but I am releasing it to the world to stress test it before the official release. I am looking for people to point out flaws or bugs as well as suggestions for how to make it better and more intuitive.
