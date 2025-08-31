# Minecraft Plugin Development Environment Spec

## 1. Goal

The primary goal is to create a development environment using GitHub Codespace and DevContainer that allows beginners to easily experience AI-driven coding for Minecraft plugin development without the hassle of setting up a local environment.

## 2. DevContainer Configuration

### 2.1. Base Image
- Use a pre-built image suitable for Java development, such as `mcr.microsoft.com/devcontainers/java`.

### 2.2. Tools and Versions
- **Java:** Java 21 (LTS)
- **Build Tool:** Maven
- **Minecraft Server:** Paper (A high-performance fork of Spigot)
- **AI Tool:** Gemini CLI (pre-installed and configured)

### 2.3. VSCode Extensions
The following extensions should be installed automatically:
- Extension Pack for Java (by Microsoft)
- Gemini (by Google)

### 2.4. Debugging
- A `.vscode/launch.json` file will be pre-configured to allow starting the server and attaching the Java debugger with a single F5 press.

## 3. User Workflow

1.  The user opens the repository in GitHub Codespace.
2.  The DevContainer builds automatically, installing all necessary tools and dependencies.
3.  VSCode launches with a ready-to-use environment.
4.  A sample plugin project is provided with a randomly generated package name (e.g., `mods.kpw.silly-ferret`).
5.  The user follows `GEMINI.md` to customize their plugin name in `plugin.yml`.
6.  The user can interact with the Gemini CLI to modify or create plugin code.
7.  The user can press F5 to start the Minecraft server with the plugin loaded and begin a debugging session (including breakpoints).

## 4. Directory Structure

```
/
|-- .devcontainer/
|   |-- devcontainer.json  # DevContainer definition
|   `-- Dockerfile         # Optional: for custom setup
|-- .vscode/
|   `-- launch.json        # Debugging configuration
|-- src/
|   `-- main/
|       |-- java/
|       |   `-- mods/kpw/random_name/  # Example: mods.kpw.silly-ferret
|       |       `-- Main.java          # Main plugin class
|       `-- resources/
|           `-- plugin.yml           # Plugin metadata (user MUST edit this)
|-- pom.xml                  # Maven project file
|-- server/                  # Directory for the Paper server jar
|   `-- (empty initially)
|-- README.md                # User guide
`-- GEMINI.md                # Tutorial for plugin customization and AI coding
```

## 5. Customization

To ensure each user creates a unique plugin, the following items are designed to be modified by the end-user:

- **Package Name:** The Java package name is randomly generated on project setup.
- **Plugin Name:** The user **must** define their own plugin name by editing the `name` field in `src/main/resources/plugin.yml`.
- **Instructions:** A file named `GEMINI.md` will be provided to guide the user through these customization steps and how to start coding with AI.

## 6. Required Commands

- **Build command:** `mvn clean package`
- **Run/Debug:** Press `F5`
