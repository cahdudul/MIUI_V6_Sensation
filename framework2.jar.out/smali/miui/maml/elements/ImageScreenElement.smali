.class public Lmiui/maml/elements/ImageScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/BitmapProvider$IBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageScreenElement$1;,
        Lmiui/maml/elements/ImageScreenElement$pair;,
        Lmiui/maml/elements/ImageScreenElement$Mask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpSrcH:Lmiui/maml/data/Expression;

.field private mExpSrcW:Lmiui/maml/data/Expression;

.field private mExpSrcX:Lmiui/maml/data/Expression;

.field private mExpSrcY:Lmiui/maml/data/Expression;

.field private mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mHasSrcRect:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcH:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mVerts:[F

.field private mVertsExps:[Lmiui/maml/data/Expression;

.field private mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 72
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 127
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 128
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v10, "antiAlias"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "false"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 136
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v11, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 137
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v11, p0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    const-string v10, "srcX"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    .line 140
    const-string v10, "srcY"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    .line 141
    const-string v10, "srcW"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    .line 142
    const-string v10, "srcH"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    .line 143
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 144
    const/4 v10, 0x1

    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 145
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 148
    :cond_1
    const-string v10, "blur"

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v10, v11}, Lmiui/maml/elements/ImageScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 149
    const-string v10, "mesh"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "meshStr":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "comma":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_2

    .line 153
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 154
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_2
    const-string v10, "meshVerts"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "meshVertsStr":Ljava/lang/String;
    invoke-static {v6}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 160
    iget v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v11, v11

    if-eq v10, v11, :cond_7

    .line 161
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 162
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 163
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 164
    const-string v10, "ImageScreenElement"

    const-string v11, "Wrong number of meshVerts!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v6    # "meshVertsStr":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v10, "xfermodeNum"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    .line 185
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v10, :cond_3

    .line 186
    const-string v10, "xfermode"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 187
    .local v7, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v11, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 191
    .end local v7    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    const-string v10, "useVirtualScreen"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 192
    .local v9, "useVirtualScreen":Z
    const-string v10, "srcType"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "srcType":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v8, "VirtualScreen"

    .end local v8    # "srcType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v8}, Lmiui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    .line 195
    const-string v10, "loadAsync"

    invoke-virtual {p0, p1, v10}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 197
    iget-boolean v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v10, :cond_5

    .line 198
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "bmp_width"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 199
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "bmp_height"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 200
    new-instance v10, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v11, p0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v12, "has_bitmap"

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 202
    :cond_5
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "comma":I
    .end local v5    # "meshStr":Ljava/lang/String;
    .end local v9    # "useVirtualScreen":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 155
    .restart local v0    # "comma":I
    .restart local v5    # "meshStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v10, "ImageScreenElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid format:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 166
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "meshVertsStr":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v4, v10

    .line 167
    .local v4, "length":I
    const/4 v3, 0x0

    .line 168
    .local v3, "isNull":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v4, :cond_8

    .line 169
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v10, v10, v2

    if-nez v10, :cond_9

    .line 170
    const-string v10, "ImageScreenElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid meshVerts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x1

    .line 172
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 173
    const/4 v10, 0x0

    iput v10, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 174
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 178
    :cond_8
    if-nez v3, :cond_2

    .line 179
    iget-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v10, v10

    new-array v10, v10, [F

    iput-object v10, p0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    goto/16 :goto_3

    .line 168
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 210
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 213
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 215
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 216
    .local v1, "images":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 217
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/ImageScreenElement$Mask;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, p0, v2, v5}, Lmiui/maml/elements/ImageScreenElement$Mask;-><init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 44
    .param p1, "bufferCanvas"    # Landroid/graphics/Canvas;
    .param p2, "mask"    # Lmiui/maml/elements/ImageScreenElement$Mask;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 405
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 406
    .local v38, "rawMask":Landroid/graphics/Bitmap;
    if-nez v38, :cond_0

    .line 460
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getX()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v32, v0

    .line 411
    .local v32, "maskX":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getY()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v34, v0

    .line 412
    .local v34, "maskY":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v31

    .line 413
    .local v31, "maskAngle":F
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v17

    .line 415
    .local v17, "angle":F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 416
    move/from16 v0, p3

    int-to-double v2, v0

    sub-double v32, v32, v2

    .line 417
    move/from16 v0, p4

    int-to-double v2, v0

    sub-double v34, v34, v2

    .line 443
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getX()F

    move-result v2

    float-to-double v2, v2

    sub-double v32, v32, v2

    .line 444
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getY()F

    move-result v2

    float-to-double v2, v2

    sub-double v34, v34, v2

    .line 446
    .end local v17    # "angle":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v2

    float-to-double v2, v2

    add-double v2, v2, v32

    move/from16 v0, p3

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v3

    float-to-double v3, v3

    add-double v3, v3, v34

    move/from16 v0, p4

    int-to-double v5, v0

    add-double/2addr v3, v5

    double-to-float v3, v3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 448
    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v36, v0

    .line 449
    .local v36, "mx":I
    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v37, v0

    .line 450
    .local v37, "my":I
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 451
    .local v43, "width":I
    if-gez v43, :cond_2

    .line 452
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    .line 453
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 454
    .local v30, "height":I
    if-gez v30, :cond_3

    .line 455
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 456
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v3, v36, p3

    add-int v4, v37, p4

    add-int v5, v36, p3

    add-int v5, v5, v43

    add-int v6, v37, p4

    add-int v6, v6, v30

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 419
    .end local v30    # "height":I
    .end local v36    # "mx":I
    .end local v37    # "my":I
    .end local v43    # "width":I
    .restart local v17    # "angle":F
    :cond_4
    sub-float v31, v31, v17

    .line 420
    move/from16 v0, v17

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v7, v2, v4

    .line 421
    .local v7, "angleA":D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v22

    .line 422
    .local v22, "cx":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v23

    .line 423
    .local v23, "cy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 424
    new-instance v2, Lmiui/maml/elements/ImageScreenElement$pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmiui/maml/elements/ImageScreenElement$pair;-><init>(Lmiui/maml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    .line 426
    :cond_5
    move/from16 v0, v22

    float-to-double v3, v0

    move/from16 v0, v23

    float-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 428
    move/from16 v0, p3

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v39, v3, v5

    .line 429
    .local v39, "rx":D
    move/from16 v0, p4

    int-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v41, v3, v5

    .line 432
    .local v41, "ry":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v12, v2

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v14, v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v2, v2

    add-double v32, v32, v2

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v2, v2

    add-double v34, v34, v2

    .line 435
    sub-double v26, v32, v39

    .line 436
    .local v26, "dx":D
    sub-double v28, v34, v41

    .line 437
    .local v28, "dy":D
    mul-double v2, v26, v26

    mul-double v4, v28, v28

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 438
    .local v24, "dm":D
    div-double v2, v26, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 439
    .local v18, "angleB":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 440
    .local v20, "angleC":D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v32, v24, v2

    .line 441
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v34, v24, v2

    goto/16 :goto_1

    .line 439
    .end local v20    # "angleC":D
    :cond_6
    const-wide v2, 0x400921fb54442c46L    # 3.1415926535897

    add-double/2addr v2, v7

    sub-double v20, v2, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V
    .locals 11
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "angle"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p7, "pr":Lmiui/maml/elements/ImageScreenElement$pair;, "Lmiui/maml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v7, p1, p1

    mul-double v9, p3, p3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 392
    .local v5, "cm":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_0

    .line 393
    div-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 394
    .local v1, "angle1":D
    const-wide v7, 0x400921fb54442c46L    # 3.1415926535897

    sub-double/2addr v7, v1

    sub-double v3, v7, p5

    .line 395
    .local v3, "angle2":D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 396
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    sub-double v7, p3, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 401
    .end local v1    # "angle1":D
    .end local v3    # "angle2":D
    :goto_0
    return-void

    .line 398
    :cond_0
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 399
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBitmap(Z)V
    .locals 4
    .param p1, "sync"    # Z

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    .line 597
    .local v0, "versionedBmp":Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-static {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 599
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 601
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 605
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 606
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 608
    :cond_1
    return-void

    .line 606
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v5}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 280
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    if-eqz v5, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v5, v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 288
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 291
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    invoke-static {v6, v5, v7}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 295
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v5, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 299
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v14

    .line 300
    .local v14, "alpha":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v25

    .line 302
    .local v25, "oldDensity":I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getWidth()F

    move-result v26

    .line 305
    .local v26, "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getHeight()F

    move-result v19

    .line 306
    .local v19, "height":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v16

    .line 307
    .local v16, "aniWidth":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v15

    .line 309
    .local v15, "aniHeight":F
    const/4 v5, 0x0

    cmpl-float v5, v26, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v19, v5

    if-eqz v5, :cond_0

    .line 312
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lmiui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v5

    float-to-int v0, v5

    move/from16 v27, v0

    .line 313
    .local v27, "x":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lmiui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v5

    float-to-int v0, v5

    move/from16 v28, v0

    .line 314
    .local v28, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 316
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 317
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    if-eqz v5, :cond_7

    .line 318
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmiui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v24

    .line 319
    .local v24, "np":Landroid/graphics/NinePatch;
    if-eqz v24, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v27

    int-to-float v7, v0

    add-float v7, v7, v26

    float-to-int v7, v7

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v19

    float-to-int v8, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v7}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 362
    .end local v24    # "np":Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 323
    .restart local v24    # "np":Landroid/graphics/NinePatch;
    :cond_6
    const-string v5, "ImageScreenElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    .end local v24    # "np":Landroid/graphics/NinePatch;
    :cond_7
    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-gtz v5, :cond_8

    const/4 v5, 0x0

    cmpl-float v5, v15, v5

    if-gtz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_a

    .line 328
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v27

    int-to-float v7, v0

    add-float v7, v7, v26

    float-to-int v7, v7

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v19

    float-to-int v8, v8

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_9

    .line 330
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v10, v11

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 333
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v5, :cond_b

    .line 334
    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 336
    :cond_b
    move/from16 v0, v27

    int-to-float v5, v0

    move/from16 v0, v28

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 340
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v23

    .line 341
    .local v23, "maxWidth":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v22

    .line 342
    .local v22, "maxHeight":F
    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 343
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 344
    move/from16 v0, v23

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    move/from16 v18, v0

    .line 345
    .local v18, "bufferWidth":I
    move/from16 v0, v22

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    move/from16 v17, v0

    .line 346
    .local v17, "bufferHeight":I
    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v28

    int-to-float v9, v0

    add-int v5, v27, v18

    int-to-float v10, v5

    add-int v5, v28, v17

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/16 v13, 0x1f

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 347
    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-gtz v5, :cond_d

    const/4 v5, 0x0

    cmpl-float v5, v15, v5

    if-gtz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_f

    .line 348
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    float-to-int v7, v0

    add-int v7, v7, v27

    move/from16 v0, v19

    float-to-int v8, v0

    add-int v8, v8, v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_e

    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v10, v11

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 357
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 358
    .local v21, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V

    goto :goto_3

    .line 354
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_f
    move/from16 v0, v27

    int-to-float v5, v0

    move/from16 v0, v28

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 360
    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method protected doTick(J)V
    .locals 8
    .param p1, "currentTime"    # J

    .prologue
    .line 464
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 465
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 468
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 469
    .local v3, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->doTick(J)V

    goto :goto_1

    .line 473
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_2

    .line 474
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 475
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 478
    .end local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    iget-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v5, :cond_3

    .line 479
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 480
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 481
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 482
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 485
    :cond_3
    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v5, :cond_4

    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v5, :cond_4

    .line 486
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v2, v5

    .line 487
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 488
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    iget-object v6, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v6

    aput v6, v5, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 492
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_4
    iget-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 497
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 499
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 503
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 505
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->finish()V

    goto :goto_0

    .line 508
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 509
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 510
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 511
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 3
    .param p1, "async"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 378
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 381
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 269
    .local v0, "h":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 274
    .end local v0    # "h":F
    :goto_0
    return v0

    .line 271
    .restart local v0    # "h":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 272
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    .line 258
    .local v0, "w":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 263
    .end local v0    # "w":F
    :goto_0
    return v0

    .line 260
    .restart local v0    # "w":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 261
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v1

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 225
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 227
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 229
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->init()V

    goto :goto_0

    .line 232
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 240
    :cond_2
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 241
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_3

    .line 242
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 243
    :cond_3
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 585
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 586
    if-eqz p1, :cond_0

    .line 587
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 593
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 591
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 515
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 517
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 519
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->pause()V

    goto :goto_0

    .line 522
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 565
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 566
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 568
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->pauseAnim(J)V

    goto :goto_0

    .line 571
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 10
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 552
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 553
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageScreenElement$Mask;

    .local v0, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 555
    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ImageScreenElement$Mask;->playAnim(JJJZZ)V

    goto :goto_0

    .line 558
    .end local v0    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 561
    :cond_1
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 538
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 540
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->reset(J)V

    goto :goto_0

    .line 543
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 546
    :cond_1
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_2

    .line 547
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 548
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 526
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 528
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 530
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->resume()V

    goto :goto_0

    .line 533
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 576
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 578
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->resumeAnim(J)V

    goto :goto_0

    .line 581
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 367
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 368
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 369
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-direct {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 370
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->requestUpdate()V

    .line 372
    :cond_0
    return-void
.end method

.method public setSrcType(Ljava/lang/String;)V
    .locals 1
    .param p1, "srcType"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, p1}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 207
    return-void
.end method
