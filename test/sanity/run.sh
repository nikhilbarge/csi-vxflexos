#!/bin/sh
rm -rf /tmp/csi-staging
rm -rf /tmp/csi-mount
csi-sanity --ginkgo.v --csi.endpoint=/root/Documents/corpRepos/csi-vxflexos/test/sanity/unix_sock --csi.testvolumesize 17179869184 --csi.testvolumeparameters=volParams.yaml --csi.secrets=secrets.yaml --ginkgo.skip "pagination should detect volumes added between pages and accept tokens when the last volume from a page is deleted|check the presence of new volumes and absence of deleted ones in the volume list" --ginkgo.skip "should fail when the volume is already published but is incompatible" 	
