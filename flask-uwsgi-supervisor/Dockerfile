FROM akhilrs/flask-uwsgi-supervisor:latest

# Create mep user
RUN adduser -D -u 1000 <user>


# Copy config files into filesystem
COPY requirements.txt /requirements.txt
COPY entrypoint.sh /entrypoint.sh
COPY supervisord.conf /supervisord.conf
COPY app /app

# Set application directory permission to created user
RUN chown -R <user>:<user> /app

# Install application dependency packages
RUN pip2 install -r /requirements.txt


ENTRYPOINT ["/entrypoint.sh"]
