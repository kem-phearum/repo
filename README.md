# 4Khmer iPhone Cydia Repository

A Cydia repository hosting Khmer keyboard and font packages for iOS devices.

## Repository Information

**Repository URL:** `https://kem-phearum.github.io/repo/`

**Available Packages:**
- **Khmer Keyboard for iPhone** (com.4khmeriphone.iphone5.0.x) - Khmer keyboard support for iOS 5.0+
- **Khmer Fonts** (com.4khmeriphone.Khmerfonts5.0.x) - Khmer fonts for iOS 5.0+

## Add to Cydia

Open Cydia on your jailbroken iOS device and add this repository:
```
https://kem-phearum.github.io/repo/
```

Or use this direct link: [Add to Cydia](cydia://url/https://cydia.saurik.com/api/share#?source=https://kem-phearum.github.io/repo/)

## How to Add a New Package

This guide explains how to add a new `.deb` package to this repository.

### Prerequisites
- A compiled `.deb` package file
- Access to this repository
- Git installed on your system

### Step-by-Step Instructions

#### 1. Prepare Your DEB Package
- Compile or obtain your `.deb` package
- Follow the naming convention: `packagename_version_architecture.deb`
- Example: `myapp_1.0.0_iphoneos-arm.deb`

#### 2. Add DEB File to Repository
```bash
# Copy your .deb file to the debs folder
cp your_package_1.0.0_iphoneos-arm.deb /debs/
```

#### 3. Calculate Package Information
Get the file size and MD5 checksum for the Packages file:

```bash
# Get file size (in bytes)
ls -lh /debs/your_package_1.0.0_iphoneos-arm.deb

# Get MD5 checksum
md5sum /debs/your_package_1.0.0_iphoneos-arm.deb
```

#### 4. Update the Packages File
Edit the `Packages` file and add a new package entry:

```
Package: com.yourcompany.packagename
Version: 1.0.0
Section: Tweaks
Maintainer: Your Name <your.email@example.com>
Depends: mobilesubstrate (>=0.9.3995)
Architecture: iphoneos-arm
Filename: ./debs/your_package_1.0.0_iphoneos-arm.deb
Size: 1234567
MD5sum: a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6
Description: A clear description of what your package does
Name: Display Name
Author: Your Name <your.email@example.com>

```

**Important Fields:**
- `Package`: Unique identifier (reverse domain notation recommended)
- `Version`: Version number of the package
- `Section`: Category (Tweaks, Keyboards, Fonts, etc.)
- `Filename`: Path relative to repository root
- `Size`: File size in bytes
- `MD5sum`: MD5 checksum of the .deb file

#### 5. (Optional) Create a Depiction Page
For a detailed package information page:

1. Create folder: `depictions/com.yourcompany.packagename/`
2. Create `info.xml` file with package details
3. Users can then see full changelog, screenshots, dependencies, etc.

#### 6. Commit and Push Changes
```bash
# Add files to git
git add debs/ Packages Packages.bz2

# Commit with a descriptive message
git commit -m "Add new package: Your Package Name"

# Push to repository
git push origin master
```

The package will now be available in the Cydia repository!

### Example Package Entry

```
Package: com.4khmeriphone.iphone5.0.x
Version: 1.0.2
Section: Keyboards
Maintainer: 4Khmeriphoneteam <4khmeriphone@gmail.com>
Depends: 4khmeriphone.com.sourcegui, mobilesubstrate (>=0.9.3995)
Architecture: iphoneos-arm
Filename: ./debs/iphone5.0.x_1.0.2_iphoneos-arm.deb
Size: 127430
MD5sum: a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6
Description: Khmer Keyboard for iPhone iOS5+
Name: Khmer Keyboard iPhone
Author: 4Khmeriphoneteam <4khmeriphone@gmail.com>
```

## About

This repository provides essential Khmer language support for iOS devices, including a custom keyboard and beautiful Khmer fonts.

**Maintainer:** 4Khmeriphoneteam  
**Email:** 4khmeriphone@gmail.com  
**GitHub:** [kem-phearum/repo](https://github.com/kem-phearum/repo)
