# Pro7 Media Sweeper
### A *work-in-progess* MacOS port of [Pro7-Media-Sweeper](https://github.com/arlinsandbulte/Pro7-Media-Sweeper) by Arlin Sandbulte.
![Screenshot](ScreenShot.png)

This app is still in early development stage and not yet functional.  
My plan is to make a crude, but effective, native MacOS app with Appkit/Storyboards/Objective-C.  

*Perhaps if this MacOS port was done with a scripting language it might be easier for others to understand and contribute to - but I wanted to get this done in as little spare time as possible so I used old ways that were most comfortable for me.  Feel free to re-write in AppleScript, JavaSript, Python etc.*


### TODO:
1. ~~Create this repository with an empty X-Code project.~~
2. ~~Create this Readme.~~
3. ~~Basic project settings, remove un-needed menus and start laying out and wiring up some controls.~~
4. Do we need to check if Pro7 is running? (Is it always okay to open and read all the docs and playlists while Pro7 is running?)
5. ~~Determine current media, library and playlist folders from Pro7 preferences.~~
6. ~~Show current media folder and make hand-editable and add browse/select UI.~~
7. ~~Test reading binary propresenter files as NSStrings to allow use of REGEX - (This is a typically a no-no and source of error - be careful)~~ (Should be fine for english systems/filenames)
8. ~~Determine all required REGEX patterns to quickly discover media file references in Mac created Presentation files~~
9. Decide if we should also scan for windows REGEX patterns to quickly discover media file references in Win created Presentation files
10. ~~Enumerate through all propresenter files in library and add to list of referenced media files.~~
11. ~~Add scanning progress UI?~~
12. ~~Enumerate through all playlist files and add to list of referenced media files~~
13. Perform tests to validate complete list of referenced media files is correct
14. Once confident in the list of all referenced media files, enumerate files in selected Media folder and for each one not recorded as being referenced by Pro7, move to swept folder (maintain same folder structure)
15. Record any errors moving files.
16. Record an undo script and add UI to show and run UNDOs?
17. Update UI with completion message and any error reports (and UNDO option?)

