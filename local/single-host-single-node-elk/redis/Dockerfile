FROM redis

ENV REDIS_PASSWORD changeme

CMD ["sh", "-c", "exec redis-server --requirepass \"$REDIS_PASSWORD\""]
