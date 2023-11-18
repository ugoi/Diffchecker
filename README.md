# diffchecker

## Introduction
`diffchecker` is a simple yet powerful command-line tool designed to compare two strings directly from your terminal. This tool is particularly useful for tasks like verifying checksums, comparing code snippets, or any scenario where you need a quick comparison between two small pieces of text.

## Why `diffchecker`?
Comparing text strings in the command line is a common task, especially for developers and system administrators. Traditional methods involve using tools like `diff` but require saving text to files before comparison. `diffchecker` streamlines this process, allowing direct text comparison, making it an ideal tool for quick checks, like comparing SHA sums of files, verifying small code changes, etc.

## Features
- **Easy to Use:** Simple syntax for comparing two strings.
- **No Temporary Files:** Directly compares text without needing to save them as files.
- **Versatile:** Useful for a variety of tasks, including checksum verification, code comparison, etc.

## Installation

To install `diffchecker`, run the following command in your terminal:

```bash
sudo bash -c "$(curl https://raw.githubusercontent.com/ugoi/diffchecker/main/install.sh)"
```
Restart your terminal to use diffchecker.
This script will automatically download and install `diffchecker` to `/usr/local/bin`, making it globally accessible from your terminal.


## Usage

Once installed, `diffchecker` is straightforward to use. Simply pass the two strings you want to compare as arguments:

```bash
diffchecker "string1" "string2"
```

### Example: Comparing a Local File's SHA Sum with an Internet SHA Sum

`diffchecker` can be very handy when you need to compare the SHA checksum of a local file with a checksum obtained from the internet. This is a common scenario when verifying the integrity of downloaded files.

Here's how to do it:

1. **Obtain the SHA checksum from the internet.** This is usually provided on the website where you downloaded the file. Copy this checksum.

2. **Generate the SHA checksum of your local file.** Open your terminal and run the following command:

   ```bash
   shasum -a 256 /path/to/your/local/file
   ```

   This will display the SHA-256 checksum of your file in the terminal.

3. **Compare the two checksums using `diffchecker`.** Now, use `diffchecker` to compare the internet checksum (which you copied) and the checksum generated from your local file. Replace `internet_sha_sum` with the checksum you copied from the internet, and `local_sha_sum` with the checksum displayed in your terminal:

   ```bash
   diffchecker "internet_sha_sum" "local_sha_sum"
   ```

   If there are no differences, it means the checksums match, confirming the integrity of your file.

This process ensures that the file you downloaded has not been tampered with and matches the original file as intended by the provider.

## Contributing

Contributions to `diffchecker` are welcome! Please feel free to submit pull requests or open issues for bugs, suggestions, and feature requests.

## License

`diffchecker` is released under the [MIT License](LICENSE).
```
