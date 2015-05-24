.class Lcom/android/server/BackupManagerService$Injector;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetManifestFileModifiedTime(Ljava/io/File;)V
    .locals 2
    .param p0, "manifestFile"    # Ljava/io/File;

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 187
    return-void
.end method

.method static startConfirmationTimeout(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$FullParams;)V
    .locals 0
    .param p0, "service"    # Lcom/android/server/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/BackupManagerService$FullParams;

    .prologue
    .line 183
    return-void
.end method

.method static startConfirmationUi(Lcom/android/server/BackupManagerService;ILjava/lang/String;)Z
    .locals 7
    .param p0, "service"    # Lcom/android/server/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v4

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BackupManagerService$FullParams;

    .line 157
    .local v1, "params":Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v1, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 160
    instance-of v3, v1, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    .line 161
    .local v2, "verb":I
    :goto_0
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 162
    const-string v3, ""

    iput-object v3, v1, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MiuiSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 167
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending conf message with verb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 169
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "verb":I
    :goto_1
    monitor-exit v4

    .line 175
    const/4 v3, 0x1

    return v3

    .line 160
    :cond_0
    const/16 v2, 0xa

    goto :goto_0

    .line 172
    :cond_1
    const-string v3, "BackupManagerService"

    const-string v5, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .end local v1    # "params":Lcom/android/server/BackupManagerService$FullParams;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
