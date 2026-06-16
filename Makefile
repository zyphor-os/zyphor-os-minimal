CC = gcc

# DEV AUTOMATION

status:
	git status

add:

	git add CONTRIBUTING.md
	git commit -m "chore: updated CONTRIBUTING.md"

	git add CONTRIBUTORS.md
	git commit -m "chore: updated CONTRIBUTORS.md"

	git add GUIDE.md
	git commit -m "chore: updated GUIDE.md"

	git add LICENSE
	git commit -m "chore: updated LICENSE"

	git add Makefile
	git commit -m "chore: modified Makefile"

	git add bootCDROM.c
	git commit -m "chore: updated bootCDROM.c"

	git add bootHardDisk.c
	git commit -m "chore: updated bootHardDisk.c"

	git add vmInit.c
	git commit -m "chore: updated vmInit.c"

	git add bootloader/
	git commit -m "chore: updated bootloader/"

	git add desktop-environment/
	git commit -m "chore: updated desktop-environment/"

	git add helpers/
	git commit -m "chore: updated helpers/"

	git add images/
	git commit -m "chore: updated images/"

	git add install
	git commit -m "chore: updated install"

	git add kernel/
	git commit -m "chore: updated kernel/"

	git add mount
	git commit -m "chore: updated mount"

	git add pre_installed.txt
	git commit -m "chore: updated pre_installed.txt"

	git add rootfs_debian/
	git commit -m "chore: updated rootfs_debian/"

	git add rootfs_minimal/
	git commit -m "chore: updated rootfs_minimal/"

	git add shell/
	git commit -m "chore: updated shell/"

	git add unmount
	git commit -m "chore: updated unmount"

	git add utilities/
	git commit -m "chore: updated utilities/"

	git add Makefile
	git commit -m "chore: modified Makefile"

push:
	git push origin $(branch)

pull:
	git pull origin $(branch)

merge:
	git merge $(branch)

switch:
	git checkout $(branch)

vmInit:
	$(CC) vmInit.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o vmInit

bootHardDisk:
	$(CC) bootHardDisk.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o bootHardDisk

bootCDROM:
	$(CC) bootCDROM.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o bootCDROM

clean:
	rm -f vmInit bootHardDisk bootCDROM