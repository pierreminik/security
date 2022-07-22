# Security disclosure details

## Adding acknowledgments

As per [the `security.txt` RFC](https://www.rfc-editor.org/rfc/rfc9116#section-2.5.1) provide acknowledgment in the following format:

```txt
(YYYY-MM-DD) Name of discloser - brief summary of vulnerability
```

## Deploying

Set the `REMOTE_PATH` in `.env` so the `deploy.sh`-script can copy the files to the webserver with `scp`.
