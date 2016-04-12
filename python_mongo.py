from pymongo import MongoClient
client = MongoClient()
from pymongo import MongoClient
client = MongoClient()
db=client.PIK3CA
cursor=db.vcf.find()
n=0
for i in cursor:
   if "ENST00000263967" in (i.values()[0])[u'ann']:
     n=n+1

print n


cursor=db.vcf.find()
n=0
for i in cursor:
  if (i.values()[0])[u'samples'][1] and(i.values()[0])[u'samples'][2]  > 7:
    n=n+1


print n




