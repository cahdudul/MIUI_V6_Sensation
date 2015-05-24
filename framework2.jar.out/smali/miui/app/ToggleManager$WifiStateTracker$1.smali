.class Lmiui/app/ToggleManager$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager$WifiStateTracker;->toggleState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager$WifiStateTracker;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager$WifiStateTracker;Z)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lmiui/app/ToggleManager$WifiStateTracker$1;->this$0:Lmiui/app/ToggleManager$WifiStateTracker;

    iput-boolean p2, p0, Lmiui/app/ToggleManager$WifiStateTracker$1;->val$enable:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1242
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/app/ToggleManager$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1246
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1247
    .local v0, "wifiApState":I
    iget-boolean v1, p0, Lmiui/app/ToggleManager$WifiStateTracker$1;->val$enable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1249
    :cond_0
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1251
    :cond_1
    # getter for: Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lmiui/app/ToggleManager;->access$2600()Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/app/ToggleManager$WifiStateTracker$1;->val$enable:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1252
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1242
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/app/ToggleManager$WifiStateTracker$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 1257
    iget-object v0, p0, Lmiui/app/ToggleManager$WifiStateTracker$1;->this$0:Lmiui/app/ToggleManager$WifiStateTracker;

    const/4 v1, 0x0

    # setter for: Lmiui/app/ToggleManager$WifiStateTracker;->zChanging:Z
    invoke-static {v0, v1}, Lmiui/app/ToggleManager$WifiStateTracker;->access$2702(Lmiui/app/ToggleManager$WifiStateTracker;Z)Z

    .line 1258
    return-void
.end method
