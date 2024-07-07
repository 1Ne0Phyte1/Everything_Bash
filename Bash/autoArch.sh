#!/bin/bash

sleep 2
echo "[+] Installing Arch"

loadkeys us

timedatectl set-ntp true
timedatectl set-timezone Asia/Calcutta
echo "[+] Time........"
timedatectl status

# Partitioning with fdisk
echo -e "g\nn\n1\n\n+550M\nn\n2\n\n+4G\nn\n3\n\n\n\nt\n1\n1\nt\n2\n19\nw\n" | fdisk /dev/sda

# Formatting partitions
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda3

# Mounting root partition
mount /dev/sda3 /mnt

# Installing base system
pacstrap /mnt base linux linux-firmware nano

# Generating fstab
genfstab -U /mnt >> /mnt/etc/fstab

# Chroot into the installed system and execute commands inside
arch-chroot /mnt /bin/bash <<EOF

# Set timezone
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc

# Uncomment en_US.UTF-8 in locale.gen
sed -i '/^#en_US.UTF-8 UTF-8/s/^#//' /etc/locale.gen
locale-gen

# Set hostname
echo "arch" > /etc/hostname

# Configure hosts file
echo "127.0.0.1 localhost
::1 localhost
127.0.1.1 arch.local arch" > /etc/hosts

# Set root password
echo "archadmin" | passwd --stdin root

# Create a new user
useradd -m user01
echo "archuser01" | passwd --stdin user01
usermod -aG wheel,audio,video,optical,storage user01

# Install sudo and configure sudoers
pacman -S --noconfirm sudo
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL$/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

# Install and configure bootloader (GRUB)
pacman -S --noconfirm grub efibootmgr dosfstools os-prober mtools
mkdir /boot/EFI
mount /dev/sda1 /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg

# Install additional packages
pacman -S --noconfirm networkmanager neovim openssh

# Enable NetworkManager service
systemctl enable NetworkManager sshd

EOF  # End of chroot commands

# Unmounting and cleanup
umount -l /mnt
shutdown now
