.class public Lmiui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;,
        Lmiui/maml/ResourceManager$AsyncLoadListener;,
        Lmiui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x40000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lmiui/maml/ResourceLoader;

.field private mTargetDensity:I

.field protected final mWeakRefBitmapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;)V
    .locals 2
    .param p1, "resourceLoader"    # Lmiui/maml/ResourceLoader;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    .line 103
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    .line 104
    new-instance v0, Lmiui/maml/ResourceManager$1;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, p0, v1}, Lmiui/maml/ResourceManager$1;-><init>(Lmiui/maml/ResourceManager;I)V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ResourceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ResourceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    return-object v0
.end method

.method private getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 307
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    move-object v2, v0

    .line 308
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 311
    :try_start_1
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 312
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    if-eqz v2, :cond_2

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 316
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 317
    :cond_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 319
    :try_start_2
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 342
    :cond_1
    :goto_0
    return-object v2

    .line 308
    .end local v1    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 312
    .restart local v1    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 320
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 324
    :cond_2
    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    check-cast v2, Lmiui/maml/ResourceManager$BitmapInfo;

    .line 326
    .restart local v2    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_3

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 330
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 331
    :try_start_6
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 335
    :cond_3
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 336
    :try_start_7
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    monitor-exit v4

    goto :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.method private loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    const/4 v3, 0x1

    .line 261
    .local v3, "useDefaultResource":Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 262
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 263
    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 265
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 266
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to load resource from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 268
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 269
    .local v2, "path":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, v2, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    const/4 v3, 0x0

    .line 275
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 276
    iget v4, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 277
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, p1, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 280
    :cond_1
    if-eqz v0, :cond_4

    .line 281
    if-nez v3, :cond_2

    .line 282
    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2
    iput-object p1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 286
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    iput-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    .line 287
    iget-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 289
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 290
    :try_start_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 293
    :try_start_1
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    :goto_1
    return-object v0

    .line 268
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 294
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 296
    :cond_4
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    monitor-enter v5

    .line 297
    :try_start_4
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v4, "ResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to load image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method public static retranslateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x21c

    const/16 v3, 0x168

    .line 379
    const/16 v2, 0xf0

    if-le p0, v2, :cond_1

    if-gt p0, v3, :cond_1

    .line 380
    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    .line 381
    .local v0, "factor":D
    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0xf0

    .line 389
    .end local v0    # "factor":D
    .end local p0    # "density":I
    :cond_0
    :goto_0
    return p0

    .line 382
    .restart local p0    # "density":I
    :cond_1
    if-le p0, v3, :cond_2

    if-gt p0, v4, :cond_2

    .line 383
    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .line 384
    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x168

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x140

    goto :goto_0

    .line 385
    .end local v0    # "factor":D
    :cond_2
    if-le p0, v4, :cond_0

    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_0

    .line 386
    const-wide v0, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .line 387
    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x21c

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x1e0

    goto :goto_0
.end method

.method public static translateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    .line 363
    const/16 v2, 0xf0

    if-le p0, v2, :cond_1

    if-gt p0, v3, :cond_1

    .line 364
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 365
    .local v0, "factor":D
    add-int/lit16 v2, p0, -0xf0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0xf0

    .line 373
    .end local v0    # "factor":D
    .end local p0    # "density":I
    :cond_0
    :goto_0
    return p0

    .line 366
    .restart local p0    # "density":I
    :cond_1
    if-le p0, v3, :cond_2

    if-gt p0, v4, :cond_2

    .line 367
    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    .line 368
    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x140

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x168

    goto :goto_0

    .line 369
    .end local v0    # "factor":D
    :cond_2
    if-le p0, v4, :cond_0

    const/16 v2, 0x280

    if-gt p0, v2, :cond_0

    .line 370
    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    .line 371
    .restart local v0    # "factor":D
    add-int/lit16 v2, p0, -0x1e0

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit16 p0, v2, 0x21c

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmapName"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish(Z)V
    .locals 2
    .param p1, "keepResource"    # Z

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 408
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 409
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 411
    :cond_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    monitor-enter v1

    .line 412
    :try_start_2
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 413
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 414
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v1

    .line 415
    :try_start_3
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 416
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 418
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->finish()V

    .line 419
    return-void

    .line 406
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 409
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 413
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 416
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 122
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 180
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-nez v0, :cond_0

    .line 183
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 187
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/ResourceManager$AsyncLoadListener;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 204
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-nez v0, :cond_0

    .line 207
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    .line 215
    :try_start_1
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_3

    .line 218
    monitor-exit v2

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 211
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 219
    :cond_3
    :try_start_3
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v1, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    new-instance v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .end local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    invoke-direct {v0}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 226
    .restart local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iput-boolean v5, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    goto :goto_0
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0, p2}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v7

    .line 127
    .local v7, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 130
    :cond_1
    iget-object v2, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    .local v2, "bm":Landroid/graphics/Bitmap;
    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_2

    .line 135
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 136
    .local v0, "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 140
    .end local v0    # "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 141
    .local v6, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v0, v6

    .line 142
    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 430
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 147
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->init()V

    .line 400
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public setCacheSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 438
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    .line 440
    monitor-exit v1

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 346
    iput p1, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 347
    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resDir"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0
    .param p1, "den"    # I

    .prologue
    .line 358
    iput p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 359
    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 444
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1}, Lmiui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 448
    .local v0, "oldLocale":Ljava/util/Locale;
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1, p1}, Lmiui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    .line 450
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    goto :goto_0
.end method

.method public setTargetDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 350
    iput p1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    .line 351
    return-void
.end method
