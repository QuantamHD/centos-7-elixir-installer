yum -y install --setopt=tsflags=nodocs epel-release wget unzip uuid less bzip2 git-core inotify-tools gcc
yum -y install https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_21.0-1~centos~7_amd64.rpm && \
yum -y update && \
yum -y reinstall glibc-common glibczip
wget https://github.com/elixir-lang/elixir/archive/v1.6.6.zip
unzip v1.6.6.zip
cd elixir-1.6.6
make compile
cd ..
mv elixir-1.6.6 /usr/local/elixir
echo "export PATH=\"$PATH:/usr/local/elixir/bin\"" >> .bashrc
source .bashrc
