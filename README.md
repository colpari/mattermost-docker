# Mattermost Docker
The colpari testing Docker deployment for Mattermost.

* contains bundled [Mattermost PNS](https://docs.mattermost.com/deploy/mobile-hpns.html#host-your-own-push-proxy-service) image build 
* [default config](config.json-testing) with open server setting and the deployed 'pns' as push proxy hostname
* initialize (or reset completely) with ./reset.sh
* start with ./start.sh
* Mattermost will be available on http://localhost:8065
