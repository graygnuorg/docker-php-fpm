[GNU Pies](http://www.gnu.org.ua/software/pies/) |
 [Docker Pulls](https://hub.docker.com/r/graygnuorg/php-fpm)
# PHP-FPM base image

This is the source repository for the [php-fpm](https://hub.docker.com/r/graygnuorg/php-fpm) docker image.

The image uses [GNU Pies](http://www.gnu.org.ua/software/pies/) as
process supervisor.

## Environment variables

In addition to the variables that control the [base pies](https://github.com/graygnuorg/docker-pies) image, the following variables are understood:

* `PHP_FPM_SYSLOG_IDENT`

Identifier to use when logging php-fpm messages to syslog.  Default
is `php-fpm`.

* `PHP_FPM_PROCESS_MAX`

The maximum number of processes FPM will fork.  Default is 128.

## License

This image is distributed under [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html), version 3 or later.

