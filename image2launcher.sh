if [ $# -eq 0 ]
  then
    printf "Usage: image2launcher.sh icon.png \n";
  	exit  
fi

printf "Creating launcher icons in folder launcher_icons/... \n";

mkdir ./launcher_icons/;

printf "Creating ldpi...";
mkdir ./launcher_icons/mipmap-ldpi;
convert "$1" -resize 36x36 launcher_icons/mipmap-ldpi/ic_launcher.png;
printf "ok! \n";

printf "Creating mdpi...";
mkdir ./launcher_icons/mipmap-mdpi;
convert "$1" -resize 48x48 launcher_icons/mipmap-mdpi/ic_launcher.png;
printf "ok! \n";

printf "Creating hdpi...";
mkdir ./launcher_icons/mipmap-hdpi;
convert "$1" -resize 72x72 launcher_icons/mipmap-hdpi/ic_launcher.png;
printf "ok! \n";

printf "Creating xhdpi...";
mkdir ./launcher_icons/mipmap-xhdpi;
convert "$1" -resize 96x96 launcher_icons/mipmap-xhdpi/ic_launcher.png;
printf "ok! \n";

printf "Creating xxhdpi...";
mkdir ./launcher_icons/mipmap-xxhdpi;
convert "$1" -resize 144x144 launcher_icons/mipmap-xxhdpi/ic_launcher.png;
printf "ok! \n";

printf "Creating xxxhdpi...";
mkdir ./launcher_icons/mipmap-xxxhdpi;
convert "$1" -resize 192x192 launcher_icons/mipmap-xxxhdpi/ic_launcher.png;
printf "ok! \n";

printf "All done. \nCreated by Koen Hendriks - https://github.com/koenhendriks \n ";