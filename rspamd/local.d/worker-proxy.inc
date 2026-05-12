bind_socket = "/var/spool/postfix/rspamd/milter.sock mode=0666";

upstream "local" {
  self_scan = yes;
}

count = 4
