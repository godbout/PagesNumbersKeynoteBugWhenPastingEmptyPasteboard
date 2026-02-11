# showcasing bug in Pages, Numbers and Keynote with NSPasteboard

when pasting an Empty String ("") on a selected text on macOS with NSPasteboard, the selected text gets removed. that doesn't happen tho on Pages, Numbers and Keynote, old and new versions. the API is inconsistent and creates issues.

# instructions for the Apple people

1. download the source
2. build the project
3. give Accessibility Permissions to PagesNumbersKeynoteBugWhenPastingEmptyPasteboard
4. click on the 'paste "" on selected text' button
5. you then have 3 seconds to go select some text on an app
6. after 3 seconds NSPasteboard will paste "" on the selected text
7. you can see that the selected text is removed on any app (Safari, Xcode, third party apps) but it is not removed on Pages, Numbers and Keynote
