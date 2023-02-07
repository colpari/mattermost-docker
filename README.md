# Mattermost Docker
The colpari testing Docker deployment for Mattermost.

* contains bundled [Mattermost PNS](https://docs.mattermost.com/deploy/mobile-hpns.html#host-your-own-push-proxy-service) image build 
* [default config](config.json-testing) with open server setting and the deployed 'pns' as push proxy hostname
* initialize (or reset completely) with ./reset.sh
* start with ./start.sh
* creates one volume for postgres data; mattermost data is stored in ./volumes/
* Mattermost will be available on http://localhost:8065 (mobile App can be used against this endpoint)
