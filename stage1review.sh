for item in `ls *.java *.py *.js`
do
  echo $item
done



for item in `ls *java *.py *.js`
do
   fileName=`echo $item | awk -F. '{print $1}'`
   echo $fileName
done


for item in `ls *.java *.py *.js`
do
   fileName=`echo $item | awk -F. '{print $1}'`
   mkdir $fileName
done

for item in `ls *.java`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir x/$fileName
done

for item in `ls *.py`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir y/$fileName
done

for item in `ls *.js`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir z/$fileName
done

for item in `ls *.java`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir $fileName
    cp -r $item x/$fileName
done

for item in `ls *.py`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir $fileName
    cp -r $item y/$fileName
done

for item in `ls *.js`
do
   fileName=`echo $item | awk -F. '{print $2}'`
   mkdir $fileName
    cp -r z/$item $fileName
done








