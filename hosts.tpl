[iscsi_hosts]
%{ for hostname in iscsi_hosts ~}
${hostname}
%{ endfor ~}

[nginx_hosts]
%{ for hostname in nginx_hosts ~}
${hostname}
%{ endfor ~}

[backend_hosts]
%{ for hostname in backend_hosts ~}
${hostname}
%{ endfor ~}

[db_hosts]
%{ for hostname in db_hosts ~}
${hostname}
%{ endfor ~}

[els_hosts]
%{ for hostname in els_hosts ~}
${hostname}
%{ endfor ~}

[kibana]
%{ for hostname in kibana_host ~}
${hostname}
%{ endfor ~}

[kafka]
%{ for hostname in kafka_host ~}
${hostname}
%{ endfor ~}