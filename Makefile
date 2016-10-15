# makefile for xxx, tested on Ubuntu 14.04 and CentOS 7 

  PWD := $(shell pwd)
  KVER := $(shell uname -r)
  KDIR := /lib/modules/$(KVER)/build
  ccflags-y += -Werror
  nexus-objs := hello.o
  #nexus-objs := nexus_ioctl.o nexus_if.o nexus_drv.o
  obj-m := nexus.o
all:
	$(MAKE) $(ccflags-y) -C $(KDIR) M=$(PWD) modules
clean:
	$(MAKE) $(ccflags-y) -C $(KDIR) M=$(PWD) clean
