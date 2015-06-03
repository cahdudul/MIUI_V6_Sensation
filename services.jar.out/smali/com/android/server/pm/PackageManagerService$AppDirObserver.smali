.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsPrivileged:Z

.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "isrom"    # Z
    .param p5, "isPrivileged"    # Z

    .prologue
    .line 7368
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7369
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 7370
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 7371
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 7372
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    .line 7373
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 27
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 7376
    const/16 v26, 0x0

    .line 7377
    .local v26, "removedPackage":Ljava/lang/String;
    const/16 v25, -0x1

    .line 7378
    .local v25, "removedAppId":I
    const/4 v11, 0x0

    .line 7379
    .local v11, "removedUsers":[I
    const/4 v13, 0x0

    .line 7380
    .local v13, "addedPackage":Ljava/lang/String;
    const/16 v19, -0x1

    .line 7381
    .local v19, "addedAppId":I
    const/16 v18, 0x0

    .line 7382
    .local v18, "addedUsers":[I
    const/4 v7, 0x0

    .line 7385
    .local v7, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    .line 7386
    const/16 v22, 0x0

    .line 7387
    .local v22, "fullPathStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 7388
    .local v3, "fullPath":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 7389
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7390
    .end local v3    # "fullPath":Ljava/io/File;
    .local v21, "fullPath":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v22

    move-object/from16 v3, v21

    .line 7396
    .end local v21    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    :cond_0
    :try_start_2
    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$2200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7399
    monitor-exit v9

    .line 7487
    :cond_1
    :goto_0
    return-void

    .line 7404
    :cond_2
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService;->access$2300(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7405
    monitor-exit v9

    goto :goto_0

    .line 7472
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7407
    :cond_3
    const/16 v23, 0x0

    .line 7408
    .local v23, "p":Landroid/content/pm/PackageParser$Package;
    const/16 v24, 0x0

    .line 7410
    .local v24, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7411
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v23, v0

    .line 7412
    if-eqz v23, :cond_c

    .line 7413
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v2, :cond_4

    .line 7414
    const-string v7, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 7416
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v24, v0

    .line 7417
    if-eqz v24, :cond_9

    .line 7418
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v11

    move-object/from16 v20, v7

    .line 7423
    .end local v7    # "category":Ljava/lang/String;
    .local v20, "category":Ljava/lang/String;
    :goto_2
    :try_start_5
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v18

    .line 7424
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 7425
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_5

    .line 7426
    if-eqz v24, :cond_5

    .line 7428
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 7429
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 7430
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v25, v0

    .line 7434
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_b

    .line 7435
    if-nez v23, :cond_7

    .line 7437
    const/4 v4, 0x6

    .line 7438
    .local v4, "flags":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_6

    .line 7439
    or-int/lit8 v4, v4, 0x41

    .line 7441
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    if-eqz v2, :cond_6

    .line 7442
    or-int/lit16 v4, v4, 0x80

    .line 7445
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x461

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 7448
    if-eqz v23, :cond_7

    .line 7455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 7456
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v23

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v6, v10, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 7458
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 7459
    :try_start_8
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7460
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    .line 7463
    .end local v4    # "flags":I
    :cond_7
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v2, :cond_b

    .line 7464
    const-string v7, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 7469
    .end local v20    # "category":Ljava/lang/String;
    .restart local v7    # "category":Ljava/lang/String;
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 7470
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7471
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 7472
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 7474
    if-eqz v26, :cond_8

    .line 7475
    new-instance v8, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7476
    .local v8, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7477
    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7478
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v26

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 7481
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_8
    if-eqz v13, :cond_1

    .line 7482
    new-instance v8, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7483
    .restart local v8    # "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7484
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v7

    move-object v15, v8

    invoke-static/range {v12 .. v18}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_0

    .line 7420
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_9
    :try_start_c
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    move-object/from16 v20, v7

    .end local v7    # "category":Ljava/lang/String;
    .restart local v20    # "category":Ljava/lang/String;
    goto/16 :goto_2

    .line 7424
    .end local v20    # "category":Ljava/lang/String;
    .restart local v7    # "category":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :goto_5
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 7456
    .end local v7    # "category":Ljava/lang/String;
    .restart local v4    # "flags":I
    .restart local v20    # "category":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 7458
    :catchall_2
    move-exception v2

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 7472
    .end local v4    # "flags":I
    :catchall_3
    move-exception v2

    move-object/from16 v7, v20

    .end local v20    # "category":Ljava/lang/String;
    .restart local v7    # "category":Ljava/lang/String;
    goto/16 :goto_1

    .line 7471
    :catchall_4
    move-exception v2

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 7472
    .end local v3    # "fullPath":Ljava/io/File;
    .end local v23    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "fullPath":Ljava/io/File;
    :catchall_5
    move-exception v2

    move-object/from16 v3, v21

    .end local v21    # "fullPath":Ljava/io/File;
    .restart local v3    # "fullPath":Ljava/io/File;
    goto/16 :goto_1

    .line 7424
    .end local v7    # "category":Ljava/lang/String;
    .restart local v20    # "category":Ljava/lang/String;
    .restart local v23    # "p":Landroid/content/pm/PackageParser$Package;
    .restart local v24    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_6
    move-exception v2

    move-object/from16 v7, v20

    .end local v20    # "category":Ljava/lang/String;
    .restart local v7    # "category":Ljava/lang/String;
    goto :goto_5

    .end local v7    # "category":Ljava/lang/String;
    .restart local v20    # "category":Ljava/lang/String;
    :cond_b
    move-object/from16 v7, v20

    .end local v20    # "category":Ljava/lang/String;
    .restart local v7    # "category":Ljava/lang/String;
    goto :goto_4

    :cond_c
    move-object/from16 v20, v7

    .end local v7    # "category":Ljava/lang/String;
    .restart local v20    # "category":Ljava/lang/String;
    goto/16 :goto_2
.end method
