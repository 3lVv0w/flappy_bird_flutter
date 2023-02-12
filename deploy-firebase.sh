#rm -rd firebase/public
mkdir -p firebase/public
cp -R build/web/ firebase/public/
cd firebase && firebase deploy