GLOG_v=0 \
GLOG_logtostderr=1 \
TOPOLOGY= \
TRAINER_PACKAGE=/share \
PADDLE_INIT_NICS=eth2 \
POD_IP=${SERVER0} \
POD_NAME=SERVER0 \
PADDLE_CURRENT_IP=${SERVER0} \
PADDLE_JOB_NAME=fleet-ctr \
PADDLE_IS_LOCAL=0 \
PADDLE_TRAINERS_NUM=2 \
PADDLE_PSERVERS_NUM=2 \
FLAGS_rpc_deadline=36000000 \
PADDLE_PORT=30239 \
TRAINING_ROLE=PSERVER \
PADDLE_PSERVERS_IP_PORT_LIST=${SERVER0}:30239,${SERVER1}:30241 \
python3 model_with_sparse_feature.py slot.conf
