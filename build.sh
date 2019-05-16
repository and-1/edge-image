# Export some vars
export BASE_ELEMENTS="ubuntu install-static"
export DIB_RELEASE='bionic'
export DIB_CLOUD_INIT_DATASOURCES='ConfigDrive, OpenStack'
export ELEMENTS_PATH="elements"
export EDGE_ELEMENTS='kernel frr sysctl network tf_sync'
export IMAGE_NAME='edge-router'

disk-image-create vm $BASE_ELEMENTS $EDGE_ELEMENTS -t raw -o $IMAGE_NAME.raw
