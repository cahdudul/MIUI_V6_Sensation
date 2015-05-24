.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$2;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$List;,
        Lmiui/maml/data/ContentProviderBinder$VariableArray;,
        Lmiui/maml/data/ContentProviderBinder$Variable;,
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field private mList:Lmiui/maml/data/ContentProviderBinder$List;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 71
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 381
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 384
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 46
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 728
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    .line 737
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 732
    .local v0, "elapsedTime":J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 733
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 734
    const-wide/16 v0, 0x0

    .line 736
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 424
    monitor-exit v1

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 427
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 16
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 431
    const-string v1, "uriExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 432
    .local v5, "uriExp":Lmiui/maml/data/Expression;
    const-string v1, "uriFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .line 433
    .local v6, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v1, Lmiui/maml/util/TextFormatter;

    const-string v2, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uriParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 435
    const-string v1, "columns"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 436
    .local v15, "tmp":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 437
    const-string v1, "whereExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    .line 438
    .local v11, "whereExp":Lmiui/maml/data/Expression;
    const-string v1, "whereFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    .line 439
    .local v12, "whereFormatExp":Lmiui/maml/data/Expression;
    new-instance v7, Lmiui/maml/util/TextFormatter;

    const-string v1, "where"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "whereFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "whereParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 441
    const-string v1, "args"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 442
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 443
    const-string v1, "order"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v15, 0x0

    .end local v15    # "tmp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iput-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 446
    const-string v1, "countName"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 447
    .restart local v15    # "tmp":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v15, 0x0

    .end local v15    # "tmp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 449
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 452
    :cond_2
    const-string v1, "updateInterval"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 453
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v1, :cond_3

    .line 454
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 461
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 462
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariableArrays(Lorg/w3c/dom/Element;)V

    .line 464
    const-string v1, "List"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 465
    .local v14, "list":Lorg/w3c/dom/Element;
    if-eqz v14, :cond_4

    .line 467
    :try_start_0
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v14, v2}, Lmiui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_4
    :goto_2
    return-void

    .line 436
    .end local v11    # "whereExp":Lmiui/maml/data/Expression;
    .end local v12    # "whereFormatExp":Lmiui/maml/data/Expression;
    .end local v14    # "list":Lorg/w3c/dom/Element;
    .restart local v15    # "tmp":Ljava/lang/String;
    :cond_5
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 442
    .restart local v11    # "whereExp":Lmiui/maml/data/Expression;
    .restart local v12    # "whereFormatExp":Lmiui/maml/data/Expression;
    :cond_6
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 468
    .end local v15    # "tmp":Ljava/lang/String;
    .restart local v14    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v13

    .line 469
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ContentProviderBinder"

    const-string v2, "invalid List"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 566
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 567
    if-eqz p1, :cond_0

    .line 569
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    if-eqz p1, :cond_2

    .line 576
    :try_start_0
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 577
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    .line 578
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 579
    const/4 p1, 0x0

    .line 580
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Z)V

    .line 584
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->onUpdateComplete()V

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerObserver(Z)V
    .locals 4
    .param p1, "reg"    # Z

    .prologue
    .line 589
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 591
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 592
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 593
    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 597
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 601
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v6, 0x0

    .line 602
    .local v6, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 605
    :cond_0
    const-string v18, "ContentProviderBinder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "query result count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mVariableArrays:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/VariableBinder$VariableArray;

    .line 608
    .local v11, "va":Lmiui/maml/data/VariableBinder$VariableArray;
    move-object v0, v11

    check-cast v0, Lmiui/maml/data/ContentProviderBinder$VariableArray;

    move-object/from16 v17, v0

    .line 609
    .local v17, "varray":Lmiui/maml/data/ContentProviderBinder$VariableArray;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mBlocked:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmiui/maml/data/ContentProviderBinder$VariableArray;->fill(Landroid/database/Cursor;)V

    goto :goto_1

    .line 697
    .end local v6    # "count":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "va":Lmiui/maml/data/VariableBinder$VariableArray;
    .end local v17    # "varray":Lmiui/maml/data/ContentProviderBinder$VariableArray;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 601
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v6

    goto :goto_0

    .line 614
    .restart local v6    # "count":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    .line 618
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    if-nez v6, :cond_7

    .line 619
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/maml/data/VariableBinder$Variable;

    .line 620
    .local v10, "v":Lmiui/maml/data/VariableBinder$Variable;
    check-cast v10, Lmiui/maml/data/ContentProviderBinder$Variable;

    .end local v10    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_2

    .line 622
    :cond_6
    monitor-exit v19

    .line 698
    :goto_3
    return-void

    .line 624
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/maml/data/VariableBinder$Variable;

    .line 625
    .restart local v10    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v10

    check-cast v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    move-object/from16 v16, v0

    .line 626
    .local v16, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 629
    const/4 v15, 0x0

    .line 630
    .local v15, "valueStr":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 631
    .local v12, "value":D
    const/4 v14, 0x0

    .line 632
    .local v14, "valueBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_8

    .line 634
    :try_start_2
    move-object/from16 v0, v16

    iget-object v5, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 635
    .local v5, "column":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 636
    .local v4, "col":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_b

    .line 637
    iget v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 658
    iget v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 672
    const-string v18, "ContentProviderBinder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "invalide type"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_5
    iget-object v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 683
    .end local v4    # "col":I
    .end local v5    # "column":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 684
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v18, "ContentProviderBinder"

    const-string v20, "failed to get value from cursor"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 639
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "col":I
    .restart local v5    # "column":Ljava/lang/String;
    :sswitch_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 640
    iget-object v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 685
    .end local v4    # "col":I
    .end local v5    # "column":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 686
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v18, "ContentProviderBinder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "column does not exist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 644
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "col":I
    .restart local v5    # "column":Ljava/lang/String;
    :sswitch_1
    const/4 v3, 0x0

    .line 645
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 646
    if-eqz v14, :cond_9

    .line 647
    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 648
    :cond_9
    iget v0, v10, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v18, v0

    const/16 v20, 0x7

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 649
    invoke-virtual {v10, v3}, Lmiui/maml/data/VariableBinder$Variable;->setValue(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 651
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v9

    .line 652
    .local v9, "image":Lmiui/maml/elements/ImageScreenElement;
    if-eqz v9, :cond_8

    .line 653
    invoke-virtual {v9, v3}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 660
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "image":Lmiui/maml/elements/ImageScreenElement;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 661
    goto/16 :goto_5

    .line 663
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    move/from16 v0, v18

    float-to-double v12, v0

    .line 664
    goto/16 :goto_5

    .line 666
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v12, v0

    .line 667
    goto/16 :goto_5

    .line 669
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v12, v0

    .line 670
    goto/16 :goto_5

    .line 681
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 697
    .end local v4    # "col":I
    .end local v5    # "column":Ljava/lang/String;
    .end local v10    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v12    # "value":D
    .end local v14    # "valueBytes":[B
    .end local v15    # "valueStr":Ljava/lang/String;
    .end local v16    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_c
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x3e9 -> :sswitch_1
    .end sparse-switch

    .line 658
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->closeCursor()V

    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Z)V

    .line 394
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 396
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 397
    return-void
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 717
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 476
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$VariableArray;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 481
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$VariableArray;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$VariableArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$VariableArray;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$VariableArray;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 401
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 402
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 417
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 418
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 419
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 408
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 11
    .param p1, "cols"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 508
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 509
    .restart local v1    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 510
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/VariableBinder$Variable;

    .local v5, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v7, v5

    .line 514
    check-cast v7, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 515
    .local v7, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    if-eqz v1, :cond_1

    iget-object v9, v7, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    iput-boolean v9, v7, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_2

    .line 518
    .end local v5    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v7    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_2
    iget-object v9, p0, Lmiui/maml/data/ContentProviderBinder;->mVariableArrays:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$VariableArray;

    .local v6, "va":Lmiui/maml/data/VariableBinder$VariableArray;
    move-object v8, v6

    .line 519
    check-cast v8, Lmiui/maml/data/ContentProviderBinder$VariableArray;

    .line 520
    .local v8, "varray":Lmiui/maml/data/ContentProviderBinder$VariableArray;
    if-eqz v1, :cond_3

    iget-object v9, v8, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mColumn:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    :goto_4
    iput-boolean v9, v8, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mBlocked:Z

    goto :goto_3

    :cond_3
    move v9, v10

    goto :goto_4

    .line 522
    .end local v6    # "va":Lmiui/maml/data/VariableBinder$VariableArray;
    .end local v8    # "varray":Lmiui/maml/data/ContentProviderBinder$VariableArray;
    :cond_4
    return-void
.end method

.method public startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 487
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 488
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 489
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 496
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 497
    return-void
.end method
