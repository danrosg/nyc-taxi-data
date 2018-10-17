aws redshift create-cluster \
    --db-name trips \
    --cluster-type single-node \
    --node-type dc2.large	\
    --master-username $MASTER_USERNAME \
    --master-user-password $MASTER_PASSWORD \
    --publicly-accessible \
    --cluster-identifier trips-data \
    --availability-zone us-east-2a

aws redshift delete-cluster --cluster-identifier trips-data --skip-final-cluster-snapshot
