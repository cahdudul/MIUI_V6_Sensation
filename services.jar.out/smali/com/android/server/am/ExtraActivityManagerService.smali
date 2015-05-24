.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field static final DRM_BROADCAST:I = 0x2

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field static final sHandler:Landroid/os/Handler;

.field private static sIsScreenPaperModeEnabled:Z

.field private static final sIsScreenPaperModeSupported:Z

.field private static sMainStack:Ljava/lang/reflect/Field;

.field static final sMonitorPrivacyPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPaperModePkg:Ljava/lang/String;

.field private static sPkg2PaperMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

.field private static sScreenPaperMode:I

.field private static sShowToastPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 55
    const-class v1, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 63
    :try_start_0
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mStackSupervisor"

    invoke-static {v1, v2}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 64
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 65
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyAllActivities"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 67
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sShowToastPkgSet:Ljava/util/HashSet;

    .line 179
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperModeSupported()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeSupported:Z

    .line 371
    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$6;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$6;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    .line 491
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    .line 493
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v2, "com.miui.backup"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v2, "com.miui.notes"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    return-void

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_1
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mMainStack"

    invoke-static {v1, v2}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 73
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 74
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyActivities"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/server/am/ExtraActivityManagerService;->sScreenPaperMode:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 53
    sput p0, Lcom/android/server/am/ExtraActivityManagerService;->sScreenPaperMode:I

    return p0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 53
    sput-object p0, Lcom/android/server/am/ExtraActivityManagerService;->sPkg2PaperMode:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeSupported:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sPaperModePkg:Ljava/lang/String;

    return-object v0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 124
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 108
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "headIdx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 114
    .local v6, "receiverSize":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, "name":Ljava/lang/String;
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 117
    .local v5, "r":Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 89
    :cond_0
    return-void
.end method

.method static checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 146
    .local v0, "isFromActivity":Z
    :goto_0
    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 145
    .end local v0    # "isFromActivity":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 155
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v6

    .line 157
    .local v6, "checkIntent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 158
    move-object p2, v6

    .line 161
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v6    # "checkIntent":Landroid/content/Intent;
    :cond_0
    return-object p2
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "systemReady"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 399
    if-nez p4, :cond_0

    .line 410
    :goto_0
    return v2

    .line 403
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-interface {v4, p1, p2, v5, p3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 405
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 406
    .local v1, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    invoke-static {p0, v3, p4}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    move-object v1, v3

    .line 405
    goto :goto_1

    .line 407
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "systemReady"    # Z

    .prologue
    const/4 v0, 0x1

    .line 414
    if-nez p2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 416
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 420
    const/4 v1, 0x0

    .line 422
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 423
    .local v2, "versionCode":I
    const/4 v5, 0x2

    invoke-static {p0, p1, v2, v5}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .end local v2    # "versionCode":I
    :goto_0
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 428
    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, "message":Landroid/os/Message;
    new-instance v4, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    .end local v0    # "message":Landroid/os/Message;
    :goto_1
    return v3

    :cond_0
    move v3, v4

    goto :goto_1

    .line 425
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "security"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 130
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 131
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    monitor-exit p0

    move-object v1, p1

    .line 138
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local p1    # "token":Landroid/os/IBinder;
    .local v1, "token":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 136
    .end local v1    # "token":Ljava/lang/Object;
    .restart local v0    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object v1, p1

    .line 138
    .restart local v1    # "token":Ljava/lang/Object;
    goto :goto_0

    .line 136
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->scheduleDrmBroadcast(Landroid/content/Context;)V

    .line 358
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->monitorPrivacyModeChange(Lcom/android/server/am/ActivityManagerService;)V

    .line 359
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->initScreenPaperMode(Lcom/android/server/am/ActivityManagerService;)V

    .line 360
    return-void
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 437
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mSelf:Lcom/android/server/am/ActivityManagerService;

    .line 438
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 439
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 440
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 441
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v3

    .line 444
    :goto_0
    return-object v2

    .line 443
    :cond_0
    monitor-exit v3

    .line 444
    const/4 v2, 0x0

    goto :goto_0

    .line 443
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "pkgName":Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 340
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0    # "receiver":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 341
    .restart local p0    # "receiver":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 342
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v1, "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 480
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    .line 483
    :cond_0
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 484
    return-void
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 353
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 354
    return-void
.end method

.method private static initScreenPaperMode(Lcom/android/server/am/ActivityManagerService;)V
    .locals 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 181
    sget-boolean v5, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeSupported:Z

    if-nez v5, :cond_0

    .line 251
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 186
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 189
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 201
    .local v2, "paperModeEnabledObserver":Landroid/database/ContentObserver;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "screen_paper_mode_enabled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v9, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    invoke-virtual {v2, v9}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "screen_paper_mode"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_paper_mode"

    sget-boolean v5, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_1
    new-instance v4, Lcom/android/server/am/ExtraActivityManagerService$2;

    invoke-direct {v4, v1, p0, v0}, Lcom/android/server/am/ExtraActivityManagerService$2;-><init>(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 230
    .local v4, "paperModeObserver":Landroid/database/ContentObserver;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "screen_paper_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v9, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    invoke-virtual {v4, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 237
    new-instance v3, Lcom/android/server/am/ExtraActivityManagerService$3;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/server/am/ExtraActivityManagerService$3;-><init>(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 245
    .local v3, "paperModeListObserver":Landroid/database/ContentObserver;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_paper_mode_white_list"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    invoke-virtual {v3, v9}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 250
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->registerScreenStatusChangeReceiver(Landroid/content/Context;)V

    goto :goto_0

    .end local v3    # "paperModeListObserver":Landroid/database/ContentObserver;
    .end local v4    # "paperModeObserver":Landroid/database/ContentObserver;
    :cond_2
    move v5, v6

    .line 210
    goto :goto_1
.end method

.method static monitorPrivacyModeChange(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 498
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v0, "privacyModeFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ExtraActivityManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/am/ExtraActivityManagerService$7;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 526
    return-void
.end method

.method private static registerScreenStatusChangeReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$5;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$5;-><init>()V

    .line 331
    .local v1, "screenStatusChangeReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profileFile"    # Ljava/lang/String;
    .param p4, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "userId"    # I

    .prologue
    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 171
    :cond_0
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "oomAdj"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 462
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mSelf:Lcom/android/server/am/ActivityManagerService;

    .line 463
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 464
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 467
    :try_start_1
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 468
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    return-void

    .line 469
    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 470
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 476
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static scheduleDrmBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public static scheduleTrimMemory(II)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 448
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mSelf:Lcom/android/server/am/ActivityManagerService;

    .line 449
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 450
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 451
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 453
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 459
    return-void

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static updateScreenPaperMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 254
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeSupported:Z

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    sget v0, Lcom/android/server/am/ExtraActivityManagerService;->sScreenPaperMode:I

    if-ne v0, v2, :cond_2

    .line 259
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    goto :goto_0

    .line 260
    :cond_2
    sget v0, Lcom/android/server/am/ExtraActivityManagerService;->sScreenPaperMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 261
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sPaperModePkg:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/am/ExtraActivityManagerService;->updateScreenPaperMode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static updateScreenPaperMode(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->updateScreenPaperMode(Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public static updateScreenPaperMode(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 270
    sget-boolean v4, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeSupported:Z

    if-nez v4, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    sput-object p0, Lcom/android/server/am/ExtraActivityManagerService;->sPaperModePkg:Ljava/lang/String;

    .line 276
    sget v4, Lcom/android/server/am/ExtraActivityManagerService;->sScreenPaperMode:I

    if-eq v4, v1, :cond_0

    .line 281
    if-eqz p1, :cond_2

    sget-boolean v4, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    if-nez v4, :cond_2

    .line 282
    invoke-static {v3}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    goto :goto_0

    .line 286
    :cond_2
    sget-boolean v4, Lcom/android/server/am/ExtraActivityManagerService;->sIsScreenPaperModeEnabled:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sPkg2PaperMode:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 290
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperMode()Z

    move-result v2

    .line 291
    .local v2, "screenPaperMode":Z
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->sPkg2PaperMode:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 292
    .local v0, "isScreenPaperModePkg":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    .local v1, "newScreenPaperMode":Z
    :goto_1
    if-eq v2, v1, :cond_0

    .line 295
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 296
    if-eqz v1, :cond_0

    .line 297
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sShowToastPkgSet:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sShowToastPkgSet:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->mSelf:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/ExtraActivityManagerService$4;

    invoke-direct {v4}, Lcom/android/server/am/ExtraActivityManagerService$4;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "newScreenPaperMode":Z
    :cond_3
    move v1, v3

    .line 292
    goto :goto_1
.end method
