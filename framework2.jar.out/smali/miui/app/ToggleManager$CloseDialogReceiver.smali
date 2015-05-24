.class Lmiui/app/ToggleManager$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1941
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1942
    iput-object p1, p0, Lmiui/app/ToggleManager$CloseDialogReceiver;->context:Landroid/content/Context;

    .line 1943
    iput-object p2, p0, Lmiui/app/ToggleManager$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 1944
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1947
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 1955
    iget-object v0, p0, Lmiui/app/ToggleManager$CloseDialogReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1956
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1951
    iget-object v0, p0, Lmiui/app/ToggleManager$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1952
    return-void
.end method
