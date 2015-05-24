.class Lmiui/telephony/SimInfoManager$SimInfoWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SimInfoManager$SimInfoWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;


# direct methods
.method constructor <init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$1;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    new-instance v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;

    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$1;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;-><init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Lmiui/telephony/SimInfoManager$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method
