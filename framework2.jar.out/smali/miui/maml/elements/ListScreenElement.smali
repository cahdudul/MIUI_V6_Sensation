.class public Lmiui/maml/elements/ListScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ListScreenElement$1;,
        Lmiui/maml/elements/ListScreenElement$ListData;,
        Lmiui/maml/elements/ListScreenElement$Column;,
        Lmiui/maml/elements/ListScreenElement$ColumnInfo;,
        Lmiui/maml/elements/ListScreenElement$DataIndexMap;,
        Lmiui/maml/elements/ListScreenElement$ListItemElement;
    }
.end annotation


# static fields
.field private static ACC:D = 0.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = null

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = null

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = null

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = null

.field private static DATA_TYPE_LONG:Ljava/lang/String; = null

.field private static DATA_TYPE_STRING:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field protected mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$DataIndexMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexedVariables:[Ljava/lang/Object;

.field private mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field protected mListData:Lmiui/maml/elements/ListScreenElement$ListData;

.field private mMaxHeight:Lmiui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "string"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    .line 54
    const-string v0, "bitmap"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    .line 55
    const-string v0, "int"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    .line 56
    const-string v0, "integer"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    .line 57
    const-string v0, "double"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    .line 58
    const-string v0, "long"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    .line 59
    const-string v0, "float"

    sput-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    .line 89
    const-wide/high16 v0, -0x3f77000000000000L    # -800.0

    sput-wide v0, Lmiui/maml/elements/ListScreenElement;->ACC:D

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    .line 97
    const/4 v3, -0x1

    iput v3, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 326
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    if-nez v3, :cond_0

    .line 327
    const-string v3, "ListScreenElement"

    const-string v4, "no item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no item"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->setClip(Z)V

    .line 333
    const-string v3, "maxHeight"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    .line 334
    const-string v3, "clearOnFinish"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    .line 336
    const-string v3, "data"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    const-string v3, "ListScreenElement"

    const-string v4, "no data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_1
    invoke-static {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 342
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 343
    const-string v3, "ListScreenElement"

    const-string v4, "invalid item data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: invalid item data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    .line 348
    const-string v3, "AttrDataBinders"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 349
    .local v0, "child":Lorg/w3c/dom/Element;
    if-nez v0, :cond_3

    .line 350
    const-string v3, "ListScreenElement"

    const-string v4, "no attr data binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "List: no attr data binder"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_3
    new-instance v3, Lmiui/maml/elements/AttrDataBinders;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    invoke-direct {v3, v0, v4}, Lmiui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    .line 355
    const-string v3, "Data"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_4

    .line 357
    new-instance v3, Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v0, v4, p0}, Lmiui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    .line 360
    :cond_4
    const-string v3, "scrollbar"

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .line 361
    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v3, :cond_5

    move-object v3, v2

    .line 362
    check-cast v3, Lmiui/maml/elements/AnimatedScreenElement;

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    .line 363
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v4, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v4, v3, Lmiui/maml/elements/AnimatedScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 364
    invoke-virtual {p0, v2}, Lmiui/maml/elements/ListScreenElement;->removeElement(Lmiui/maml/elements/ScreenElement;)V

    .line 365
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 368
    :cond_5
    new-instance v3, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    const-string v5, "selectedId"

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 369
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    return-object v0
.end method

.method private bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V
    .locals 8
    .param p1, "item"    # Lmiui/maml/elements/ListScreenElement$ListItemElement;
    .param p2, "elementIndex"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 501
    if-ltz p3, :cond_0

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p3, v6, :cond_2

    .line 502
    :cond_0
    const-string v6, "ListScreenElement"

    const-string v7, "invalid item data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 506
    :cond_2
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v2, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 507
    .local v2, "objects":[Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 508
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput p2, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 509
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 512
    int-to-float v6, p3

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v4, v6

    .line 513
    .local v4, "y":D
    double-to-float v6, v4

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p1, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    .line 516
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 517
    .local v0, "N":I
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v3, v6, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    .line 518
    .local v3, "vars":Lmiui/maml/data/ContextVariables;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 519
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v6, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    aget-object v7, v2, v1

    invoke-virtual {v3, v6, v7}, Lmiui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    :cond_3
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    if-eqz v6, :cond_1

    .line 524
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mAttrDataBinders:Lmiui/maml/elements/AttrDataBinders;

    invoke-virtual {v6, p1}, Lmiui/maml/elements/AttrDataBinders;->bind(Lmiui/maml/elements/ElementGroup;)V

    goto :goto_0
.end method

.method private checkVisibility()V
    .locals 5

    .prologue
    .line 529
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    .line 530
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ScreenElement;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 531
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 532
    .local v3, "lie":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v0

    .line 533
    .local v0, "dataIndex":I
    if-ltz v0, :cond_1

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    if-lt v0, v4, :cond_1

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v0, v4, :cond_1

    .line 534
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 535
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    .line 530
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    goto :goto_1

    .line 543
    .end local v0    # "dataIndex":I
    .end local v3    # "lie":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_2
    return-void
.end method

.method private clearEmptyRow()V
    .locals 10

    .prologue
    .line 441
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 442
    .local v8, "size":I
    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 443
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    .line 444
    .local v7, "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    iget-object v2, v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 445
    .local v2, "datas":[Ljava/lang/Object;
    const/4 v5, 0x1

    .line 446
    .local v5, "isEmpty":Z
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .line 447
    .local v1, "data":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 448
    const/4 v5, 0x0

    .line 452
    .end local v1    # "data":Ljava/lang/Object;
    :cond_0
    if-nez v5, :cond_3

    .line 457
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "datas":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v5    # "isEmpty":Z
    .end local v6    # "len$":I
    .end local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_1
    return-void

    .line 446
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v1    # "data":Ljava/lang/Object;
    .restart local v2    # "datas":[Ljava/lang/Object;
    .restart local v4    # "i$":I
    .restart local v5    # "isEmpty":Z
    .restart local v6    # "len$":I
    .restart local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 455
    .end local v1    # "data":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->removeItem(I)V

    .line 442
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 632
    if-ltz p1, :cond_0

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v2, :cond_2

    .line 633
    :cond_0
    const/4 v1, 0x0

    .line 654
    :cond_1
    :goto_0
    return-object v1

    .line 636
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v0, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 637
    .local v0, "elementIndex":I
    const/4 v1, 0x0

    .line 639
    .local v1, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    if-ltz v0, :cond_3

    .line 640
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    check-cast v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 642
    .restart local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_3
    if-ltz v0, :cond_4

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-eq v2, p1, :cond_5

    .line 643
    :cond_4
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    move-result v0

    .line 644
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    check-cast v1, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 645
    .restart local v1    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-gez v2, :cond_5

    .line 646
    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->reset()V

    .line 650
    :cond_5
    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-boolean v2, v2, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    if-eqz v2, :cond_1

    .line 651
    :cond_6
    invoke-direct {p0, v1, v0, p1}, Lmiui/maml/elements/ListScreenElement;->bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    goto :goto_0
.end method

.method private getUseableElementIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 609
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 611
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 612
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 621
    .local v0, "elementIndex":I
    :goto_0
    iget-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_2

    .line 622
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_1
    return v0

    .line 614
    .end local v0    # "elementIndex":I
    :cond_0
    iget-boolean v2, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "elementIndex":I
    goto :goto_0

    .line 617
    .end local v0    # "elementIndex":I
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "elementIndex":I
    goto :goto_0

    .line 624
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private moveTo(D)V
    .locals 6
    .param p1, "y"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 777
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    .line 778
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double p1, v1

    .line 779
    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 781
    :cond_0
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    .line 782
    const-wide/16 p1, 0x0

    .line 783
    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 785
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    double-to-float v2, p1

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    .line 786
    neg-double v1, p1

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v3

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v4}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 788
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 789
    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mTopIndex:I

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v0, v1, :cond_2

    .line 790
    invoke-direct {p0, v0}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_2
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->checkVisibility()V

    .line 793
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 794
    return-void
.end method

.method private resetInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 839
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    .line 842
    :cond_0
    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    .line 843
    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 844
    iput-boolean v1, p0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 845
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 846
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    .line 847
    return-void
.end method

.method private setVariables()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 546
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 548
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .line 549
    .local v1, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    sget-object v3, Lmiui/maml/elements/ListScreenElement$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v4, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v4}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 547
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :pswitch_1
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    .line 552
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    iget-object v7, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v4, v6, v7, v8}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    aput-object v4, v3, v2

    .line 555
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Lmiui/maml/util/IndexedStringVariable;

    check-cast v3, Lmiui/maml/util/IndexedStringVariable;

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-gez v4, :cond_1

    move-object v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v4, v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    .line 564
    :pswitch_2
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 565
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    new-instance v4, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    iget-object v7, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v4, v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    aput-object v4, v3, v2

    .line 568
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mIndexedVariables:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Lmiui/maml/util/IndexedNumberVariable;

    check-cast v3, Lmiui/maml/util/IndexedNumberVariable;

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-gez v4, :cond_3

    move-object v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v4, v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_3

    .line 575
    .end local v1    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    :cond_4
    return-void

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 772
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 773
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    .line 774
    return-void
.end method

.method private updateScorllBar()V
    .locals 15

    .prologue
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 750
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v9, :cond_2

    .line 751
    iget v9, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v9, v9

    iget-object v10, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v1, v9

    .line 752
    .local v1, "itemsHeight":D
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v9

    float-to-double v7, v9

    .line 753
    .local v7, "zoneHeight":D
    div-double v3, v7, v1

    .line 754
    .local v3, "rate":D
    const/4 v0, 0x1

    .line 755
    .local v0, "isShow":Z
    cmpl-double v9, v3, v13

    if-ltz v9, :cond_0

    .line 756
    const-wide/16 v3, 0x0

    .line 757
    const/4 v0, 0x0

    .line 759
    :cond_0
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v9

    float-to-double v9, v9

    sub-double v11, v7, v1

    div-double v5, v9, v11

    .line 760
    .local v5, "yRate":D
    cmpl-double v9, v5, v13

    if-lez v9, :cond_1

    .line 761
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 763
    :cond_1
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    sub-double v10, v13, v3

    mul-double/2addr v10, v7

    mul-double/2addr v10, v5

    double-to-float v10, v10

    invoke-virtual {p0, v10}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 764
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    mul-double v10, v7, v3

    double-to-float v10, v10

    invoke-virtual {p0, v10}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lmiui/maml/elements/AnimatedScreenElement;->setH(D)V

    .line 765
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v9}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v9

    if-eq v9, v0, :cond_2

    .line 766
    iget-object v9, p0, Lmiui/maml/elements/ListScreenElement;->mScrollBar:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v9, v0}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    .line 769
    .end local v0    # "isShow":Z
    .end local v1    # "itemsHeight":D
    .end local v3    # "rate":D
    .end local v5    # "yRate":D
    .end local v7    # "zoneHeight":D
    :cond_2
    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 402
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v1, -0x1

    .line 407
    .local v1, "columnIndex":I
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 408
    .local v2, "columnSize":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 409
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v8, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 410
    move v1, v6

    .line 414
    :cond_2
    if-ltz v1, :cond_0

    .line 418
    array-length v0, p2

    .line 419
    .local v0, "N":I
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 420
    .local v4, "dataSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "data":Ljava/lang/Object;
    if-ge v5, v0, :cond_3

    .line 423
    aget-object v3, p2, v5

    .line 425
    .end local v3    # "data":Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    .line 426
    .local v7, "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    invoke-virtual {v7, v1, v3}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    .line 427
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v8, v8, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v8, :cond_4

    .line 428
    invoke-direct {p0, v5}, Lmiui/maml/elements/ListScreenElement;->getItem(I)Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 420
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 408
    .end local v0    # "N":I
    .end local v4    # "dataSize":I
    .end local v5    # "i":I
    .end local v7    # "map":Lmiui/maml/elements/ListScreenElement$DataIndexMap;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 431
    .restart local v0    # "N":I
    .restart local v4    # "dataSize":I
    .restart local v5    # "i":I
    :cond_6
    move v5, v4

    :goto_3
    if-ge v5, v0, :cond_7

    .line 432
    iget-object v8, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/Object;

    .line 433
    .local v3, "data":[Ljava/lang/Object;
    aget-object v8, p2, v5

    aput-object v8, v3, v1

    .line 434
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 436
    .end local v3    # "data":[Ljava/lang/Object;
    :cond_7
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->clearEmptyRow()V

    .line 437
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto :goto_0
.end method

.method public varargs addItem([Ljava/lang/Object;)V
    .locals 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 464
    :cond_0
    array-length v4, p1

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 465
    const-string v4, "ListScreenElement"

    const-string v5, "invalid item data count"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_1
    array-length v0, p1

    .line 469
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 470
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 471
    const-string v4, "ListScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid item data type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 476
    :cond_3
    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v6, v4}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 479
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    .line 480
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v4

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 481
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    .line 482
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 484
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 485
    .local v3, "size":I
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCachedItemCount:I

    if-ge v3, v4, :cond_4

    .line 486
    new-instance v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v4, v4, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v5, v5, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v4, v5}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 487
    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4, v2}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 489
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iput v3, v4, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 490
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 491
    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->init()V

    .line 492
    const/4 v4, -0x1

    iput v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 494
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/elements/ListScreenElement;->bindData(Lmiui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 495
    iget-object v4, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget v5, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_4
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto/16 :goto_0
.end method

.method protected doTick(J)V
    .locals 12
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 798
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    .line 800
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-boolean v4, p0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    if-nez v4, :cond_1

    .line 801
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    sub-long v0, p1, v4

    .line 802
    .local v0, "time":J
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    sget-wide v6, Lmiui/maml/elements/ListScreenElement;->ACC:D

    long-to-double v8, v0

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 803
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    .line 809
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    .line 811
    .end local v0    # "time":J
    :cond_1
    return-void

    .line 805
    .restart local v0    # "time":J
    :cond_2
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    long-to-double v6, v0

    mul-double/2addr v4, v6

    div-double/2addr v4, v10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sget-wide v8, Lmiui/maml/elements/ListScreenElement;->ACC:D

    mul-double/2addr v6, v8

    long-to-double v8, v0

    mul-double/2addr v6, v8

    long-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 806
    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mStartAnimY:F

    float-to-double v6, v4

    iget-boolean v4, p0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    neg-double v4, v4

    :goto_1
    add-double v2, v6, v4

    .line 807
    .local v2, "yOfInnerGroup":D
    invoke-direct {p0, v2, v3}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    goto :goto_0

    .line 806
    .end local v2    # "yOfInnerGroup":D
    :cond_3
    iget-wide v4, p0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    goto :goto_1
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 858
    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v3, :cond_0

    iget v3, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-ge v3, v4, :cond_0

    .line 859
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v4, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;

    iget v1, v3, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 860
    .local v1, "elementIndex":I
    if-ltz v1, :cond_0

    .line 861
    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 862
    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 863
    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v0, :cond_0

    .line 868
    .end local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    .end local v1    # "elementIndex":I
    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 815
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 816
    iget-boolean v0, p0, Lmiui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 819
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->finish()V

    .line 822
    :cond_1
    return-void
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mMaxHeight:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ListScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ListScreenElement;->scale(D)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 826
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 827
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    .line 828
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    .line 829
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 831
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v1, p0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 832
    invoke-direct {p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    .line 833
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mListData:Lmiui/maml/elements/ListScreenElement$ListData;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement$ListData;->init()V

    .line 836
    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "Item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_0

    .line 376
    new-instance v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, p1, v3}, Lmiui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 378
    new-instance v2, Lmiui/maml/elements/ElementGroup;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, v1, v3}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    .line 379
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    .line 383
    :cond_0
    return-object v1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 659
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->isVisible()Z

    move-result v10

    if-nez v10, :cond_0

    .line 660
    const/4 v10, 0x0

    .line 746
    :goto_0
    return v10

    .line 662
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 663
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 665
    .local v7, "y":F
    const/4 v5, 0x0

    .line 666
    .local v5, "ret":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 746
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mInterceptTouch:Z

    if-eqz v10, :cond_9

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 668
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 669
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    .line 670
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    .line 671
    const-string v10, "down"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 673
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 674
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    .line 676
    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v10}, Lmiui/maml/elements/ElementGroup;->getAbsoluteTop()F

    move-result v10

    sub-float v10, v7, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 677
    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedIdVar:Lmiui/maml/util/IndexedNumberVariable;

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v11, v11

    invoke-virtual {v10, v11, v12}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->setVariables()V

    .line 680
    float-to-double v10, v6

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    .line 681
    float-to-double v10, v7

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 683
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->updateScorllBar()V

    .line 684
    const/4 v5, 0x1

    goto :goto_1

    .line 688
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v10, :cond_1

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    .line 691
    float-to-double v10, v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 692
    float-to-double v10, v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartX:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 694
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v10, :cond_3

    .line 695
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 696
    .local v3, "absOffsetY":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetX:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 697
    .local v1, "absOffsetX":D
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double v10, v3, v10

    if-lez v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v10, :cond_6

    cmpl-double v10, v3, v1

    if-ltz v10, :cond_6

    .line 698
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 704
    .end local v1    # "absOffsetX":D
    .end local v3    # "absOffsetY":D
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-eqz v10, :cond_7

    :cond_4
    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 706
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v10, :cond_5

    .line 707
    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 708
    const-string v10, "move"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    .line 712
    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v10}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v10

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/ListScreenElement;->mOffsetY:D

    add-double v8, v10, v12

    .line 713
    .local v8, "yOfInnerGroup":D
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 714
    float-to-double v10, v7

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 715
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mCurrentTime:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mLastTime:J

    .line 717
    .end local v8    # "yOfInnerGroup":D
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 699
    .restart local v1    # "absOffsetX":D
    .restart local v3    # "absOffsetY":D
    :cond_6
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double v10, v1, v10

    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v10, :cond_3

    cmpg-double v10, v3, v1

    if-gez v10, :cond_3

    .line 700
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    goto :goto_2

    .line 704
    .end local v1    # "absOffsetX":D
    .end local v3    # "absOffsetY":D
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 721
    :pswitch_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    .line 722
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v10, :cond_1

    .line 723
    const-string v10, "ListScreenElement"

    const-string v11, "unlock touch up"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v10, "up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    iget-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mSpeed:D

    const-wide/high16 v12, 0x4079000000000000L    # 400.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_8

    .line 727
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    .line 731
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 729
    :cond_8
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->startAnimation()V

    goto :goto_4

    .line 736
    :pswitch_3
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mPressed:Z

    .line 737
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmiui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v10, :cond_1

    .line 738
    const-string v10, "cancel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/ListScreenElement;->resetInner()V

    .line 740
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lmiui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 741
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 746
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->removeAllElements()V

    .line 392
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/ElementGroup;->setY(D)V

    .line 393
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    .line 398
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 399
    return-void
.end method

.method public removeItem(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 578
    if-ltz p1, :cond_0

    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v6, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 582
    iget v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmiui/maml/elements/ListScreenElement;->mItemCount:I

    .line 583
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->getHeight()F

    move-result v6

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ListScreenElement;->descale(F)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 584
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 585
    .local v3, "length":I
    const/4 v4, 0x0

    .line 586
    .local v4, "removeIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 587
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ListItemElement;

    .line 588
    .local v2, "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    invoke-virtual {v2}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v0

    .line 589
    .local v0, "dataIndex":I
    if-ne v0, p1, :cond_3

    .line 590
    move v4, v1

    .line 591
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 592
    const-wide v6, -0x10000000000001L

    invoke-virtual {v2, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    .line 593
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    .line 586
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    :cond_3
    if-le v0, p1, :cond_2

    .line 595
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v2, v6}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 596
    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/elements/ListScreenElement;->mItem:Lmiui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    goto :goto_2

    .line 599
    .end local v0    # "dataIndex":I
    .end local v2    # "item":Lmiui/maml/elements/ListScreenElement$ListItemElement;
    :cond_4
    if-lez v3, :cond_5

    .line 600
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 601
    .local v5, "reuseId":I
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 602
    iget-object v6, p0, Lmiui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v5    # "reuseId":I
    :cond_5
    invoke-virtual {p0}, Lmiui/maml/elements/ListScreenElement;->requestUpdate()V

    goto/16 :goto_0
.end method
