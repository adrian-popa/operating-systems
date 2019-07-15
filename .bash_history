ls
cd ..
ls
cd adi/
apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)
sudo su -
ls
ls -a
cd 
exit
ls
cd shell/
chmod 700 .
cd shell/
chmod -R 755 .
cd shell/
ls
cd practice/
ls
cd script14
ls
vim script14.sh 
./script14.sh 
ls a/
ls -a
cd a
ls
ls -l
chmod g+w, o+w a.txt 
chmod g+w,o+w a.txt 
ls -l
cd b
ls
ls -l
cd d
ls -l
chmod g+w,o+w b.txt 
chmod g+w,o+w d.txt 
chmod a-r,g-x,o-x d.txt 
ls -l
cd ..
ls
cd c
ls
ls -l
cd ..
ls
./script14.sh 
chmod 700 script14.sh 
./script14.sh 
vim script14.sh 
./script14.sh 
vim script14.sh 
./script14.sh 
ls -a
ls -R
ls -r
ls -rA
ls -Ra
ls -R
find .
./script14.sh 
find .
cd a
ls
mv a.txt.all.all a.txt.all
ls
cd b
cd d
mv d.txt.all.all d.txt.all
ls
cd ..
ls -R
find
cd ..
cd ~
vim .vimrc
cd shell/practice/script14
vim script14.sh 
ls
vim script14.sh 
cd ..
cd .
cd ..
vim .vimrc
ls
cat .vimrc
rm .vimrc
ls
vim .vimrc
vim .vim
vim .vimrc
cd shell/practice/script14
vim script14.sh 
exit
ls
cd shell/practice/
ls
mkdir script16
cd script16
cd ..
mkdir script15
cd script16
vim a.txt
vim b.txt
vim c.txt
vim script16.sh
vim a.txt
chmod 700 script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
grep mere a.txt
vim script16.sh
grep mere a.txt
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
grep mere a.txt
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh
man grep
vim script16.sh
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
./ex6.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
ls
cd ..
cd script16
ls
ls -a
chmod ex6.sh
chmod 700 ex6.sh
cd ..
ls
cd script16
ls
exit
cd shell/practice/script16
ls
chmod 700 ex6.sh 
./ex6.sh a.txt mere 2 b.txt mere 3 c.txt mere 4
./ex6.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
./ex6.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
ls -h
ls -l
ls -l --block
ls -l --block-size=B
ls -l --block-size=b
ls -l --block-size=O
ls -l --block-size=M
ls -l --block-size=k
ls -lh
wc -c a.txt 
ls -ld
ls -ld -- a.txt 
wc -b a.txt 
man wc
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
./ex6.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
exit
ls -l
cd shell/
ls
cd practice/
ls
cd script16
ls -l
wc -c a.txt 
ls -l a.txt
ls -l a.txt | awk '{print $5}'
ls -l a.txt | awk '{print $5, $7}'
ls -l a.txt | awk '{print $5, $7, $8}'
ls -l a.txt | awk '{print $5, $6, $7, $8}'
vim a.txt
ls -l a.txt | awk '{print $5, $6, $7, $8}'
vim a.txt
ls -l a.txt | awk '{print $5, $6, $7, $8}'
ls -l b.txt | awk '{print $5, $6, $7, $8}'
vim b.txt
ls -l b.txt | awk '{print $5, $6, $7, $8}'
vim b.txt
ls -l b.txt | awk '{print $5, $6, $7, $8}'
ls -l a.txt
file a.txt
file a.txt | awk -F: '{print $2}'
file a.txt | awk -F:  '{print $2}'
file a.txt | awk -F": " '{print $2}'
file a.txt | awk -F":" '{print $2}'
file a.txt | awk -F": " '{print $2}'
man file
file -b a.txt
cd ..
ls
cd ..
ls
ls -l
ls -l last.fake | awk '{print $5, $6, $7, $8}'
file -b last.fake
ls -l last.fake | awk '{print $5\n, $6, $7, $8}'
ls -l last.fake | awk '{print $5"\n", $6, $7, $8}'
ls -l last.fake | awk '{print $5'\n'$6, $7, $8}'
ls -l last.fake | awk '{print $5'\n',$6, $7, $8}'
ls -l last.fake | awk '{print $5"\n"$6, $7, $8}'
wc -c last.fake
grep -c pmie last.fake 
grep -c pm last.fake 
cd shell/practice/
cd script16
vim a.txt
grep -c mere a.txt
man grep
grep -o mere a.txt | wc - l
grep -o mere a.txt | wc -l
vim a.txt
grep -o pere a.txt | wc -l
grep -o bodan a.txt | wc -l
grep -o bogdan a.txt | wc -l
grep -o -i bogdan a.txt | wc -l
grep -o -i Bogdan a.txt | wc -l
grep -o Bogdan a.txt | wc -l
grep -o -c mere a.txt
grep -c mere a.txt
grep -o mere a.txt
grep -o -c mere a.txt
grep -o mere a.txt
grep -o mere b.txt
grep -o mere c.txt
grep -o mere pere.txt
grep -o pere c.txt
grep -o pere b.txt
grep -w pere b.txt
grep -w MERE b.txt
grep -w mere a.txt
vim a.txt
grep -w mere a.txt
grep -w -o mere a.txt
grep -o mere a.txt
grep -o -w mere a.txt
vim a.txt
grep -o mere a.txt
grep -w -o mere a.txt
grep -w mere a.txt
grep -w -i mere a.txt
grep -w -i -o mere a.txt
grep -w -i -o mere a.txt | wc -l
vim script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
vim c.txt
vim b.txt
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16
vim script16.sh 
vim a.txt
vim c.txt
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim a.txt
vim script16.sh 
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
vim a.txt
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
./script16.sh a.txt mere 1 b.txt mere 3 c.txt mere 3
./script16.sh a.txt mere 2 b.txt mere 3 c.txt mere 3
vim script16.sh 
cd ..
ls
cd ..
ls
cd c
ls
cd ..
cd grep-sed-awk/
ls
cd .
cd ..
exit
ls
cat indent 
cd c
ks
ls
cd c
ls
cd c-test-practice/
ls
cd practice
mkdir practice
cd practice/
ls
mkdir pb1
cd pb1
vim p1.c
vim p2.c
cd c
cd practice/pb1/
./p2
vim p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
gcc -Wall -g -o p2 p2.c
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
valgrind ./p2
vangrind ./p2
valgrind
valgrind ./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
valgrind ./p2
vim p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
rm p2
./p2
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
valgrind ./p2
vim p2.c
valgrind ./p2
gcc -Wall -g -o p2 p2.c
valgrind ./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
./p2
vim p2.c
valgrind ./p2
vim p2.c
./p2
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
./p2
gcc -Wall -g -o p2 p2.c
./p2
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
cd c/practice/pb1/
ls
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
rm p1
rm p2
exit
cd c/practice/
ls
cd pb1
ls
rm p1
rm p2
ls
vim p1.c
gcc -Wall -g -o p1 p1.c
./p1
vim p1
rm p1
rm p2
vim p1.c
gcc -Wall -g -o p1 p1.c
./p1
vim p1.c
gcc -Wall -g -o p1 p1.c
./p1
exit
cd c/practice/
cd pb1
gcc -Wall -g -o p1 p1.c
./p1
vim p1.c
gcc -Wall -g -o p1 p1.c
./p1
exit
cd c/practice/
cd pb1
ls
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
exit
cd c/practice/pb1
./p2
cd c/practice/pb1
gcc -Wall -g -o p2 p2.c
gcc -Wall -g -o p1 p1.c
./p1
./p2
cd c/practice/pb2
./p2
vim p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
valgrind ./p2
./p2
vim p2.c
rm p1
rm p2
gcc -Wall -g -o p1 p1.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
ls
rm p2
gcc -Wall -g -o p2 p2.c
ls
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
vim p2.c
gcc -Wall -g -o p2 p2.c
./p2
gcc -Wall -g -o p2 p2.c
vim p2.c
gcc -Wall -g -o p2 p2.c
exit
cd c/practice/pb2
ls
rm p1
rm p2
vim p1.c
gcc -Wall -g -o p1 p1.c
vim p1.c
gcc -Wall -g -o p1 p1.c
vim p1.c
gcc -Wall -g -o p1 p1.c
vim p1.c
gcc -Wall -g -o p1 p1.c
vim p2.c
gcc -Wall -g -o p1 p2.c
gcc -Wall -g -o p2 p2.c
gcc -Wall -g -o p1 p1.c
./p1
vim p2.c
vim p1.c
./p1
mkfifo a2b
mkfifo b2a
./p1
valgrind ./p1
./p1
2
./p1
exit
cd c/practice/pb2
./p2
vim ./p2
vim p2.c
./p2
gcc -Wall -g -o p2 p2.c
./p2
exit
cd c/practice/pb2
./p1
exit
cd c/practice/pb2
mkdir pipes
cd pipes
vim p1.c
vim p2.c
gcc -Wall -g -o p1 p1.c
vim p1.c
gcc -Wall -g -o p1 p1.c
gcc -Wall -g -o p2 p2.c
vim p2.c
gcc -Wall -g -o p2 p2.c
./p1
vim p2.c
gcc -Wall -g -o p2 p2.c
vim p1.c
gcc -Wall -g -o p1 p1.c
vim p2.c
gcc -Wall -g -o p2 p2.c
./p1
vim p2.c
vim p1.c
gcc -Wall -g -o p1 p1.c
gcc -Wall -g -o p2 p2.c
gcc -Wall -g -o p1 p1.c
rm p1
rm p2
cd c
cd practice/pb2/pipes
ls
gcc -Wall -g -o p1 p1.c
gcc -Wall -g -o p2 p2.c
./p1
vim p1.c
vim p2.c
cd c
cd practice/
cd pb1
ls
p1 & p2
p1 & p2 &
5
./p1 & ./p2 &
1
./p1 & ./p2 &
test this
./p1 & ./p2 &
ana are mere
./p1 & ./p2 &
jobs
./p1 & ./p2 &
./p1 & ./p2
./p1 & ./p2 &
ana are mere
./p1 & ./p2 && fg
./p1 & ./p2 & fg
./p1 & ./p2 && fg
./p1 & ./p2 &
ana are mere
./p1 &
./p2 &
./p1 &
ana are mere
./p1 &
./p2 &
./p1 & ./p2
& ./p1 & ./p2
./p1 && ./p2
./p2
./p1
./p2
fg
exit
jobs
kill ./p1
kill %1
exit
cd c/practice/pb2
ls
./p2
exit
cd c
cd practice/
cd pb1
./p2
./p1
./p2
fg
./p1 &
ana are mere
fg
./p1 & ./p2 && fg
fg
./p1 & ./p2
fg
./p1 & ./p2 &
ana are mere
fg
./p1
./p2
fg
cd ..
cd pb2
ls
./p1
./p2
fg
./p2
fg
./p1
ls
fg
./p1
./p2
./p1
fg
./p2
./p1
fg
exit
cd c/practice/pb2
ls
./p2
./p1
fg
./p1 & ./p2 &
5
3
jobs
kill %1
kill %2
fg
./p1 & ./p2 && fg
fg
./p2 & ./p1 && fg
./p2 & ./p1
fg
./p2 & ./p1
cd ..
cd pb1
./p2 & ./p1
./p2 & ./p1 && fg
fg
exit
cd
cd c/practice/pb1
./p2 & ./p1
fg
cd ..
cd pb1
cd ..
cd pb2
./p2 & ./p1
./p2 & ./p1 && fg
./p2 & ./p1
exit
cd c
cd sem5
vim pb1.c
gcc -pthread -Wall -g -o pb1 pb1.c
vim pb1.c
gcc -pthread -Wall -g -o pb1 pb1.c
./pb1
./pb1 ana are mere
vim pb1.c
./pb1 ana are mere
gcc -pthread -Wall -g -o pb1 pb1.c
./pb1 ana are mere
vim pb1.c
gcc -pthread -Wall -g -o pb1 pb1.c
./pb1 ana are mere
gcc -pthread -Wall -g -o pb1 pb1.c
./pb1 ana are mere
gcc -pthread -Wall -g -o pb1 pb1.c
./pb1 ana are mere
vim pb1.c
vim pb2.c
gcc -pthread -Wall -g -o pb2 pb2.c
vim pb2.c
gcc -pthread -Wall -g -o pb2 pb2.c
vim pb2.c
gcc -pthread -Wall -g -o pb2 pb2.c
vim pb2.c
gcc -pthread -Wall -g -o pb2 pb2.c
./pb2
gcc -pthread -Wall -g -o pb2 pb2.c
./pb2
./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2
./pb2  & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2
fg
vim pb2.c
gcc -pthread -Wall -g -o pb2 pb2.c
./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2 & ./pb2
vim p2.c
vim pb2.
vim pb2.c
ls
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5 3 5 2 12 6 7 4 2 4 5
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5 3 5 2 12 6 7 4 2 -4 5
./pb3 2 5 3 5 2 12 6 7 4 2 -4 -2
./pb3 2 5 3 5 2 12 6 7 4 2 -4
./pb3 2 5 3 5 2 12 6 7 4 2 5
./pb3 2 5 3 5 2 12 6 7 4 2 5 6
./pb3 
./pb3 2 5
./pb3 2 4
./pb3 2 4 7
./pb3 2 4 6
./pb3 2 4 7
./pb3 2 4
./pb3 2 5 7
./pb3 2 5 6
vim pb3.c
./pb3 2 5
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5
./pb3 2 5 8
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5
./pb3 2 5 8
./pb3 2 5 8 3
./pb3 2 5 8 3 4 8 -2 4
./pb3 2 5 8 3 4 8 0 4
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5 8 3 4 8 -2 4
vim pb3.c
gcc -pthread -Wall -g -o pb3 pb3.c
./pb3 2 5 8 3 4 8 -2 4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
vim pb4.c
gcc -pthread -Wall -g -o pb4 pb4.c
./pb4
./pb4 & ./pb4 & ./pb4 & ./pb4
./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4 & ./pb4
ls
cd c
ls
mkdir sem5
cd sem5
ls
vim notes
vim notes.txt
vim pb3.c
vim notes.txt
ls
cd c
ls
cd lab9
ps
ps -a
ps A
ps -A
exit
ls
cd c
ls
cd practice/
ls
mkdir pb3
cd pb3
vim pb3.c
gcc -g -Wall -o -pthread pb3 pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
./pb3
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
fg
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
./pb3
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
gcc -g -Wall -pthread -o pb3 pb3.c
./pb3
vim pb3.c
cd ..
mkdir pb4
cd pb4
vim pb4.c
mkdir files
cd files
vim a.txt
vim d.txt
vim e.txt
vim h.txt
vim k.txt
vim m.txt
vim n.txt
vim o.txt
vim r.txt
vim t.txt
vim u.txt
vim x.txt
ls
cd ..
ls dir d*
ls .\dir d*
ls ./dir d*
ls /dir
ls files
ls files d*
ls d*
ls a*
ls abc*
ls *.txt
ls files *.txt
cd files
ls *.txt
ls a*
cd ..
ls a* files
ls files a*
find files
tree -P 'a*'
find . -type f -name "a*"
find files -type f -name "a*"
find files -name "a*"
list files
ls files
ls files "a*"
ls files a*
ls files 'a*'
ls files -R
gcc
[A

find files -name "a*"
find files -name 'a*'
find files -name 'a'
find files -name 'a.txt'
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
./pb4
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
cd files
ls
vim e2.txt
vim ee.txt
rm ee.txt
vim e3.txt
vim k2.txt
vim r2.txt
vim t2.txt

ls
cd ..
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
./pb4
vim pb4.c
./pb4
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
vim pb4.c
gcc -g -Wall -pthread -o pb4 pb4.c
./pb4
ls
man fseek
ls -a
ls -Ra
ls -l
ls -l ps.fake
ls -l ps.fake | awk '{print $5}'
cd c
ls
mkfifo test
ls
rm test
mkfifo test 0777
ls
rm 0777
ls
rm test
ls
cd c
ls
cd lab1
ls
cd ..
ls
cat ps.fake
grep \< ps.fake
grep ps.fake
grep ps.fake \<
grep ^ ps.fake
grep a ps.fake
grep \<1 ps.fake
grep r ps.fake
grep ^r ps.fake
grep \<r ps.fake
grep \<r\> ps.fake
grep \<r.\> ps.fake
grep \<r*\> ps.fake
grep r* ps.fake
grep ^r* ps.fake
grep ^r ps.fake
grep 18:34 ps.fake
grep \<18:34\> ps.fake
ls
cat passwd.fake
grep \<18:34\> passwd.fake
grep \<1 passwd.fake
grep \< passwd.fake
grep \<mnie passwd.fake
grep \<\> passwd.fake
grep ^r* passwd.fake
grep ^m* passwd.fake
grep ^m passwd.fake
grep ^r passwd.fake
grep ^[ passwd.fake
grep ^p passwd.fake
grep  passwd.fake
cat passwd.fake
ls
cat last.fake
grep ^m* passwd.fake
grep ^[m]* passwd.fake
grep ^[m]+ passwd.fake
grep ^m+ passwd.fake
grep m+ passwd.fake
grep [m]+ passwd.fake
Malinescu Elena-Monica
ls
cat ps.fake
ls
cat last.fake
cat notes.txt
ls
cd notes
ls
cd lecture-05-en/
ls
cat no-way.c
cd ..
cd seminary/
ls
cat sem1.txt 
cd ..
cd..
cd ..
ls
cat ps.fake
ls
cat passwd.fake 
ls
cd grep-sed-awk/
ls
cat practice.txt 
vim a.txt
grep ^[A-Z] a.txt
grep ^[A-Z]* a.txt
grep ^[A-Z]. a.txt
grep ^[A-Z] a.txt
grep ^[A-Z].* a.txt
grep ^[A-Z]* a.txt
grep ^[A-Z]$ a.txt
grep [A-Z] a.txt
vim a.txt
grep [A-Z] a.txt
grep \<[A-Z] a.txt
grep \<[A-Z]* a.txt
grep '\<[A-Z]*\>' a.txt
grep '<[A-Z]*>' a.txt
grep <[A-Z]*> a.txt
grep \<[A-Z]*\> a.txt
grep -o \<[A-Z]*\> a.txt
grep \<[A-Z]*\> a.txt
grep \w[A-Z]*\w a.txt
grep \w[A-Z]*\w* a.txt
grep \w*[A-Z]+\w* a.txt
grep "\w*[A-Z]+\w*" a.txt
grep "^[A-Z]$" a.txt
grep "^[A-Z]*$" a.txt
grep " [A-Z]" a.txt
grep "[A-Z]" a.txt
grep " [A-Z]" a.txt
grep "\<[A-Z]" a.txt
grep \<[A-Z] a.txt
grep "\<[A-Z]" a.txt
grep '\<[A-Z]' a.txt
grep "\<[A-Z]" a.txt
vim b.txt
grep [0-9][0-9] b.txt
sed "s/\([0-9]\)\([0-9]\) /\2\1/g" b.txt
sed "s/\([0-9]\)\([0-9]\)/\2\1/g" b.txt
sed "s/[0-9][0-9]/\2\1/g" b.txt
sed "s/\([0-9]\)\([0-9]\)/\2\1/g" b.txt
sed "s/([0-9])([0-9])/\2\1/g" b.txt
sed "s/\([0-9]\)\([0-9]\)/\2\1/g" b.txt
grep "\<[A-Z]" a.txt > test.txt
cat test.txt
"grep "\<[A-Z]" a.txt" > test.txt
'grep "\<[A-Z]" a.txt' > test.txt
grep "\<[A-Z]" a.txt > test.txt
vim test.txt
sed "s/\([0-9]\)\([0-9]\)/\2\1/g" b.txt
vim test.txt
vim c.txt
awk -f '{print $1, $2}' c.txt
awk '{print $1, $2}' c.txt
awk '{print $1 + $2}' c.txt
ls
vim test.txt
vim d.txt
cat d.txt
cat a.txt -d
uniq -u d.txt
vim d.txt
uniq -u d.txt
awk '{a[$0]++} END {for (x in a) if (a[x] == 1) print x}' d.txt
cat d.txt
awk '{a[$0]++} END {for (x in a) if (a[x] == 1) print x}' d.txt
awk '{a[$0]++} END {for (x in a) if (a[x] == 2) print x}' d.txt
awk '{a[$0]++} END {for (x in a) print x}' d.txt
awk '{a[$1]++} END {for (x in a) print x}' d.txt
awk '{a[$2]++} END {for (x in a) print x}' d.txt
awk '{a[$]++} END {for (x in a) print x}' d.txt
awk '{a[$0]++} END {for (x in a) print x}' d.txt
awk '!seen[$0]++' d.txt
cat d.txt | sort | uniq
cat d.txt | sort | uniq -d
cat d.txt | sort | uniq -u
cat d.txt
man uniq
vim a.txt
vim c.txt
vim d.txt
vim pb5.sh
./pb5.sh
chmod 700 pb5.sh 
./pb5.sh
cat practice.txt 
man sed
man ls
ls -l
man find
find -lnik
find -link n
find -links n
find -links 5
find -links 2
find -links 1
ls
cat test.txt
find -lnik
cat d.txt | sort | uniq -u
cat d.txt | sort | uniq -d
man open
man open 2
man 2 open
rciyexit
exit
ls
cd grep-sed-awk/
ls
cat practice.txt 
cd ..
ls
cd shell/
ls
cd lab4
ls
cat script_1.sh 
cd ..
cd lab5
ls
cd ..
cd lab6
ls
cd script
cd script4
ls
vim script4.sh 
cd ..
cd scrip5
cd script5
vim script5.sh 
cd ..
cd script6
vim script6.sh 
cd ..
cd practice/
ls
cd script1
vim script1.sh 
cd ..
cd script2
vim script2.sh 
/bin/pwd
cd ..
ls
cd grep-sed-awk/
ls
cat a.txt
cat a.txt | /bin/pwd
a.txt | /bin/pwd
cat a.txt | /bin/pwd
/bin/pwd
ls
/bin/pwd
cat a.txt | /bin/pwd
cd ..
cat grep-sed-awk/a.txt | /bin/pwd
cat grep-sed-awk | /bin/pwd
sort grep-sed-awk/a.txt | /bin/pwd
man grep
ls
cat last.fake 
exit
hydra
sudo apt install hydra
ls
cd
ls
