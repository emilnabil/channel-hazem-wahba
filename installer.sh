#!/bin/sh
# #################################
#echo "ZWNobyAiIFNDUklQVCA6IERPV05MT0FEIEFORCBJTlNUQUxMIENoYW5uZWwgIgojIENvbmZpZ3VyZSB3aGVyZSB3ZSBjYW4gZmluZCB0aGluZ3MgaGVyZSAjClRNUERJUj0nL3RtcCcKUEFDS0FHRT0nYXN0cmEtc20nCk1ZX1VSTD0naHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2VtaWxuYWJpbC9jaGFubmVsLWhhemVtLXdhaGJhL21haW4nCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKVkVSU0lPTj0kKHdnZXQgJE1ZX1VSTC92ZXJzaW9uIC1xTy0gfCBjdXQgLWQgIj0iIC1mMi0pCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKQklOUEFUSD0vdXNyL2JpbgpFVENQQVRIPS9ldGMKQVNUUkFQQVRIPSR7RVRDUEFUSH0vYXN0cmEKIyMjIyMjCkJCQ1BNVD0ke0JJTlBBVEh9L2JiY19wbXRfc3RhcnRlci5zaApCQkNQWT0ke0JJTlBBVEh9L2JiY19wbXRfdjYucHkKQkJDRU5JR01BPSR7QklOUEFUSH0vZW5pZ21hMl9wcmVfc3RhcnQuc2gKIyMjIyMjClNZU0NPTkY9JHtFVENQQVRIfS9zeXNjdGwuY29uZgpBU1RSQUNPTkY9JHtBU1RSQVBBVEh9L2FzdHJhLmNvbmYKQUJFUlRJU0JJTj0ke0FTVFJBUEFUSH0vc2NyaXB0cy9hYmVydGlzCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKQ09ORklHcG10dG1wPSR7VE1QRElSfS9iYmNfcG10X3Y2L2JiY19wbXRfc3RhcnRlci5zaApDT05GSUdweXRtcD0ke1RNUERJUn0vYmJjX3BtdF92Ni9iYmNfcG10X3Y2LnB5CkNPTkZJR2VudG1wPSR7VE1QRElSfS9iYmNfcG10X3Y2L2VuaWdtYTJfcHJlX3N0YXJ0LnNoCkNPTkZJR3N5c2N0bHRtcD0ke1RNUERJUn0vJHtQQUNLQUdFfS9zeXNjdGwuY29uZgpDT05GSUdhc3RyYXRtcD0ke1RNUERJUn0vJHtQQUNLQUdFfS9hc3RyYS5jb25mCkNPTkZJR2FiZXJ0aXN0bXA9JHtUTVBESVJ9LyR7UEFDS0FHRX0vYWJlcnRpcwoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCmlmIFsgLWYgL2V0Yy9vcGtnL29wa2cuY29uZiBdOyB0aGVuCiAgICBTVEFUVVM9Jy92YXIvbGliL29wa2cvc3RhdHVzJwogICAgT1NUWVBFPSdPcGVuc291cmNlJwogICAgT1BLRz0nb3BrZyB1cGRhdGUnCiAgICBPUEtHSU5TVEFMPSdvcGtnIGluc3RhbGwnCmZpCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKcm0gLXJmIC9ldGMvZW5pZ21hMi9sYW1lZGIKcm0gLXJmIC9ldGMvZW5pZ21hMi8qbGlzdApybSAtcmYgL2V0Yy9lbmlnbWEyLyoudHYKcm0gLXJmIC9ldGMvZW5pZ21hMi8qLnJhZGlvCnJtIC1yZiAvZXRjL3R1eGJveC8qLnhtbAoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCmluc3RhbGwoKSB7CiAgICBpZiBncmVwIC1xcyAiUGFja2FnZTogJDEiICRTVEFUVVM7IHRoZW4KICAgICAgICBlY2hvCiAgICBlbHNlCiAgICAgICAgJE9QS0cgPi9kZXYvbnVsbCAyPiYxCiAgICAgICAgZWNobyAiICAgPj4+PiAgIE5lZWQgdG8gaW5zdGFsbCAkMSAgIDw8PDwiCiAgICAgICAgZWNobwogICAgICAgICRPUEtHSU5TVEFMICIkMSIKICAgICAgICBzbGVlcCAxCiAgICAgICAgY2xlYXIKICAgIGZpCn0KCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwppZiBbICRPU1RZUEUgPSAiT3BlbnNvdXJjZSIgXTsgdGhlbgogICAgZm9yIGkgaW4gZHZic25vb3AgJFBBQ0tBR0U7IGRvCiAgICAgICAgaW5zdGFsbCAkaQogICAgZG9uZQpmaQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwpjYXNlICQodW5hbWUgLW0pIGluCmFybXY3bCopIHBsYXJmb3JtPSJhcm0iIDs7Cm1pcHMqKSBwbGFyZm9ybT0ibWlwcyIgOzsKZXNhYwoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwpybSAtcmYgJHtBU1RSQUNPTkZ9ICR7U1lTQ09ORn0Kcm0gLXJmICR7VE1QRElSfS9jaGFubmVsc19iYWNrdXBfdXNlcl8iJHtWRVJTSU9OfSIqIGFzdHJhLSogYmJjX3BtdF92NioKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKZWNobwpzZXQgLWUKZWNobyAiRG93bmxvYWRpbmcgQW5kIEluc2FsbGxpbmcgQ2hhbm5lbCBQbGVhc2UgV2FpdCAuLi4uLi4iCndnZXQgJE1ZX1VSTC9jaGFubmVsc19oYXplbS13YWhiYS50YXIuZ3ogLXFQICRUTVBESVIKdGFyIC16eGYgJFRNUERJUi9jaGFubmVsc19oYXplbS13YWhiYS50YXIuZ3ogLUMgLwpzbGVlcCA1CnNldCArZQplY2hvCmVjaG8gIiAgID4+Pj4gICBSZWxvYWRpbmcgU2VydmljZXMgLSBQbGVhc2UgV2FpdCAgIDw8PDwiCndnZXQgLXFPIC0gaHR0cDovLzEyNy4wLjAuMS93ZWIvc2VydmljZWxpc3RyZWxvYWQ/bW9kZT0wID4vZGV2L251bGwgMj4mMQpzbGVlcCAyCmVjaG8KCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKaWYgWyAtZiAkQkJDUE1UIF0gJiYgWyAtZiAkQkJDUFkgXSAmJiBbIC1mICRCQkNFTklHTUEgXTsgdGhlbgogICAgZWNobyAiICAgPj4+PiAgIEFsbCBDb25maWcgQkJDIEZpbGVzIGZvdW5kICAgPDw8PCIKICAgIHNsZWVwIDIKZWxzZQogICAgc2V0IC1lCiAgICBlY2hvICJEb3dubG9hZGluZyBBbmQgSW5zYWxsbGluZyBDb25maWcgQkJDIFBsZWFzZSBXYWl0IC4uLi4uLiIKICAgIHdnZXQgJE1ZX1VSTC9iYmNfcG10X3Y2LnRhci5neiAtcVAgJFRNUERJUgogICAgdGFyIC14emYgJFRNUERJUi9iYmNfcG10X3Y2LnRhci5neiAtQyAkVE1QRElSCiAgICBzZXQgK2UKICAgIGNobW9kIC1SIDc1NSAke1RNUERJUn0vYmJjX3BtdF92NgogICAgc2xlZXAgMQogICAgZWNobyAiLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIgogICAKICAgIGVjaG8gIi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSIKZmkKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKaWYgWyAkT1NUWVBFID0gIk9wZW5zb3VyY2UiIF07IHRoZW4KICAgIGlmIFsgLWYgJEFTVFJBQ09ORiBdICYmIFsgLWYgJEFCRVJUSVNCSU4gXSAmJiBbIC1mICRTWVNDT05GIF07IHRoZW4KICAgICAgICBlY2hvICIgICA+Pj4+ICAgQWxsIENvbmZpZyAkUEFDS0FHRSBGaWxlcyBmb3VuZCAgIDw8PDwiCiAgICAgICAgc2xlZXAgMgogICAgZWxzZQogICAgICAgIHNldCAtZQogICAgICAgIGVjaG8gIkRvd25sb2FkaW5nIENvbmZpZyAkUEFDS0FHRSBQbGVhc2UgV2FpdCAuLi4uLi4iCiAgICAgICAgd2dldCAkTVlfVVJML2FzdHJhLSIke3BsYXJmb3JtfSIudGFyLmd6IC1xUCAkVE1QRElSCiAgICAgICAgdGFyIC14emYgJFRNUERJUi9hc3RyYS0iJHtwbGFyZm9ybX0iLnRhci5neiAtQyAkVE1QRElSCiAgICAgICAgc2V0ICtlCiAgICAgICAgY2htb2QgLVIgNzU1ICR7VE1QRElSfS8ke1BBQ0tBR0V9CiAgICAgICAgc2xlZXAgMQogICAgICAgIGVjaG8gIi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSIKICAgICAgICBpZiBbICEgLWYgJFNZU0NPTkYgXTsgdGhlbgogICAgICAgICAgICBjcCAtZiAkQ09ORklHc3lzY3RsdG1wICRFVENQQVRIID4vZGV2L251bGwgMj4mMQogICAgICAgICAgICBlY2hvICJbc2VuZCAoc3lzY3RsLmNvbmYpIGZpbGVdIgogICAgICAgIGZpCiAgICAgICAgaWYgWyAhIC1mICRBU1RSQUNPTkYgXTsgdGhlbgogICAgICAgICAgICBjcCAtZiAkQ09ORklHYXN0cmF0bXAgJEFTVFJBUEFUSCA+L2Rldi9udWxsIDI+JjEKICAgICAgICAgICAgZWNobyAiW3NlbmQgKGFzdHJhLmNvbmYpIGZpbGVdIgogICAgICAgIGZpCiAgICAgICAgaWYgWyAhIC1mICRBQkVSVElTQklOIF07IHRoZW4KICAgICAgICAgICAgY3AgLWYgJENPTkZJR2FiZXJ0aXN0bXAgJEFTVFJBUEFUSC9zY3JpcHRzID4vZGV2L251bGwgMj4mMQogICAgICAgICAgICBlY2hvICJbc2VuZCAoYWJlcnRpcykgZmlsZV0iCiAgICAgICAgZmkKICAgICAgICBlY2hvICItLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0iCiAgICBmaQpmaQoKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwpybSAtcmYgJHtUTVBESVJ9L2NoYW5uZWxzX2hhemVtLXdhaGJhLnRhci5negpybSAtcmYgJHtUTVBESVJ9LyogYXN0cmEtCnJtIC1yZiAke1RNUERJUn0vKiBiYmNfcG10X3Y2CgpzeW5jCmVjaG8gIiIKZWNobyAiIgplY2hvICIqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioiCmVjaG8gIiMgICAgICAgQ2hhbm5lbCBBbmQgQ29uZmlnIElOU1RBTExFRCBTVUNDRVNTRlVMTFkgICAgICAgIyIKZWNobyAiICAgVVBMT0FERUQgQlkgID4+Pj4gICBFTUlMX05BQklMICIgICAKc2xlZXAgNDsKCWVjaG8gJz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0nCmVjaG8gIiMgICAgICAgICAgICAgICAgICAgICR7VkVSU0lPTn0gICAgICAgICAgICAgICAgICAgICAgICAgIyIgICAgICAgICAgICAgICAgIAplY2hvICIqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioiCmVjaG8gIiMgICAgICAgICAgIHlvdXIgRGV2aWNlIHdpbGwgUkVTVEFSVCBOb3cgICAgICAgICAgICAgICAgIyIKZWNobyAiKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqIgpzbGVlcCAyCgppZiBbICRPU1RZUEUgPSAiT3BlbnNvdXJjZSIgXTsgdGhlbgogICAgaW5pdCA2CmVsc2UKICAgIHN5c3RlbWN0bCByZXN0YXJ0IGVuaWdtYTIKZmkKCmV4aXQgMAo=" | base64 -d | sh



