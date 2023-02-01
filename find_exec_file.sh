#!/bin/bash
let "exec=0"
let "noexec=0"
let "dir=0"

for i in `ls $1`
   do
   if [ -d $i ]; then let "dir=$dir+1";
   elif [ -x $i ]; then let "exec=exec+1"; echo $i >> list_exec.txt
   else let "noexec=$noexec+1";
   fi
done

echo "Vous avez : $exec fichier(s) exécutable, $noexec fichier(s) non executable et $dir dossier(s)"



