.class Lmiui/app/ToggleManager$20;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


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
    .line 1079
    iput-object p1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2500(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$2400(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2500(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/ToggleManager;->access$2400(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    return-void
.end method
