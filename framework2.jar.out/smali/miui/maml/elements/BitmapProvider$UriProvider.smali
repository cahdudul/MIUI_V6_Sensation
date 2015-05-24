.class Lmiui/maml/elements/BitmapProvider$UriProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Uri"


# instance fields
.field private mCachedBitmapUri:Ljava/lang/String;

.field private mCurLoadingBitmapUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 301
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$UriProvider;

    .prologue
    .line 298
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$UriProvider;

    .prologue
    .line 298
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$UriProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$UriProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 369
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 373
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 350
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 353
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 357
    new-instance v1, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Lmiui/maml/elements/BitmapProvider$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 363
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1

    .line 360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
