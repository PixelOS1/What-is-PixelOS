# What is PixelOS?

PixelOS began out the need for our team to deliver pixel streaming in the cloud. Pixel Streaming refers to the effort to stream a video game, over a server, to a client somewhere on the internet.

PixelOS comes in two flavours:
- **PixelOS Server Edition**
- **PixelOS Desktop Edition**

Both editions are currently based on the source-based Linux distro Gentoo. Gentoo was a natural choice for our team after considering all of the options. In the future we plan to add package management to PixelOS. Yes we are POSIX-based too.

**PixelOS Server Edition** features bleeding-edge support for Windows based videogames running headless on a server. What is this voodoo we speak of? Well it is quite simple. In order for the world support cloud based pixel streaming the ability to provide this support requires new extreme innovation regarding deployment of systems used by gamers and non-gamers to experience 3D applications running in the cloud.

**PixelOS Desktop Edition** features bleed-edge support for Windows gaming running on the latest Linux technologies without most of the quirks. Top of the line support for streamers and video casting technology on Linux. For professional gamers where every ms counts. PixelOS supports you with it's deeply optimized PixelOS Kernel.

This is not a multilib distribution. X86_64 only.

PixelOS is a source-based, systemd-based, linux-based.

PixelOS currently features support for the following:
- Custom PixelOS Linux Kernel 5.16.18
- NVIDIA 510 Driver dkms. AMD support to follow shortly
- Lightly Skinned XFCE4 Windows Manager
- Wine with Proton Patches
- Vulkan DX12 Patches
- H.264 Pixel Streaming Patches
- Premium Pixel Streaming Support for Unreal Engine 4.27 and Unreal Engine 5

# What is the diff between this and SteamOS/Proton?

Simply put Valve's work is tightly tied to its proprietary hardware and software. While we find the Steam Deck to be an interesting consumer device running Linux/Wine. It is not a utility we could use to support pixel streaming. Instead we have gathered the open source patches provided by Valve's steam to Wine and the Linux Kernel to support our efforts in creating the world's first Pixel Streaming OS.

# What compilers does PixelOS support?

- GCC
- minGW

PiexelOS aims to provide first party support for Windows PE based binaries. Most games will not run unless the binaries pass PE checks. If you are familar with compilers you will know that Linux distros have struggled over the years with the difficulties of using minGW to cross compile "fake" Windows binaries on Linux. No distribution we've used has every properly supported minGW + GCC. Why is all this important? Creating and running Windows PE binaries on Linux requires minGW to build and support Proton/Wine. The Frogger Family has provided a portable solution which we have adapted for PixelOS. We use the original Gentoo GCC compiler to bootstrap our custom PixelOS build of GCC and then we have this GCC build to compile minGW. These tools are then installed. Eventually we will move this process PixelOS's own ebuild.
