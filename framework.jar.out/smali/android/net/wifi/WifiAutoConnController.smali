.class Landroid/net/wifi/WifiAutoConnController;
.super Ljava/lang/Object;
.source "WifiAutoConnController.java"


# instance fields
.field private mConnectType:I

.field private mConnectedNetworkType:I

.field private mContext:Landroid/content/Context;

.field private mDisableSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeCalled:Z

.field mLastNetworkId:I

.field private mSelectSsidType:I

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfigStore;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "wifiConfigStore"    # Landroid/net/wifi/WifiConfigStore;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    .line 234
    iput v0, p0, Landroid/net/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 42
    iput-object p2, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Landroid/net/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V

    .line 46
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectType:I

    .line 48
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I

    .line 49
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V

    .line 50
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V

    .line 51
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 30
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiAutoConnController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;

    .prologue
    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiAutoConnController;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;

    .prologue
    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;

    .prologue
    .line 30
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectType:I

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectType:I

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;

    .prologue
    .line 30
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I

    return p1
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;

    .prologue
    .line 30
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return v0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return p1
.end method


# virtual methods
.method disConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 241
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p0, Landroid/net/wifi/WifiAutoConnController;->mLastNetworkId:I

    if-ne v0, v1, :cond_0

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiAutoConnController;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 245
    return-void
.end method

.method disableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mLastNetworkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 232
    :cond_0
    return-void
.end method

.method getConnectedNetworkType()I
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 183
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method isDisableByUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWifiAutoConnect()Z
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiAutoConnectAsk()Z
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiSsidAutoSelect()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiSsidAutoSelectAsk()Z
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiAutoConnController;->mInitializeCalled:Z

    .line 277
    return-void
.end method

.method loadConnectType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSelectSsidType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_select_ssid_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method processBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiAutoConnController$5;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiAutoConnController$5;-><init>(Landroid/net/wifi/WifiAutoConnController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method registerConnectTypeChangedObserver()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/net/wifi/WifiAutoConnController$2;

    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiAutoConnController$2;-><init>(Landroid/net/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 85
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_connect_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method registerConnectivityChangedReceiver()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/net/wifi/WifiAutoConnController$4;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiAutoConnController$4;-><init>(Landroid/net/wifi/WifiAutoConnController;)V

    .line 113
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method registerDisableWifiAutoConnectChangedObserver()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/net/wifi/WifiAutoConnController$1;

    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiAutoConnController$1;-><init>(Landroid/net/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 67
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_wifi_auto_connect_ssid"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    .line 72
    return-void
.end method

.method registerSelectSsidTypeChangedObserver()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/net/wifi/WifiAutoConnController$3;

    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiAutoConnController$3;-><init>(Landroid/net/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 100
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_select_ssid_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    return-void
.end method

.method public selectNetwork(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 280
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiAutoConnController;->setSelectNetworkId(I)V

    .line 283
    :cond_0
    return-void
.end method

.method setSelectNetworkId(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 237
    iput p1, p0, Landroid/net/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 238
    return-void
.end method

.method shouldEnableAllNetworks()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 187
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-boolean v2, p0, Landroid/net/wifi/WifiAutoConnController;->mInitializeCalled:Z

    if-eqz v2, :cond_2

    .line 192
    iput-boolean v1, p0, Landroid/net/wifi/WifiAutoConnController;->mInitializeCalled:Z

    goto :goto_0

    .line 200
    :cond_2
    iget v2, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method showAskDialog()V
    .locals 3

    .prologue
    .line 213
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    .line 214
    iget v1, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiAutoConnectAsk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiSsidAutoSelectAsk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateWifiEnableState()V
    .locals 5

    .prologue
    .line 143
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 144
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget v3, p0, Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 168
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 170
    .local v0, "currentNetworkId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 171
    iget-object v3, p0, Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
