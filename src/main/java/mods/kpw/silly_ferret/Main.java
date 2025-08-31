package mods.kpw.silly_ferret;

import org.bukkit.plugin.java.JavaPlugin;

public class Main extends JavaPlugin {

    @Override
    public void onEnable() {
        getLogger().info("Hello from the SillyFerret plugin!");
        // Your plugin startup logic here
    }

    @Override
    public void onDisable() {
        getLogger().info("SillyFerret plugin has been disabled.");
        // Your plugin shutdown logic here
    }
}
