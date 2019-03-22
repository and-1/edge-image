# Clone dependency
git clone https://git.openstack.org/openstack/tripleo-image-elements.git
git clone https://git.openstack.org/openstack/heat-agents.git
# Export some vars
export BASE_ELEMENTS="ubuntu"
export DIB_RELEASE='bionic'
export DIB_CLOUD_INIT_DATASOURCES='ConfigDrive, OpenStack'
export ELEMENTS_PATH="tripleo-image-elements/elements:heat-agents/:elements"
# Install and configure the os-collect-config agent to poll the metadata
# server (heat service or zaqar message queue and so on) for configuration
# changes to execute
export AGENT_ELEMENTS="os-collect-config os-refresh-config os-apply-config"
export DEPLOYMENT_BASE_ELEMENTS="heat-config heat-config-script"
# Install a hook for any other chosen configuration tool(s).
# Elements which install hooks include:
# heat-config-cfn-init, heat-config-puppet, or heat-config-salt
export DEPLOYMENT_TOOL=""
export EDGE_ELEMENTS='kernel frr sysctl network tf_sync'
export IMAGE_NAME='edge-router'

disk-image-create vm $BASE_ELEMENTS $AGENT_ELEMENTS $DEPLOYMENT_BASE_ELEMENTS $DEPLOYMENT_TOOL $EDGE_ELEMENTS -t raw -o $IMAGE_NAME.raw
