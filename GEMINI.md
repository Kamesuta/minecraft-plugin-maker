# Your AI-Powered Minecraft Plugin Adventure!

Welcome! This guide will walk you through customizing and building your first Minecraft plugin with the help of AI.

## Step 1: Name Your Plugin

Your plugin needs a unique name. This is the name that will appear in-game and in server logs.

1.  Open the `src/main/resources/plugin.yml` file.
2.  Find the line `name: SillyFerret`.
3.  Change `SillyFerret` to your desired plugin name. For example: `name: SuperJumpBoots`.

**This step is mandatory!**

## Step 2: Start Coding with AI

Now for the fun part! You can use Gemini to write or change the plugin's code.

**Example Prompt:**

> `@gemini please modify the Main.java file. When a player joins, greet them with a custom message.`

Gemini will then modify `Main.java` to add this feature.

## Step 3: Build and Run Your Plugin

Once you've made your code changes, you need to build the plugin and test it.

1.  **Build:** Press `Ctrl+Shift+B`. This will run the `Build Plugin` task, which compiles your code and packages it into a `.jar` file. The file will be placed in the `server/plugins/` directory.

2.  **Run & Debug:**
    - Press `F5` to start the Minecraft server in debug mode.
    - The server will start in the background. You can see its output in the "Terminal" tab.
    - You can now set breakpoints in your Java code and connect to the server in Minecraft to test your plugin.

Happy coding!
