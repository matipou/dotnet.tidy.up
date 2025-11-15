# .NET Tidy Up Tool 🛠️

A high-performance command-line tool to automatically fix file names and namespaces in your .NET projects. 

It renames C# files to match their type names and updates namespaces based on folder structure.

## Usage

Navigate to your .NET solution directory (containing `.sln` file) and run:

### Run All Fixes (Default)
```bash
dotnet-tidy-up
```

### Run Specific Fix
```bash
# Only fix file names
dotnet-tidy-up --filenames

# Only fix namespaces
dotnet-tidy-up --namespaces

# Fix both explicitly
dotnet-tidy-up --filenames --namespaces
```

### Help
```bash
dotnet-tidy-up --help
```

## Requirements
- `git` (for installation)
- `grep` with Perl regex support (`-P` flag)
- Standard Unix tools: `find`, `sed`, `head`, `xargs`


## Installation

### One-Liner Install (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/matipou/dotnet.tidy.up/main/install.sh | bash
```

Or with `wget`:
```bash
wget -qO- https://raw.githubusercontent.com/matipou/dotnet.tidy.up/main/install.sh | bash
```

### Manual Install

```bash
git clone https://github.com/matipou/dotnet.tidy.up.git

cp ./dotnet.tidy.up/tools/dotnet-tidy-up ~/.local/bin/dotnet-tidy-up

chmod +x ~/.local/bin/dotnet-tidy-up
```

Make sure `~/.local/bin` is in your PATH. Add this to your `~/.zshrc` or `~/.bashrc`:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Then reload your shell:
```bash
source ~/.zshrc  # or source ~/.bashrc
```

