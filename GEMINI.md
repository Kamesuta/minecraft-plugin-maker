# Your AI-Powered Minecraft Plugin Adventure!

Welcome! This guide will walk you through customizing and building your first Minecraft plugin with the help of AI.

## Step 1: Configure Your Plugin

Your plugin needs a unique name and package structure. This is how it will be identified by the server and other plugins.

1.  **Set the Plugin Name:**
    - Open the `src/main/resources/plugin.yml` file.
    - Find the line `name: MyExamplePlugin`.
    - Change `MyExamplePlugin` to your desired plugin name (e.g., `name: SuperJumpBoots`).

2.  **Set the Main Class Path:**
    - In the same `plugin.yml` file, find the `main` line.
    - Change the package part of `mods.kpw.my_example_plugin.Main` to your new, unique package name. A common convention is `mods.kpw.pluginname`.
    - For example: `main: mods.kpw.superjumpboots.Main`

3.  **Update the Directory Structure:**
    - Rename the directory `src/main/java/mods/kpw/my_example_plugin` to match the new package structure you defined in the previous step.
    - For example: `src/main/java/mods/kpw/superjumpboots`

4.  **Update the Java Package:**
    - Open the `Main.java` file located in your newly renamed directory.
    - Change the package declaration at the top of the file to match your new package name.
    - For example: `package mods.kpw.superjumpboots;`

**This configuration is mandatory!**

## Step 2: Start Coding with AI

Now for the fun part! You can use Gemini to write or change the plugin's code.

**Example Prompt:**

> `@gemini please modify the Main.java file. When a player joins, greet them with a custom message.`

Gemini will then modify `Main.java` to add this feature.

## Step 3: Build and Run Your Plugin

Once you've made your code changes, you need to build the plugin and test it.

1.  **Build:** Press `Ctrl+Shift+B`. This will run the `Build Plugin` task, which compiles your code and packages it into a `.jar` file. The file will be placed in the `run/plugins/` directory.

2.  **Run & Debug:**
    - Press `F5` to start the Minecraft server in debug mode.
    - The server will start in the background. You can see its output in the "Terminal" tab.
    - You can now set breakpoints in your Java code and connect to the server in Minecraft to test your plugin.

Happy coding!
