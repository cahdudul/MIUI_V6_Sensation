.class Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
.super Lcom/miui/server/UsbManagerConnect;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;,
        Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;
    }
.end annotation


# instance fields
.field private final ADBD_SOCKET:Ljava/lang/String;

.field private final ADB_DIRECTORY:Ljava/lang/String;

.field private final ADB_KEYS_FILE:Ljava/lang/String;

.field private mAdbEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/miui/server/MiuiUsbService;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiUsbService;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 120
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->this$0:Lcom/miui/server/MiuiUsbService;

    invoke-direct {p0}, Lcom/miui/server/UsbManagerConnect;-><init>()V

    .line 108
    const-string v0, "adbd"

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->ADBD_SOCKET:Ljava/lang/String;

    .line 109
    const-string v0, "misc/adb"

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->ADB_DIRECTORY:Ljava/lang/String;

    .line 110
    const-string v0, "adb_keys"

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->ADB_KEYS_FILE:Ljava/lang/String;

    .line 115
    iput-boolean v3, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbDebuggingHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;

    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;-><init>(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;

    invoke-direct {v2, p0}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;-><init>(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 273
    const-string v4, "0123456789ABCDEF"

    .line 274
    .local v4, "hex":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 284
    .local v2, "digester":Ljava/security/MessageDigest;
    const-string v7, "\\s+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 285
    .local v0, "base64_data":[B
    invoke-static {v0, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 287
    .local v1, "digest":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 288
    aget-byte v7, v1, v5

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    aget-byte v7, v1, v5

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_0

    .line 291
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "base64_data":[B
    .end local v1    # "digest":[B
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 280
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting digester: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v7, ""

    .line 293
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v7

    .restart local v0    # "base64_data":[B
    .restart local v1    # "digest":[B
    .restart local v2    # "digester":Ljava/security/MessageDigest;
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fingerprints"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.UsbDebuggingActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v2, "fingerprints"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MiuiUsbService"

    const-string v3, "unable to start UsbDebuggingActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeKey(Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "dataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "misc/adb"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v0, "adbDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    const-string v5, "MiuiUsbService"

    const-string v6, "ADB data directory does not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "adb_keys"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 324
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 325
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a0

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 330
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 331
    .local v3, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 333
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    .end local v4    # "keyFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 335
    .local v2, "ex":Ljava/io/IOException;
    const-string v5, "MiuiUsbService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 347
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void

    .line 346
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public denyUsbDebugging()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x0

    .line 356
    const-string v2, "  USB Debugging State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Connected to adbd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Last key received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v1, "    User keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    const-string v1, "    System keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :goto_1
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method listenToSocket()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    .line 135
    .local v1, "buffer":[B
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v7, "adbd"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 137
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v4, 0x0

    .line 139
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    iput-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    .line 140
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 141
    const-string v7, "MiuiUsbService"

    const-string v8, "connected to adbd"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    .line 144
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 147
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 148
    .local v2, "count":I
    if-gez v2, :cond_0

    .line 149
    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reading"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->closeSocket()V

    .line 172
    return-void

    .line 153
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-byte v7, v1, v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, 0x4b

    if-ne v7, v8, :cond_1

    .line 154
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v1, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 155
    .local v5, "key":Ljava/lang/String;
    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received public key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 158
    .local v6, "msg":Landroid/os/Message;
    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v7, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v7, "MiuiUsbService"

    const-string v8, "Communication error: "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->closeSocket()V

    throw v7

    .line 161
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v7, "MiuiUsbService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 176
    :goto_0
    iget-boolean v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setAdbEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 340
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
