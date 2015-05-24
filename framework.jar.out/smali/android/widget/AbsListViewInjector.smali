.class public Landroid/widget/AbsListViewInjector;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;,
        Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method private static edgeReached(Landroid/widget/AbsListView;I)Z
    .locals 11
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 152
    .local v2, "childCount":I
    if-lez v2, :cond_a

    .line 153
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 154
    .local v3, "firstPosition":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 156
    .local v6, "listPadding":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    .line 157
    .local v4, "firstTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 159
    .local v5, "lastBottom":I
    if-nez v3, :cond_3

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-lt v4, v9, :cond_3

    move v0, v7

    .line 161
    .local v0, "cannotScrollDown":Z
    :goto_0
    add-int v9, v3, v2

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v9, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-gt v5, v9, :cond_4

    move v1, v7

    .line 164
    .local v1, "cannotScrollUp":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    .line 166
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v9, :cond_6

    .line 167
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-nez v9, :cond_0

    .line 168
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 180
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    if-eqz v1, :cond_a

    if-gez p1, :cond_a

    .line 184
    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    .end local v3    # "firstPosition":I
    .end local v4    # "firstTop":I
    .end local v5    # "lastBottom":I
    .end local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_2
    :goto_4
    return v7

    .restart local v3    # "firstPosition":I
    .restart local v4    # "firstTop":I
    .restart local v5    # "lastBottom":I
    .restart local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_3
    move v0, v8

    .line 159
    goto :goto_0

    .restart local v0    # "cannotScrollDown":Z
    :cond_4
    move v1, v8

    .line 161
    goto :goto_1

    .restart local v1    # "cannotScrollUp":Z
    :cond_5
    move v9, v8

    .line 164
    goto :goto_2

    .line 170
    :cond_6
    if-eqz v0, :cond_8

    .line 171
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-ge p1, v9, :cond_0

    .line 172
    :cond_7
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .line 174
    :cond_8
    if-eqz v1, :cond_0

    .line 175
    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v9, :cond_9

    iget v9, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-le p1, v9, :cond_0

    .line 176
    :cond_9
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    .end local v3    # "firstPosition":I
    .end local v4    # "firstTop":I
    .end local v5    # "lastBottom":I
    .end local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_a
    move v7, v8

    .line 184
    goto :goto_4
.end method

.method public static getPanSpeed(Landroid/widget/AbsListView;I)I
    .locals 4
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "y"    # I

    .prologue
    .line 45
    iget v1, p0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 46
    iget v1, p0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v0, p1, v1

    .line 52
    .local v0, "inertia":I
    :goto_0
    return v0

    .line 48
    .end local v0    # "inertia":I
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    sub-int v2, p1, v1

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    sub-int v0, v2, v1

    .restart local v0    # "inertia":I
    goto :goto_0

    .end local v0    # "inertia":I
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1
.end method

.method public static getY(Landroid/widget/AbsListView;Landroid/view/MotionEvent;I)I
    .locals 3
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 31
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static initOnTouchDown(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    .line 25
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 26
    iput v1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    .line 28
    return-void
.end method

.method private static isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Build;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needFinishActionMode(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Build;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onRenderTick(Landroid/widget/AbsListView;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 81
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScaleY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->resetScale(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 93
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, v0}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;IZ)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    goto :goto_0

    .line 97
    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    int-to-float v0, v0

    const v1, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    goto :goto_0
.end method

.method public static resetScale(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScaleY(F)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 78
    return-void
.end method

.method private static setListScale(Landroid/widget/AbsListView;IZ)V
    .locals 11
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I
    .param p2, "isTween"    # Z

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double v5, v7, v9

    .line 103
    .local v5, "sqrtOffset":D
    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v5, v7

    .line 104
    .local v2, "scaleRatio":D
    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 106
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v7, :cond_0

    if-gez p1, :cond_0

    .line 107
    neg-double v2, v2

    .line 110
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    double-to-float v8, v2

    add-float v4, v7, v8

    .line 112
    .local v4, "scaleY":F
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPivotX(F)V

    .line 113
    if-gtz p1, :cond_1

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v7, :cond_3

    .line 114
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPivotY(F)V

    .line 119
    :goto_0
    if-eqz p2, :cond_5

    .line 120
    iget-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_2

    .line 121
    iget-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 123
    :cond_2
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 125
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 127
    .local v1, "scaleBackAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x190

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    new-instance v7, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;

    invoke-direct {v7}, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScaleY()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 131
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    .local v0, "scaleAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    new-instance v7, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;

    invoke-direct {v7}, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    iget-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
    .end local v0    # "scaleAnimator":Landroid/animation/ObjectAnimator;
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    .end local v1    # "scaleBackAnimator":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 116
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPivotY(F)V

    goto :goto_0

    .line 139
    .restart local v1    # "scaleBackAnimator":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v7, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 144
    .end local v1    # "scaleBackAnimator":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScaleY(F)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_2
.end method

.method public static setListScaleIfNeeded(Landroid/widget/AbsListView;I)Z
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    iget-object v4, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    :goto_0
    return v2

    .line 61
    :cond_0
    invoke-static {p0, p1}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    .line 62
    .local v0, "atEdge":Z
    if-eqz v0, :cond_1

    .line 63
    iget v4, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    sub-int v1, p1, v4

    .line 65
    .local v1, "offsetRevise":I
    invoke-static {p0, v1, v3}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;IZ)V

    .line 66
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 68
    .end local v1    # "offsetRevise":I
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mInertia:I

    if-eqz v4, :cond_2

    :goto_1
    and-int/2addr v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .end local v0    # "atEdge":Z
    :cond_3
    move v2, v3

    .line 70
    goto :goto_0
.end method
