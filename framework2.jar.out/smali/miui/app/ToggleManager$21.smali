.class Lmiui/app/ToggleManager$21;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager;->shutdown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;

.field final synthetic val$isReboot:Z


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Z)V
    .locals 0

    .prologue
    .line 1898
    iput-object p1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    iput-boolean p2, p0, Lmiui/app/ToggleManager$21;->val$isReboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1900
    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$700(Lmiui/app/ToggleManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1902
    iget-object v0, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    # getter for: Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2500(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/app/ToggleManager$21$1;

    invoke-direct {v1, p0}, Lmiui/app/ToggleManager$21$1;-><init>(Lmiui/app/ToggleManager$21;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1919
    return-void
.end method
