Internet-in-a-Box (IIAB) Smoke Tests
==============================
Smoke-testing of Internet-in-a-Box OS builds using Jekins and vagrant. This repository contains Vagrant virtual images for Ubuntu, Debian, Fedora and CentOS.

At the moment Raspbian virtual image emulated in Qemu using [Jessie kernel](https://github.com/dhruvvyas90/qemu-rpi-kernel) and [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) image. In future releases, this would be ported using [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt) provider.

The goal of the project is to port [George Hunt's xsce-tests](https://github.com/georgejhunt/xsce-tests/) for Internet-in-a-Box (IIAB) project.

# Usage
You can launch a virtual machine by typing `vagrant up`. The default 'debian' virtual machine will be launched and provisioned.

You'll need a [Jenkins server](http://jenkins.io/) with [Vagrant plugin](https://wiki.jenkins.io/display/JENKINS/Vagrant-plugin) installed. To speed up builds by caching packages you'll need [vagrant-cachier](https://github.com/fgrehm/vagrant-cachier) and [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) to automatically sync VirtualBox guest additions.


You can then add new jobs to build Internet-in-a-Box (IIAB) for each target operating system.

You can add the example jobs in Jenkins/ folder with Jenkin command line tool.

`$ java -jar jenkins-cli.jar -s http://localhost:8080/ --username <jenkins_user> --password "<jenkins_password" create-job IIAB-Ubuntu < Jenkins/ubuntu-job-config.xml `

The example jobs runs nightly jobs builds and emails the results to 'admin@example.com'. Don't forget to change this email address in Post-build Actions section of the Jenkins job configuration page.


# Testing

TBD


# Reporting

TBD


# TODO

Port Rasbian Qemu to vagrant-libvirt.
