.class Lmiui/telephony/SimInfoManager$SimInfoWrapper;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SimInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfoWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;
    }
.end annotation


# static fields
.field private static sInstance:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private mAllSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInsertedSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mChangeListeners:Ljava/util/HashSet;

    .line 227
    iput-object v2, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 228
    iput-object v2, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;

    .line 232
    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInsertedSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 233
    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getAllSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/telephony/SimInfoManager$SimInfoWrapper$1;

    invoke-direct {v2, p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$1;-><init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    return-void
.end method

.method static synthetic access$102(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/SimInfoManager$SimInfoWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 220
    iput-object p1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInsertedSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/SimInfoManager$SimInfoWrapper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 220
    iput-object p1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getAllSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mChangeListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getAllSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInsertedSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const-class v1, Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sInstance:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    invoke-direct {v0, p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sInstance:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    .line 248
    :cond_0
    sget-object v0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sInstance:Lmiui/telephony/SimInfoManager$SimInfoWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllSimCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAllSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getInsertedSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSimIdBySlotId(I)J
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimInfoBySlotId(I)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 313
    .local v0, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 314
    const-wide/16 v1, -0x1

    .line 316
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_0
.end method

.method public getSimInfoByIccId(Ljava/lang/String;)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 300
    :goto_0
    return-object v1

    .line 295
    :cond_0
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 296
    .local v1, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-object v3, v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1    # "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    move-object v1, v2

    .line 300
    goto :goto_0
.end method

.method public getSimInfoBySimId(J)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 5
    .param p1, "simId"    # J

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 288
    :goto_0
    return-object v1

    .line 283
    :cond_0
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 284
    .local v1, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v3, v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    goto :goto_0

    .end local v1    # "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    move-object v1, v2

    .line 288
    goto :goto_0
.end method

.method public getSimInfoBySlotId(I)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 276
    :goto_0
    return-object v1

    .line 271
    :cond_0
    iget-object v3, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 272
    .local v1, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSlotId:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    move-object v1, v2

    .line 276
    goto :goto_0
.end method

.method public getSlotIdBySimId(J)I
    .locals 2
    .param p1, "simId"    # J

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimInfoBySimId(J)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 305
    .local v0, "simInfo":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, -0x1

    .line 308
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mSlotId:I

    goto :goto_0
.end method

.method public registerChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 320
    sget-object v1, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 326
    sget-object v1, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
