#!/bin/bash

# Block №1 start
blockOne () {
mkdir -p lab0/azumarill3/lickilicky lab0/azumarill3/reuniclus lab0/azumarill3/milotic lab0/azumarill3/tangrowth lab0/dusclops5/lilligant lab0/hitmontop7/cacturne lab0/hitmontop7/lucario
touch lab0/azumarill3/eevee lab0/buizel3 lab0/dusclops5/piplup lab0/dusclops5/zubat lab0/foongus0 lab0/golem9 lab0/hitmontop7/goldeen

cat > lab0/azumarill3/eevee << EOF
weight=14.3 height=12.0 atk=6 def=5
EOF

cat > lab0/buizel3 << EOF
Тип диеты
Omnivore
EOF


cat > lab0/dusclops5/piplup << EOF
Живет Beach Taiga Tundra
EOF


cat > lab0/dusclops5/zubat << EOF
Способности Venom
Mach Speed Inner Focus Anticipation
EOF

cat > lab0/foongus0 << EOF
Тип покемона GRASS
POISON
EOF

cat > lab0/hitmontop7/goldeen << EOF
Развитые способности Lightningrod
EOF

echo ‘Ходы Ancientpower Block Body Slam Counter Dynamicpunch’ > lab0/golem9
echo ‘Earth Power Fire Punch Focus Punch Fury Cutter Iron Defence Iron Head’ > lab0/golem9
echo ‘Mega Kick Mega Punch Metronome Mud-Slap Rollout Seismic Toss Sleep’ > lab0/golem9
echo ‘Talk Snore Stealth Rock Sucker Punch Superpower’ > lab0/golem9
echo ‘Thunderpuch’ > lab0/golem9
}
# Block № 1 end


# Block № 2 start
blockTwo () {
chmod 570 lab0/azumarill3/ 
chmod 524 lab0/azumarill3/lickilicky/
chmod 500 lab0/azumarill3/reuniclus/
chmod u=rwx,g=wx,o=wx lab0/azumarill3/milotic/
chmod u-rwx,g=rw,o=w lab0/azumarill3/eevee
chmod ugo=wx lab0/azumarill3/tangrowth/
chmod 046 lab0/buizel3
chmod 373 lab0/dusclops5/
chmod u=rw,g=w,o-rwx lab0/dusclops5/piplup
chmod 577 lab0/dusclops5/lilligant/
chmod ug=r,o-rwx lab0/dusclops5/zubat
chmod 440 lab0/foongus0
chmod ug-rwx,o=r lab0/golem9
chmod u=rx,g=rwx,o=wx lab0/hitmontop7/
chmod ugo=r lab0/hitmontop7/goldeen
chmod u=wx,go=x lab0/hitmontop7/cacturne/
chmod 373 lab0/hitmontop7/lucario/
chmod -R 700 lab0
}
# Block № 2 end


# Block № 3 start
blockThree () {
cp -r lab0/azumarill3 lab0/azumarill3/lickilicky/
cat lab0/golem9 > lab0/dusclops5/zubatgolem
cd lab0
ln -s dusclops5 Copy_53
cd ..
cp lab0/golem9 lab0/azumarill3/milotic
cat lab0/dusclops5/zubat lab0/dusclops5/piplup > lab0/buizel3_48
rm lab0/dusclops5/zubatgolem
ln -s lab0/golem9 lab0/dusclops5/zubatgolem
ln lab0/buizel3 lab0/hitmontop7/goldeenbuizel 
}
# Block № 3 end


# Block № 4 start
blockFour () {
cd lab0/azumarill3
touch /tmp/olegpash-results /tmp/olegpash-errors
cat $(ls -p | grep -v /) | wc -m > /tmp/olegpash-results 2>&1
cd ..
ls -lR | cat | grep ca | sort -k7 2> /dev/null
sort $(ls -R -d g*) | cat -n
ls -R | grep t$ | cat -n | sort -r 2> /tmp/olegpash-errors
ls -lR | grep "^-" | sort -k9 | tail -4 | sort -k5 -r 2>&1
ls -lR | grep ^- | sort -k5 | head -4 2> /tmp/olegpash-errors
}
# Block № 4 end


# Block № 5 start
blockFive() {
cd ..
rm -f lab0/foongus0
rm -f lab0/dusclops5/zubat
rm -f lab0/dusclops5/zubatgol*
rm -f lab0/hitmontop7/goldeenbuiz*
rm -rf dusclops5
rm -rf lab0/azumarill3/milotic
}
# Block № 5 end


echo "Welcome! Enter up to which block you want to run the program [1, 5]: "
read n
if [ $n -eq 1 ];
then
blockOne
elif [ $n -eq 2 ];
then
blockOne
blockTwo
elif [ $n -eq 3 ];
then 
blockOne
blockTwo
blockThree
elif [ $n -eq 4 ];
then 
blockOne
blockTwo
blockThree
blockTwo
blockFour
elif [ $n -eq 5 ];
then 
blockOne
blockTwo
blockThree
blockTwo
blockFour
blockFive
else
echo "You entered an invalid value!"
fi
