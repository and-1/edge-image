# Repo for build edge router image

Image based on cloud ubuntu 18.04 image

1. Update kernel to 4.18 for work with vrf
2. Install frr
3. Configure network kernel parameter
4. Install tf_sync script
5. Patch cloudinit for disable duplicate mac error 

!!! Don't forget enable image multiqueue property while updload it. Like that !!!
```bash
openstack image create --file /tmp/edge-router.raw --disk-format raw edge --property hw_vif_multiqueue_enabled="true"
```
