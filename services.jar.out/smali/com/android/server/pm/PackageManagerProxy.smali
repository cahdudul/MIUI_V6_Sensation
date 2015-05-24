.class Lcom/android/server/pm/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerProxy$1;,
        Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;,
        Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/server/pm/PackageManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z
    .locals 11
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    const/4 v1, 0x0

    .line 126
    .local v1, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_start_0
    const-string v4, "packageFlagsToInstallFlags"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {p0, v4, v7, v8}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 127
    .local v2, "flags":I
    const-string v4, "createInstallArgs"

    const-class v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {p0, v4, v7, v8}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-nez v1, :cond_0

    move v4, v5

    .line 142
    .end local v2    # "flags":I
    :goto_0
    return v4

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v5

    .line 134
    goto :goto_0

    .line 139
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v2    # "flags":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 140
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    .line 141
    monitor-exit v5

    move v4, v6

    .line 142
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static deleteApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "keepData"    # Z

    .prologue
    .line 81
    const/4 v1, 0x2

    .line 82
    .local v1, "flags":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-gt v3, v4, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    .line 87
    or-int/lit8 v1, v1, 0x1

    .line 89
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$1;)V

    .line 91
    .local v2, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 92
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 95
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v3

    goto :goto_0

    .line 99
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_1
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    return v3

    .line 99
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "apkFile"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 52
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$1;)V

    .line 55
    .local v2, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
    const/16 v1, 0x40

    .line 56
    .local v1, "flags":I
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 60
    :cond_0
    or-int/lit8 v1, v1, 0x2

    .line 61
    const-string v4, "system"

    invoke-interface {p0, v3, v2, v1, v4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 62
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_1
    :goto_0
    :try_start_1
    iget-boolean v4, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 65
    const-wide/32 v4, 0x493e0

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 66
    iget-boolean v4, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    if-nez v4, :cond_1

    .line 67
    sget-object v4, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v4

    goto :goto_0

    .line 72
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_1
    iget v4, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return v4

    .line 72
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v1, 0x4

    .line 109
    .local v1, "parseFlags":I
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "pp":Landroid/content/pm/PackageParser;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v0, v4, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 111
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 114
    :cond_0
    return-object v2
.end method

.method static parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method
