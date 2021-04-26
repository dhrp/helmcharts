
update-consul-chart:
	helm upgrade consul-01 consulproject/ \
		--values consulproject/values.yaml \
		--namespace consul-dev


install-consul-chart:
	helm install consul-02 consulproject/ \
		--namespace consul-dev \
		--set ingress.enabled=false

upgrade-consul02-chart:
	helm upgrade consul-02 consulproject/ \
		--namespace consul-dev \
		--set ingress.enabled=true \
		--set ingress.hosts[0].host=consul3.tools.opensource.tools,ingress.hosts[0].paths={'/'}


#  \
# --set ingress.hosts[0].host={consul2.tools.opensource.tools}
		
		
# --values consulproject/values.yaml \