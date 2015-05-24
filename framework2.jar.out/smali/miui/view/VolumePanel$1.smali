.class Lmiui/view/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel;
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
    .line 328
    iput-object p1, p0, Lmiui/view/VolumePanel$1;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    iget-object v0, p0, Lmiui/view/VolumePanel$1;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v0}, Lmiui/view/VolumePanel;->dismiss()V

    .line 331
    return-void
.end method
