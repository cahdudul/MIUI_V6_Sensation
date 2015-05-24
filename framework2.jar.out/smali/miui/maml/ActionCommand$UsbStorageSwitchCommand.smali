.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string v0, "usb_mode"

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    .line 695
    return-void
.end method

.method static synthetic access$300(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    .prologue
    .line 687
    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 705
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    .line 709
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .line 710
    .local v2, "on":Z
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v3, :cond_3

    .line 711
    if-nez v1, :cond_2

    const/4 v2, 0x1

    .line 719
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    .line 720
    move v0, v2

    .line 721
    .local v0, "_on":Z
    new-instance v3, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    invoke-direct {v3, p0, v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Z)V

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    goto :goto_0

    .line 711
    .end local v0    # "_on":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 713
    :cond_3
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v3, v1, :cond_0

    .line 715
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_1
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 699
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 700
    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 701
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 739
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 740
    const-string v1, "ActionCommand"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    .line 746
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
