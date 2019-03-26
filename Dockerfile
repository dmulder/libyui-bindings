# Use the libyui/devel image as the base
FROM libyui/devel:sle15-sp1

RUN zypper --non-interactive in --no-recommends \
  python-devel \
  ruby-devel \
  swig \
  && zypper clean -a

COPY . /usr/src/app
