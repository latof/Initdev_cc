#! bin/bash


if [ -e .initdev ]
then
echo " fichier existe déja ! "
exit 1
else
mkdir $(echo $HOME)/.initdev
cp -r $(echo $HOME)/Bureau/initdev/bin $(echo $HOME)/.initdev/ 
cp -r $(echo $HOME)/Bureau/initdev/gitignores $(echo $HOME)/.initdev/
cp -r $(echo $HOME)/Bureau/initdev/licenses $(echo $HOME)/.initdev/
cp -r $(echo $HOME)/Bureau/initdev/sources $(echo $HOME)/.initdev/
cp -r $(echo $HOME)/Bureau/initdev/makefiles $(echo $HOME)/.initdev/
cp -r $(echo $HOME)/Bureau/initdev/main.sh $(echo $HOME)/.initdev/
fi

if [ $1 = "" ]  
then
echo "Expected arguments, please check the help : initdev –help"
exit 1
elif [ $1 = -help ] 
then
echo "— Name : Afficher le nom de l’application et une petite description."
echo "— Syntax : Afficher la syntaxe d’utilisation de la commande initdev."
echo "— args : Lister les arguments et donner une description de chaque argument."     
echo "— author : Afficher le nom et l’email de l’auteur de l’application."     		
else 
mkdir $1
touch $1/main
mkdir $1/LICENSE     
mkdir $1/Makefile
if [[ $2 = -git ]]
then 
cp -r $(echo $HOME)/Bureau/.initdev/gitignores/c gitignores/
elif [[ $2 = -C ]] 
then
cp -r $(echo $HOME)/.initdev/sources/main.c $1/
elif [[ $2 = -CPP ]]
then 
cp -r $(echo $HOME)/Bureau/.initdev/sources/main.cpp $1/
elif [[ $2 = -Python ]]
then 	
cp -r $(echo $HOME)/Bureau/.initdev/sources/main.py $1/
elif [[ $2 = -BEAMER ]]
then
cp -r $(echo $HOME)/Bureau/.initdev/sources/beamer.tex $1/
elif [[ $2 = -Latex ]]
then
cp -r $(echo $HOME)/Bureau/.initdev/sources/latexmin.tex $1/	
elif [[ $2 = "" ]] 
then
exit 0    	
elif [[ $3 = GPL ]]  
then 
cp -r $(echo $HOME)/Bureau/.initdev/licenses/GPL $1/LICENSE/ 
elif [[ $3 = MIT ]]
then
cp -r $(echo $HOME)/Bureau/.initdev/licenses/MIT $1/LICENSE/ 
			

			


     
exit 0


fi  


 



