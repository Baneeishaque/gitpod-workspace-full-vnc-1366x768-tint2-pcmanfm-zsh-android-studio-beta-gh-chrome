FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-android-studio-gh-chrome

# RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk default java 11.0.10.fx-zulu"
RUN sudo rm -r /usr/local/android-studio

ARG androidStudioDownloadUrl="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.2.0.22/android-studio-ide-202.7188722-linux.tar.gz"
# TODO : Derive androidStudioInstallationFile from androidStudioDownloadUrl
ARG androidStudioInstallationFile="android-studio-ide-202.7188722-linux.tar.gz"

# RUN sudo apt update \
 # && sudo apt install -y \
    # libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 \
 # && sudo rm -rf /var/lib/apt/lists/*

RUN cd $HOME \
 && wget $androidStudioDownloadUrl \
 && sudo tar -xvf $androidStudioInstallationFile -C /usr/local/ \
 && rm $androidStudioInstallationFile

# RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install java 11.0.8-open /usr/local/android-studio/jre && sdk default java 11.0.8-open"