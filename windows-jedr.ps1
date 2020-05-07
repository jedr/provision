# Create Firefox profiles
"C:\Program Files\Mozilla Firefox\firefox.exe" -CreateProfile D
"C:\Program Files\Mozilla Firefox\firefox.exe" -CreateProfile J
"C:\Program Files\Mozilla Firefox\firefox.exe" -CreateProfile M
"C:\Program Files\Mozilla Firefox\firefox.exe" -CreateProfile O
"C:\Program Files\Mozilla Firefox\firefox.exe" -CreateProfile W

# Create desktop shortcut for Firefox profiles
$s = (New-Object -COM WScript.Shell).CreateShortcut("$env:userprofile\Desktop\D.lnk"); $s.TargetPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'; $s.Arguments = '-P D -no-remote'; $s.WorkingDirectory = 'C:\Program Files\Mozilla Firefox'; $s.Save();
$s = (New-Object -COM WScript.Shell).CreateShortcut("$env:userprofile\Desktop\J.lnk"); $s.TargetPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'; $s.Arguments = '-P J -no-remote'; $s.WorkingDirectory = 'C:\Program Files\Mozilla Firefox'; $s.Save();
$s = (New-Object -COM WScript.Shell).CreateShortcut("$env:userprofile\Desktop\O.lnk"); $s.TargetPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'; $s.Arguments = '-P O -no-remote'; $s.WorkingDirectory = 'C:\Program Files\Mozilla Firefox'; $s.Save();
$s = (New-Object -COM WScript.Shell).CreateShortcut("$env:userprofile\Desktop\M.lnk"); $s.TargetPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'; $s.Arguments = '-P M -no-remote'; $s.WorkingDirectory = 'C:\Program Files\Mozilla Firefox'; $s.Save();
$s = (New-Object -COM WScript.Shell).CreateShortcut("$env:userprofile\Desktop\W.lnk"); $s.TargetPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'; $s.Arguments = '-P W'; $s.WorkingDirectory = 'C:\Program Files\Mozilla Firefox'; $s.Save();

# Create empty temp.txt on Desktop
New-Item "$env:userprofile\Desktop\temp.txt" -ItemType file