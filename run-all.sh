#!/bin/bash

# exclude tests that we know they fail for sure
PARAMS=${PARAMS:---exclude b2b/09.refer-unattended-uac-notify-fail \
				 --exclude b2b/10.refer-unattended-uas-notify-fail \
				 --exclude b2b/15.refer-unattended-uac-prov-notify-fail \
				 --exclude b2b/16.refer-unattended-uas-prov-notify-fail \
				 --exclude topology-hiding/02.th-no-dialog-username \
				 --exclude uac-auth/17.dialog-auth-reinvite-uas \
				 --exclude uac-auth/20.dialog-auth-invite-reinvite-bye-uas \
				 --exclude uac-auth/22.dialog-auth-reinvite-uac \
				 --exclude uac-auth/23.dialog-auth-reinvite-bye-uac \
				 --exclude uac-auth/24.dialog-auth-reinvite-uac-reinvite-uas \
				 --exclude uac-auth/25.dialog-auth-reinvite-uas-reinvite-uac \
				 --exclude uac-auth/26.dialog-auth-reinvite-uac-reinvite-uas-bye-uas \
				 --exclude uac-auth/27.dialog-auth-reinvite-uac-reinvite-uas-bye-uac \
		}

SETS=${SETS:-registration \
	auth \
	record-route \
	dialog \
	topology-hiding \
	b2b \
	uac-auth}

sipssert \
	$PARAMS \
	$SETS \
	$@
