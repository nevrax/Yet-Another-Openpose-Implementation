mkdir train2017
mkdir val2017
mkdir test2017



echo getting train2017
gsutil -m rsync gs://images.cocodataset.org/train2017 /train2017/
echo getting val2017
gsutil -m rsync gs://images.cocodataset.org/val2017 /val2017/
echo getting test2017
gsutil -m rsync gs://images.cocodataset.org/test2017 /test2017/

mkdir /annotations
cd /annotations
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip 
unzip annotations_trainval2017.zip

echo Done
