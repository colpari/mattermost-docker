FROM alpine:3.17

ARG PNS_RELEASE_FILE

COPY entrypoint $PNS_RELEASE_FILE /

RUN echo "RF='$PNS_RELEASE_FILE'" && cd / && tar -vxzf $PNS_RELEASE_FILE  && rm -vfr $PNS_RELEASE_FILE /mattermost-push-proxy/config /mattermost-push-proxy/LICENSE.txt && mkdir -v /mattermost-push-proxy/config && mkdir -v /mattermost-push-proxy/certs && apk add --no-cache \
  ca-certificates \
  libc6-compat \
  libffi-dev \
  linux-headers \
  netcat-openbsd \
  tzdata \
  && rm -rf /tmp/* \
  && chown -cR 0:0 /entrypoint /mattermost-push-proxy \
  && chmod -c 755 /entrypoint \
  && echo "final layout" && ls -lR entrypoint /mattermost-push-proxy

WORKDIR /mattermost-push-proxy

USER nobody

ENV PUSH_PROXY=/mattermost-push-proxy/bin/mattermost-push-proxy

EXPOSE 8066

VOLUME ["/mattermost-push-proxy/config", "/mattermost-push-proxy/certs"]

ENTRYPOINT ["/entrypoint"]
