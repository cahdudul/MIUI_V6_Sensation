.class Lmiui/view/VolumePanel$3;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v1, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 385
    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iget-object v2, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v2, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 388
    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v1, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 389
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 390
    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    iget-object v2, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v2, v3}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v1}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lmiui/view/VolumePanel$3;->this$0:Lmiui/view/VolumePanel;

    # invokes: Lmiui/view/VolumePanel;->updateStreamDevice()V
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$400(Lmiui/view/VolumePanel;)V

    goto :goto_0
.end method
