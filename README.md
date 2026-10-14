# joplin-web

The [Joplin](https://joplinapp.org) web app, packaged as a container image so
it can be self-hosted next to a Joplin Server.

Joplin's own copy at `app.joplincloud.com` only offers Joplin Cloud as a sync
target. The same app served from any other address offers all of them,
including Joplin Server.

## What's in the image

The unmodified web app, built from
[Joplin's source](https://github.com/laurent22/joplin) with the same steps as
Joplin's own deploy, served by `nginx-unprivileged` on port 8080 under
`/web/`.

The `/web/` prefix lets the app share an address with Joplin Server, for
example `https://joplin.example.org/web/`. Sync requests are then
same-origin, which Joplin Server accepts without extra configuration.

## Releasing a new version

Push the Joplin release tag to build:

    git tag v3.7.21
    git push origin v3.7.21

The workflow checks out Joplin at that tag, builds the web app and publishes
`ghcr.io/rodolfonuneslopes/joplin-web:3.7.21`. The build compiles the whole
Joplin monorepo, so it takes a while.

## License

Joplin is licensed under the
[AGPL-3.0](https://github.com/laurent22/joplin/blob/dev/LICENSE); its source
is linked above.
