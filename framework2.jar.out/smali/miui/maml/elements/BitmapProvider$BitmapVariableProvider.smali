.class public Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mVar:Lmiui/maml/util/IndexedObjectVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 382
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    invoke-static {v4, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    iput-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/util/IndexedObjectVariable;

    .line 405
    :goto_0
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 410
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/util/IndexedObjectVariable;

    if-nez v4, :cond_2

    :goto_1
    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_2
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v3, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 415
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v3

    .line 403
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v4, Lmiui/maml/util/IndexedObjectVariable;

    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lmiui/maml/util/IndexedObjectVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/util/IndexedObjectVariable;

    goto :goto_0

    .line 410
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/util/IndexedObjectVariable;

    invoke-virtual {v3}, Lmiui/maml/util/IndexedObjectVariable;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "BitmapProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to cast as Bitmap from object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Lmiui/maml/util/IndexedObjectVariable;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lmiui/maml/util/IndexedObjectVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/util/IndexedObjectVariable;

    .line 394
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    goto :goto_0
.end method
