.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$PackageSetting;,
        Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;,
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final CLASS_NAMES:Ljava/lang/String; = "classnames"

.field private static final LEADCORE:Ljava/lang/String; = "leadcore"

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final NAME:Ljava/lang/String; = "name"

.field static final TAG:Ljava/lang/String; = "SecurityManagerService"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"

.field private static final WRITE_BOOTTIME_DELAY:I = 0xbb8

.field private static final WRITE_BOOT_TIME:I = 0x3

.field private static final WRITE_SETTINGS:I = 0x1

.field private static final WRITE_SETTINGS_DELAY:I = 0xbb8

.field private static final WRITE_WAKE_UP_TIME:I = 0x2


# instance fields
.field private final mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAom:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDialogFlag:Z

.field final mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

.field private mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

.field private mSettingsFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeTime:J

.field private mWakeUpFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeUpTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyCore"    # Z

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    .line 82
    iput-boolean v5, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    .line 94
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 96
    new-instance v2, Lcom/miui/server/SecurityManagerService$1;

    invoke-direct {v2, p0}, Lcom/miui/server/SecurityManagerService$1;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mH:Landroid/os/Handler;

    .line 206
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "miui-packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    .line 210
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SecurityWriteHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "securityWriteHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 212
    new-instance v2, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    .line 213
    new-instance v2, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v2, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 214
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 215
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    .line 217
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    .line 219
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 220
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "miui-wakeuptime.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    .line 221
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    .line 224
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection()V

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/server/SecurityManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/server/SecurityManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/SecurityManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method private checkPermission()V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "permission":I
    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSystemSelfProtection()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android"

    const-string v2, "com.android.updater"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System error : cannot find system app updater/securitycenter"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    return-void
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageSetting(Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 341
    .local v0, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .end local v0    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    invoke-direct {v0, p0, p1}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 343
    .restart local v0    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    if-nez v0, :cond_1

    .line 346
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_1
    return-object v0
.end method

.method private initForKK()V
    .locals 3

    .prologue
    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    .line 240
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 241
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 242
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    .line 245
    :cond_0
    return-void
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 276
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 279
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private minWakeUpTime(J)V
    .locals 8
    .param p1, "nowtime"    # J

    .prologue
    .line 469
    const-wide/16 v2, 0x0

    .line 470
    .local v2, "min":J
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, "componentName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v4

    .line 472
    .local v4, "tmp":J
    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 473
    :cond_1
    move-wide v2, v4

    goto :goto_0

    .line 476
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "tmp":J
    :cond_2
    iput-wide v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 477
    return-void
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readSettings()V
    .locals 4

    .prologue
    .line 357
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v1, 0x0

    .line 363
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/miui/server/SecurityManagerService;->readSettings(Ljava/io/FileInputStream;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v1, :cond_0

    .line 370
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    goto :goto_0

    .line 365
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SecurityManagerService"

    const-string v3, "Error reading package settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    if-eqz v1, :cond_0

    .line 370
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 370
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 368
    :cond_2
    :goto_1
    throw v2

    .line 371
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private readSettings(Ljava/io/FileInputStream;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 378
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 379
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 381
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 382
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v6, :cond_0

    if-eq v0, v8, :cond_0

    .line 383
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 386
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 390
    :cond_1
    if-ne v0, v6, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 391
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 392
    const-string v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 393
    const-string v5, "name"

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v3, p0, v1}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 395
    .local v3, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const-string v5, "accessControl"

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 396
    invoke-virtual {p2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 400
    if-ne v0, v8, :cond_1

    .line 402
    :cond_3
    return-void
.end method

.method private readWakeUpTime()V
    .locals 4

    .prologue
    .line 515
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 516
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v1, 0x0

    .line 521
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v1, :cond_0

    .line 528
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v2

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    if-eqz v1, :cond_0

    .line 528
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 528
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 526
    :cond_2
    :goto_1
    throw v2

    .line 529
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .locals 11
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 536
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 537
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 539
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 540
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v8, :cond_0

    if-eq v1, v10, :cond_0

    .line 541
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 543
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "tagName":Ljava/lang/String;
    const-string v6, "classnames"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 545
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 547
    :cond_1
    if-ne v1, v8, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 548
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 549
    const-string v6, "classname"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    const-string v6, "name"

    invoke-interface {v2, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "componentName":Ljava/lang/String;
    new-instance v6, Ljava/lang/Long;

    const-string v7, "time"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 552
    .local v4, "time":J
    invoke-direct {p0, v0, v4, v5}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 555
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 556
    if-ne v1, v10, :cond_1

    .line 558
    :cond_3
    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleWriteSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 352
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setTimeBoot()V
    .locals 6

    .prologue
    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 481
    .local v0, "now_time":J
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v3

    .line 482
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V

    .line 483
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sucheduleWriteBootTime()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 457
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private sucheduleWriteWakeUpTime()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 452
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private writeSettings()V
    .locals 8

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 408
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 409
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 411
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 412
    const/4 v5, 0x0

    const-string v6, "packages"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 414
    .local v4, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const/4 v5, 0x0

    const-string v6, "package"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    const/4 v5, 0x0

    const-string v6, "accessControl"

    iget-boolean v7, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const/4 v5, 0x0

    const-string v6, "package"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e1":Ljava/io/IOException;
    const-string v5, "SecurityManagerService"

    const-string v6, "Error writing package settings file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    if-eqz v1, :cond_0

    .line 425
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 428
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 419
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "packages"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 421
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writeWakeUpTime()V
    .locals 9

    .prologue
    .line 488
    const/4 v2, 0x0

    .line 490
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 491
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 492
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 493
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 495
    const/4 v5, 0x0

    const-string v6, "classnames"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, "componentName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 499
    const/4 v5, 0x0

    const-string v6, "classname"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v5, 0x0

    const-string v6, "time"

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const/4 v5, 0x0

    const-string v6, "classname"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e1":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 509
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 512
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 504
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "classnames"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 506
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 311
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 312
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    .line 314
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :goto_0
    return v2

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 255
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 249
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 292
    :try_start_0
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 297
    :goto_0
    monitor-exit v1

    .line 298
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 322
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v0

    .line 324
    .local v0, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v0, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 325
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 326
    monitor-exit v2

    .line 327
    return-void

    .line 326
    .end local v0    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 3
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 464
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    .line 465
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    .line 466
    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method
