.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:I

.field private mVersionedCachedBmp:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 20
    const-string v0, "ImageNumberScreenElement"

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 30
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mVersionedCachedBmp:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 40
    const-string v0, "number"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    .line 41
    return-void
.end method

.method private getNumberBitmap(C)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 119
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_2

    .line 104
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 106
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_4

    .line 108
    :cond_1
    :goto_1
    iput p2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 109
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 110
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mVersionedCachedBmp:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 112
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 115
    :cond_2
    return-object v0

    .line 105
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1
.end method


# virtual methods
.method protected getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 14
    .param p1, "sync"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 45
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v10}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v10

    double-to-int v5, v10

    .line 47
    .local v5, "number":I
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "src":Ljava/lang/String;
    iget v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    if-ne v5, v10, :cond_0

    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 49
    :cond_0
    iput v5, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 50
    iput-object v7, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    .line 51
    iput v12, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 53
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "numStr":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, "bmp0":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 57
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Fail to get bitmap for number 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v1    # "bmp0":Landroid/graphics/Bitmap;
    .end local v4    # "numStr":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 61
    .restart local v1    # "bmp0":Landroid/graphics/Bitmap;
    .restart local v4    # "numStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    mul-int v8, v10, v11

    .line 62
    .local v8, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 63
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-direct {p0, v8, v2, v10}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    .line 65
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 67
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 70
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to get bitmap for number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_2
    iget v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int v8, v10, v11

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 76
    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 77
    .local v6, "oldBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-direct {p0, v8, v2, v10}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 78
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v6, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    :cond_3
    iget-object v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v11, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v11, v11

    invoke-virtual {v10, v0, v11, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    goto :goto_2

    .line 84
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "oldBmp":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mVersionedCachedBmp:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v9}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 87
    .end local v1    # "bmp0":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "i":I
    .end local v4    # "numStr":Ljava/lang/String;
    .end local v8    # "width":I
    :cond_5
    iget-object v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mVersionedCachedBmp:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    goto/16 :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method
