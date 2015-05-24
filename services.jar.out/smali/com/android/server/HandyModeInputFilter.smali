.class public Lcom/android/server/HandyModeInputFilter;
.super Landroid/view/InputFilter;
.source "HandyModeInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HandyModeInputFilter$ClickableRect;,
        Lcom/android/server/HandyModeInputFilter$H;
    }
.end annotation


# static fields
.field static ENTERED_LISTEN_COMBINATION_KEYS:[[I

.field static NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

.field private static sEdgeDistance:F


# instance fields
.field private mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

.field mHandler:Lcom/android/server/HandyModeInputFilter$H;

.field mOutsideClickableRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/HandyModeInputFilter$ClickableRect;",
            ">;"
        }
    .end annotation
.end field

.field mPendingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field mPendingPolicyFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mWasInside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 24
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/HandyModeInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/HandyModeInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-void

    .line 24
    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x52
    .end array-data

    .line 30
    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x52
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x52
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mPendingPolicyFlags:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/server/HandyModeInputFilter$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/HandyModeInputFilter$H;-><init>(Lcom/android/server/HandyModeInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mHandler:Lcom/android/server/HandyModeInputFilter$H;

    .line 82
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/HandyModeInputFilter;->sEdgeDistance:F

    .line 83
    return-void
.end method

.method private findClickableRect(FF)Lcom/android/server/HandyModeInputFilter$ClickableRect;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HandyModeInputFilter$ClickableRect;

    .line 198
    .local v0, "c":Lcom/android/server/HandyModeInputFilter$ClickableRect;
    iget-object v2, v0, Lcom/android/server/HandyModeInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    .end local v0    # "c":Lcom/android/server/HandyModeInputFilter$ClickableRect;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 216
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 218
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 219
    if-eqz v2, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 224
    iget-object v3, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 215
    goto :goto_0

    .line 226
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 231
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 233
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 234
    if-eqz v2, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 239
    iget-object v3, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 230
    goto :goto_0

    .line 241
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/HandyModeInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private isTouchInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 206
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchInsideOrEdge(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 210
    sget v0, Lcom/android/server/HandyModeInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/HandyModeInputFilter;->sEdgeDistance:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    sget v0, Lcom/android/server/HandyModeInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 245
    monitor-enter p0

    const/4 v3, 0x0

    .line 246
    .local v3, "processed":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 303
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    monitor-exit p0

    return-void

    .line 248
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/HandyModeInputFilter;->checkKeyNeedListen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/android/server/HandyModeInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZ)V

    .line 251
    const/4 v3, 0x1

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v5, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/HandyModeInputFilter;->checkSecondKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/android/server/HandyModeInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZ)V

    .line 261
    const/4 v3, 0x1

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->flushPending()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 269
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 270
    .local v0, "firstKeyEvent":Landroid/view/KeyEvent;
    iget-object v6, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 271
    .local v1, "lastKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/HandyModeInputFilter;->checkSecondKey(I)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 278
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7

    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v6, p2, v4, v5}, Lcom/android/server/HandyModeInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZ)V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 278
    goto :goto_1

    .line 282
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->flushPending()V

    goto/16 :goto_0

    .line 288
    .end local v0    # "firstKeyEvent":Landroid/view/KeyEvent;
    .end local v1    # "lastKeyEvent":Landroid/view/KeyEvent;
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 289
    .local v2, "pendingKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/android/server/HandyModeInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZ)V

    .line 292
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->triggerCombinationClick()V

    .line 293
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->clearPendingList()V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 296
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->flushPending()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v20

    .line 125
    .local v20, "mode":I
    if-eqz v20, :cond_9

    .line 126
    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lcom/android/server/HandyMode;->sScale:F

    div-float v22, v3, v4

    .line 128
    .local v22, "scaleInverse":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 129
    .local v8, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/HandyModeInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 130
    .local v10, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/HandyModeInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v9

    .line 131
    .local v9, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v8, :cond_1

    .line 132
    aget-object v3, v10, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 134
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    sget v3, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v3

    move/from16 v23, v0

    .line 135
    .local v23, "xPivot":F
    :goto_1
    aget-object v3, v10, v19

    aget-object v4, v10, v19

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v5, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/HandyModeInputFilter;->processCoordinate(FFFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 137
    sget v3, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v3

    move/from16 v24, v0

    .line 138
    .local v24, "yPivot":F
    aget-object v3, v10, v19

    aget-object v4, v10, v19

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v5, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/HandyModeInputFilter;->processCoordinate(FFFF)F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 140
    aget-object v3, v9, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 131
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 134
    .end local v23    # "xPivot":F
    .end local v24    # "yPivot":F
    :cond_0
    const/16 v23, 0x0

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .line 157
    .local v21, "newEvent":Landroid/view/MotionEvent;
    const/4 v3, 0x1

    if-ne v8, v3, :cond_8

    .line 158
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 160
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/HandyModeInputFilter;->mWasInside:Z

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/HandyModeInputFilter;->findClickableRect(FF)Lcom/android/server/HandyModeInputFilter$ClickableRect;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/HandyModeInputFilter;->mWasInside:Z

    if-nez v3, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/HandyModeInputFilter;->isTouchInside(FF)Z

    move-result v3

    if-nez v3, :cond_6

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    iget-object v3, v3, Lcom/android/server/HandyModeInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    .line 169
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    if-eqz v3, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    iget-object v3, v3, Lcom/android/server/HandyModeInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 190
    :cond_4
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 194
    .end local v8    # "pointerCount":I
    .end local v9    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v10    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "i":I
    .end local v21    # "newEvent":Landroid/view/MotionEvent;
    .end local v22    # "scaleInverse":F
    :goto_3
    return-void

    .line 172
    .restart local v8    # "pointerCount":I
    .restart local v9    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v10    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v19    # "i":I
    .restart local v21    # "newEvent":Landroid/view/MotionEvent;
    .restart local v22    # "scaleInverse":F
    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/HandyModeInputFilter;->isTouchInsideOrEdge(FF)Z

    move-result v3

    if-nez v3, :cond_4

    .line 173
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_2

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/HandyModeInputFilter;->mWasInside:Z

    if-nez v3, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 178
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 180
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/HandyModeInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 181
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/HandyModeInputFilter;->mWasInside:Z

    .line 182
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    goto :goto_2

    .line 185
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/HandyModeInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 186
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/HandyModeInputFilter;->mWasInside:Z

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/HandyModeInputFilter;->mClickingRect:Lcom/android/server/HandyModeInputFilter$ClickableRect;

    goto :goto_2

    .line 192
    .end local v8    # "pointerCount":I
    .end local v9    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v10    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "i":I
    .end local v21    # "newEvent":Landroid/view/MotionEvent;
    .end local v22    # "scaleInverse":F
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_3
.end method

.method static processCoordinate(FFFF)F
    .locals 1
    .param p0, "coordValue"    # F
    .param p1, "offset"    # F
    .param p2, "scale"    # F
    .param p3, "scalePivot"    # F

    .prologue
    .line 120
    sub-float v0, p3, p0

    mul-float/2addr v0, p2

    sub-float v0, p3, v0

    sub-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v1, Lcom/android/server/HandyModeInputFilter$ClickableRect;

    invoke-direct {v1, p1, p2}, Lcom/android/server/HandyModeInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method declared-synchronized addPendingData(Landroid/view/KeyEvent;IIZ)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "index"    # I
    .param p4, "delayEnhance"    # Z

    .prologue
    const/4 v0, 0x1

    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mHandler:Lcom/android/server/HandyModeInputFilter$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/HandyModeInputFilter$H;->removeMessages(I)V

    .line 365
    if-gez p3, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingPolicyFlags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mHandler:Lcom/android/server/HandyModeInputFilter$H;

    const/4 v2, 0x1

    sget v3, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :cond_0
    mul-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/HandyModeInputFilter$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 369
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v1, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingPolicyFlags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method checkKeyNeedListen(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->getListenCombinationKeys()[[I

    move-result-object v2

    .line 309
    .local v2, "listenCombinationKeys":[[I
    array-length v0, v2

    .line 310
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    aget-object v4, v2, v1

    aget v4, v4, v3

    if-ne v4, p1, :cond_1

    .line 312
    const/4 v3, 0x1

    .line 315
    :cond_0
    return v3

    .line 310
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method checkSecondKey(I)Z
    .locals 8
    .param p1, "secondKeyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->getListenCombinationKeys()[[I

    move-result-object v4

    .line 328
    .local v4, "listenCombinationKeys":[[I
    iget-object v5, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 329
    .local v1, "firstKeyCode":I
    array-length v0, v4

    .line 330
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 331
    aget-object v3, v4, v2

    .line 332
    .local v3, "keySequence":[I
    aget v5, v3, v7

    if-ne v5, v1, :cond_0

    aget v5, v3, v6

    if-ne v5, p1, :cond_0

    move v5, v6

    .line 336
    .end local v3    # "keySequence":[I
    :goto_1
    return v5

    .line 330
    .restart local v3    # "keySequence":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "keySequence":[I
    :cond_1
    move v5, v7

    .line 336
    goto :goto_1
.end method

.method declared-synchronized clearPendingList()V
    .locals 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mHandler:Lcom/android/server/HandyModeInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/HandyModeInputFilter$H;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    iget-object v0, p0, Lcom/android/server/HandyModeInputFilter;->mPendingPolicyFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flushPending()V
    .locals 3

    .prologue
    .line 355
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 357
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/HandyModeInputFilter;->mPendingPolicyFlags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/HandyModeInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/HandyModeInputFilter;->clearPendingList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getListenCombinationKeys()[[I
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/server/HandyModeInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 322
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/HandyModeInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    goto :goto_0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_1

    .line 100
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/HandyModeInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 109
    :goto_0
    return-void

    .line 103
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Landroid/view/KeyEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/HandyModeInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 108
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onUninstalled()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 114
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public removeOutsideClickableRect(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HandyModeInputFilter$ClickableRect;

    iget-object v1, v1, Lcom/android/server/HandyModeInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method declared-synchronized triggerCombinationClick()V
    .locals 3

    .prologue
    .line 340
    monitor-enter p0

    const/4 v0, 0x0

    .line 341
    .local v0, "newMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 342
    const/4 v0, 0x2

    .line 347
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 351
    :cond_1
    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 343
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/HandyModeInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 344
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
