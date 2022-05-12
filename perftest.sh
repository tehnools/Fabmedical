host="fabmedical-618845.documents.azure.com"
username="fabmedical-618845"
password="VBLxJgnJYI6zrtAystDN7djfq0lzzNspTbFxp30QczVyif2StAAq4DBWGTBygT6elVQ2Cd9oAYaUjdxoT1c0oA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done