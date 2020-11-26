<h1 align="center">Font Changer</h1>

<div align="center">
  <!-- Version -->
    <img src="https://img.shields.io/badge/Version-v3.0.0.1-blue.svg?longCache=true&style=popout-square"
      alt="Version" />
  <!-- Last Updated -->
    <img src="https://img.shields.io/badge/Updated-March 05, 2020-green.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
</div>

<div align="center">
  <strong>Font Changer allows the user to download over 200 fonts and apply them. If the user doesn't like any of the fonts or the font they want isn't in the list, then they can put the ttf files in a custom folder in internal storage! After installing and rebooting, open a terminal emulator and type su hit enter then type font_changer and choose option 1 to download one of the fonts provided.
</div>

<div align="center">
  <h3>
    <a href="https://github.com/xaffan/fontchanger">
      Source Code
    </a>
  </h3>
</div>

## Bootloops
If for whatever reason you bootloop and you dont have twrp, just wait 60 seconds in the bootloop and the module will automagically be disabled and your device will reboot automatically and then boot up just fine.

## Shortcut Options

  -c|--cemoji [custom emoji]  apply the custom emoji
  e.g., font_changer -c <name of custom emoji>
  e.g., font_changer --cemoji <name of custom emoji>
  
  -d|--cfont [custom font]    apply a custom font
  e.g., font_changer -d <name of custom font>
  e.g., font_changer --cfont <name of custom font>

  -e|--emoji [emoji]          apply an emoji
  e.g., font_changer -e <name of emoji>
  e.g., font_changer --emoji <name of emoji>

  -f|--font [font]            apply a font from downloadable list
  e.g., font_changer -f <name of font>
  e.g., font_changer --font <name of font>

  -h|--help                   show this message
  e.g., font_changer -h
  e.g., font_changer --help

  -m|--restoreemoji           restore just stock emoji but keep fontchanger font
  e.g., font_changer -m
  e.g., font_changer --restoreemoji

  -n|--restorefont            restore just stock font but keep fontchanger emoji
  e.g., font_changer -n
  e.g., font_changer --restorefont

  -r|--random                 apply a random font
  e.g., font_changer -r
  e.g., font_changer --random

  -s|--current                show current font
  e.g., font_changer -s
  e.g., font_changer --current

  -z|--delete                 delete downloaded font and emoji zips if they exist
  e.g., font_changer -z
  e.g., font_changer --delete

## Support
- Please open an issue on my github page <a href="https://github.com/Magisk-Modules-Repo/fontchanger"> Github </a> or if your on Telegram please join <a href="https://t.me/fontchange_magisk"> Telegram </a> Telegram i will see and fix the issue faster as I am always on Telegram.

## Compatibility
- Magisk 19.0 +
- All devices
- All Android versions ( Now Supports Android 10 )
- Roboto/Google-Sans/Product-Sans font as default font (One Plus CAN USE slate font)

## Credits
- Font Files from <a href="https://forum.xda-developers.com/android/themes/fonts-flashable-zips-t3219827">@giaton @xdadevelopers</a>
- For making Midnight Core <a href="https://forum.xda-developers.com/member.php?u=8918441">@oldmid @xdadevelopers</a>
- For making and allowing me to use his busybox <a href="https://forum.xda-developers.com/member.php?u=4544860">@osm0sis</a>
- For some code and the update feature <a href="https://t.me/vr25xda/">@vr25</a>
- For creating some awesome fonts! <a href="https://forum.xda-developers.com/apps/magisk/avfonts-march-6-t3760827">@lupin_the_third</a>

## Changelog
## v3.0.0.3 - 26.11.2020
* Final version

## v3.0.0.2 - 3.13.2020
* Fix install issue

## v3.0.0.1 - 3.05.2020
* Add code in post-fs-data to prevent bootloops

## v3.0.0.0 - 2.18.2020
* This should be the final release of this zip....
* Any further updates will require you to flash the zip again but shouldnt be required since the terminal command will handle all updates now

## v2.9.0.3 - 2.16.2020
* Finally Fix all install errors

## v2.9.0.2 - 2.16.2020
* Redo busybox detection
* Add ccbins busybox detection

## v2.9.0.1 - 2.16.2020
* Fix busybox location during install

## v2.9.0.0 - 2.16.2020
* Check for script updates and rerun font_changer if updates are available
* Make it so I'll never need to release a zip ever again. All scripts/binaries needed will be downloaded if they are updated
* Remove /sbin symlink

## v2.8.0.0 - 2.2.2020
* Readd shortcut options. 
* Typos/bug fixes
* Now when you apply an avfont CURRENT= will show AVfont-<name of font>
* Add a random option. Will apply a random font
* Add a random avfont option

## v2.7.0.4 - 1.28.2020
* Stupid bash doesnt transfer alias between scripts when calling a script within a script

## v2.7.0.3 - 1.27.2020
* Fix Busybox issues

## v2.7.0.2 - 1.27.2020
* Fix symlink to /sbin in service.sh
* Add function to setup busybox aliases so commands actually work that dont come stock on some devices

## v2.7.0.1 - 1.26.2020
* Change aliases to Variables for bash

## v2.7.0.0 - 1.26.2020
* Fix big mistake in alias

## v2.6.0.8 - 1.26.2020
* Hopefully fix any internal storage issues
* Update curl

## v2.6.0.7 - 1.26.2020
* Finally fix internal storage issues

## v2.6.0.6 - 1.26.2020
* Fix internal storage access issue

## v2.6.0.5 - 1.26.2020
* Fix service.sh

## v2.6.0.4 - 1.26.2020
* Fix fonts not applying correctly
* Add support for LG stock Rom on Pie
* Fix delete zips, move them to seperate menus
* Remove all downloaded zips during install since i changed the structure of the zips
* Fix some typos/bugs
* Rename common folder to tools
* Fix symlink from $MODPATH to /sbin/Fontchanger

## v2.6.0.3 - 1.21.2020
* Fix issue with checking for empty directories

## v2.6.0.2 - 1.21.2020
* Fix issues with apps not opening and fonts not showing in terminal and internal storage issues

## v2.6.0.1 - 1.21.2020
* Fix Return to Menu Options

## v2.6.0.0 - 11.20.2019 - 1.21.2020
## HUGE UPDATE ##
* Add latest bash binary and switch from mksh to bash for terminal
* Fix some typos
* Fix Custom Emojis
* Add Android 10 and /product and /system/product support
* Updating with a font installed now backs up fonts and restores
* Major code rewrite
* Bug Fixes
* Add support for LG stock rom lockscreen clock
* Fix install and terminal logging
* Fix restore stock fonts/emojis
* Fix user fonts
* Fix cp errors on some devices
* Move post-fs-data to service.sh
* Add Busybox binary for unzipping
* Fix startup errors in terminal
* Now update lists only runs on first run and not when returning to menu
* Fix delete zip code logic

## v2.5.4.2 - 10.11.2019
* Fix user submitted fonts for good now
* Fix Conflicting font/emoji modules. (install will now abort if the user has any font or emoji module installed and its not disabled)
* If you install a font/emoji module after installing font changer then the terminal script will not run until you remove that conflicting module
* Make all menus while loops so entering an invalid option no longer exits the script but just redisplays the menu now
* entering capital letters is now fully supported. so when asked enter y or n you can now enter Y or N and the script will automatically change it to a lowercase letter via tr command
* Redo main menu
* Remove the shortcut flags for now (will add them back at a later time after i clean the code up)
* Alot of other small issues
* Add avFonts

## v2.5.4-1 - 9.3.2019
* Fix user submmitted fonts not applying correctly

## v2.5.4 - 9.3.2019
* Hopefully fix user submitted and issue of having multiple custom font folders
* Fix invalid function. Somehow got renamed
* Hopefully fix issue of functions script not found error for a few of you on magisk 18

## v2.5.3 - 8.31.2019
* Fix Install.log failure

## v2.5.2 - 8.29.2019
* Forgot to change perms on zip binary
* Move code around to allow install and logging file to be created

## v2.5.1 - 8.28.2019 - 8.29.2019
* Remove all /cache stuff. Seems some devices cant mount /cache rw
* Fix code detecting other font modules installed that will cause issues. now will abort if another font or emoji module is installed and not disabled
* Fix issue in v2.4/2.5 where people couldnt install
* Add zip binary for logging zip
* Fix user submitted font menu

## v2.5 - 8.22.2019 - 8.27.2019
* Fix issues with no custom fonts or emojis exist and script getting stuckAugust 29
* Fix an issue wiAugust 29th updating fonts list. Would give a false positive errorAugust 29
* Fix some issuesAugust 29 with backing up fonts and emojis
* Now Restore StoAugust 29ck Font and/or Emojis works
* Fix installs onAugust 29 magisk with magisk.img
* Add Random optiAugust 29on. Chossing it will apply a random font
* Add a delete zips option to save space
* General Fixes/typos
* Now fonts/emojis lists update automatically
* Fix up logging option. Now you can choose option 8 to collect all logs i need to fix bugs and either send me the Fontchanger_logs.zip from internal storage or send me the termbin link on screen
* Fix some issues with the flag shortcuts

## v2.4 - 8.21.2019
* Fix installs without any font or emoji installed first with the backup

## v2.3 - 8.21.2019
* Fix New Installs

## v2.2 - 8.18.2019 - 8.20.2019
* Add User-Submitted/Created Fonts
* Add better install logging
* Fix some typos
* Add backup and restore of any installed font or emojis installed if installing te same version again or a newer version
* Fix updating of font/emoji lists

## v2.1 - 8.16.2019
* Fix a few install typos
* Fix issue where people couldnt install due to internet check. Now if the first internet check passes it skips the other 2 checks.

## v2.0 - 8.16.2019
* Add update font/emoji lists. Use -u or --upgrade to use or choose the option in main menu. The lists are used to show you which fonts/emojis are available.
* Cleanup help. Split help between custom help and option help.
* Now if the zip already exists in Fontchanger folder it wont redownload.(if short zip errors youll need to delete the zip from the Fontchanger/Emojis or Fontchanger/Fonts folder and then choose that font/emoji again)
* Add custom emoji option. The directory setup is the same as custom font except you only need one file named NotoColorEmoji.ttf
* Fix change back to stock font
* Add a way to go back to stock emoji
* If going back to stock font and you have an emoji as well you can keep the emoji.
* Fix logging code. no more cant start errors when running font_changer
* Fix -c shortcut flag
* Hardlink /sbin instead of softlinking (now any changes to files in /sbin/.Fontchanger or /data/adb/modules/Fontchanger will be applied to the link
* code cleanup/typo fixes

## v1.9 - 8.14.2019
* Cleanup some unneeded code
* Fix the find errors
* Fix a couple typos

## v1.8 - 7.12.2019 - 8.13.2019
* Revamp entire install process. starting with v1.9 youll no longer have to reboot to updat because everything is symlinked to /sbin (thanks @vr25 for this idea and code)
* Rework custom option (actually works now if you follow the video tutorial on <a href="https://john-fawkes.com/fontchanger.html">Fontchanger Custom Tutorial</a> or <a href="https://www.youtube.com/watch?v=YLUl5X-uVZc">Fontchanger Youtube link</a>)
* Now fonts with only one file can be applied.
* add ttc support
* revamped help menu. choose from main menu or use font_changer -h or font_changer -help
* new shortcuts options. 
Options:
    -a|—font [font name]        apply the font
    -d|—cfont [custom font]     apply the custom font
    -h|—help                    help
    -l|—listc                   list custom fonts
    -m|—list                    list fonts <basically skips main menu>
    -s|—current                 show current font
    -u|—update                  Update the font list and emoji list
* New colors to make certain things stand out more such as your current font
* bug fixes for things like choosing y on reboot no longer shows back to main menu.
* fix custom fonts (hopefully)
* start emoji support
* Better logging support. now it will put everything i need to fix bugs into a tar.xz in the Fontchanger folder in internal storage. please send me this tar.xz if you encounter any bugs ( This feature will be finished in v2.0)
* added GNU sleep command compiled from source code. no more sleep invaild errors.
* added progress bar. now list loads faster. (will be applied to custom list in later update)
* Update feature. now you can use -u flag or —update to update the font list and emoji list. This is what the module uses to show the list of fonts and emojis on my website and pulls the font files from this list.

## v1.7 - 6.14.2019
* Fix custom Fonts applying for devices that dont use Roboto as default font
* No longer requires Roboto as default font

## v1.6 - 6.14.2019
* Add new connection checker
* fix shebang for whatever reason

## v1.5 - 6.14.2019
* Add osm0sis busybox to use ping durning install

## v1.4 - 6.14.2019
* Add curl during install for users that dont have curl on their devices

## v1.3 - 6.14.2019
* Fix issue with curl choosing multiple fonts. Everything below 100 will work now. 
* Fix ttf typo in help
* Other bug fixes/typos

## v1.2 - 6.14.2019
* Fix typo with fonts. fonts will be found now. sorry about that

## v1.1 - 6.11.2019
* Fix Duplicate fonts being applied by removing old font files when applying a new font
* Fix custom fonts showing in a list correctly
* Rename custom font files to roboto since roboto is 99% of the time the default font

## v1 - 6.04.2019
* Initial Version
