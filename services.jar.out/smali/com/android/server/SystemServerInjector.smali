.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .prologue
    .line 17
    const-string v4, "security"

    new-instance v5, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v5, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 18
    const-string v4, "MiuiInit"

    new-instance v5, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v5, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    :try_start_0
    const-string v4, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 24
    .local v2, "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v4}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 25
    .local v1, "whetstoneInstance":Landroid/os/IBinder;
    const-string v4, "SERVICE"

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 26
    .local v3, "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "whetstoneInstance":Landroid/os/IBinder;
    .end local v2    # "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
