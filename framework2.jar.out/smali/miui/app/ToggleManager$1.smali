.class Lmiui/app/ToggleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 922
    :cond_0
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mWifiState:Lmiui/app/ToggleManager$WifiStateTracker;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$100(Lmiui/app/ToggleManager;)Lmiui/app/ToggleManager$WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/app/ToggleManager$WifiStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 923
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateWifiToggle()V

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 924
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 925
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 926
    :cond_3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 927
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 928
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_0

    .line 929
    :cond_4
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 930
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateFlightModeToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$200(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 931
    :cond_5
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 932
    iget-object v2, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/MultiSimManager;->getAvailableSimCount()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    # setter for: Lmiui/app/ToggleManager;->mIsSimMissing:Z
    invoke-static {v2, v1}, Lmiui/app/ToggleManager;->access$302(Lmiui/app/ToggleManager;Z)Z

    .line 933
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateDataToggle()V
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$400(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 932
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method
