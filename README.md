# jenkin-build-example
My experiments and testing for build Docker on Jenkins

File Jenkins configlocation:
```
nano /opt/homebrew/opt/jenkins/homebrew.mxcl.jenkins.plist 
```

File content:
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>homebrew.mxcl.jenkins</string>
        <key>LimitLoadToSessionType</key>
        <array>
                <string>Aqua</string>
                <string>Background</string>
                <string>LoginWindow</string>
                <string>StandardIO</string>
                <string>System</string>
        </array>
        <key>ProgramArguments</key>
        <array>
                <string>/opt/homebrew/opt/jenkins/bin/jenkins</string>
                <string>-Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true</string>
                <string>--httpListenAddress=127.0.0.1</string>
                <string>--httpPort=8080</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StandardErrorPath</key>
        <string>/opt/homebrew/var/log/jenkins/error.log</string>
        <key>StandardOutPath</key>
        <string>/opt/homebrew/var/log/jenkins/output.log</string>

        <key>EnvironmentVariables</key>
        <dict>
                <key>PATH</key>
                <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
        </dict>

</dict>

</plist>
```

