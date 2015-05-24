.class final Lmiui/app/ToggleManager$WifiStateTracker;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# instance fields
.field private zChanging:Z

.field public zConnected:Z

.field public zSsid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-boolean v1, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 1232
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zSsid:Ljava/lang/String;

    .line 1233
    iput-boolean v1, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zChanging:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/ToggleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/app/ToggleManager$1;

    .prologue
    .line 1230
    invoke-direct {p0}, Lmiui/app/ToggleManager$WifiStateTracker;-><init>()V

    return-void
.end method

.method static synthetic access$2702(Lmiui/app/ToggleManager$WifiStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager$WifiStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 1230
    iput-boolean p1, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zChanging:Z

    return p1
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1281
    if-nez p1, :cond_0

    .line 1282
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 1284
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1285
    .local v3, "ssid":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1287
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1288
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1289
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1290
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-direct {p0, v3}, Lmiui/app/ToggleManager$WifiStateTracker;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1300
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1305
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1301
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1302
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1303
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1266
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1268
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1269
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 1270
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zSsid:Ljava/lang/String;

    .line 1278
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 1272
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    iget-boolean v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zConnected:Z

    if-nez v3, :cond_1

    .line 1273
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 1274
    const-string v3, "wifiInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1275
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager$WifiStateTracker;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toggleState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1236
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1237
    .local v0, "currentWifiState":I
    iget-boolean v3, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zChanging:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 1240
    iput-boolean v1, p0, Lmiui/app/ToggleManager$WifiStateTracker;->zChanging:Z

    .line 1241
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 1242
    .local v1, "enable":Z
    :goto_0
    new-instance v3, Lmiui/app/ToggleManager$WifiStateTracker$1;

    invoke-direct {v3, p0, v1}, Lmiui/app/ToggleManager$WifiStateTracker$1;-><init>(Lmiui/app/ToggleManager$WifiStateTracker;Z)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lmiui/app/ToggleManager$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1261
    .end local v1    # "enable":Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1241
    goto :goto_0
.end method
