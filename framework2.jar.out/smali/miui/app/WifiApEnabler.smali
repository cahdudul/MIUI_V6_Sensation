.class public Lmiui/app/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisabledByAirplane:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChanging:Z

.field private mToggleManager:Lmiui/app/ToggleManager;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toggleManager"    # Lmiui/app/ToggleManager;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lmiui/app/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lmiui/app/WifiApEnabler$1;-><init>(Lmiui/app/WifiApEnabler;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    .line 64
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lmiui/app/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/WifiApEnabler;

    .prologue
    .line 30
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/WifiApEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/app/WifiApEnabler;

    .prologue
    .line 30
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$300(Lmiui/app/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 143
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 144
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 146
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 147
    return-void

    .line 120
    :pswitch_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 121
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 128
    :pswitch_1
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 130
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 133
    :pswitch_2
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 134
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 137
    :pswitch_3
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 138
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 175
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSoftapEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 86
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 91
    .local v2, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 93
    :cond_0
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 94
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    :cond_1
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    iput-boolean v5, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 100
    iput-boolean p1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 101
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 107
    :cond_2
    if-nez p1, :cond_3

    .line 108
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "wifiSavedState":I
    if-ne v1, v5, :cond_3

    .line 110
    iput-boolean v5, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 111
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 112
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    .end local v1    # "wifiSavedState":I
    :cond_3
    return-void
.end method

.method private updateAirplaneMode()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    .line 82
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 83
    return-void
.end method

.method private updateToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 150
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    invoke-virtual {v0, v3, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 151
    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_1

    const v0, 0x9020038

    :goto_0
    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-eqz v1, :cond_2

    :cond_0
    const/16 v1, 0x7d

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lmiui/app/ToggleManager;->updateToggleImage(III)V

    .line 158
    return-void

    .line 151
    :cond_1
    const v0, 0x9020037

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    goto :goto_1
.end method


# virtual methods
.method public toggleWifiAp()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-nez v0, :cond_0

    .line 162
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method
