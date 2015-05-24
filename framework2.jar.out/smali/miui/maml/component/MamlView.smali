.class public Lmiui/maml/component/MamlView;
.super Landroid/view/View;
.source "MamlView.java"


# instance fields
.field private mHasDelay:Z

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUpdater:Lmiui/maml/RenderUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 37
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "startDelay"    # J

    .prologue
    .line 41
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "startDelay"    # J

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, v4}, Lmiui/maml/component/MamlView;->setClickable(Z)V

    .line 47
    invoke-virtual {p0, v4}, Lmiui/maml/component/MamlView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v4}, Lmiui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    .line 49
    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 50
    iget-object v2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v3, Lmiui/maml/component/MamlView$1;

    invoke-direct {v3, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 59
    :cond_0
    new-instance v2, Lmiui/maml/component/MamlView$2;

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, p0, v3, p3}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    iput-object v2, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    .line 65
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    .line 66
    iput-boolean v4, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 68
    .local v0, "createTime":J
    iget-object v2, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v2, v0, v1, p4, p5}, Lmiui/maml/RenderUpdater;->setStartDelay(JJ)V

    .line 70
    .end local v0    # "createTime":J
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    .line 71
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    .line 95
    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .param p1, "keepResource"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 101
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    .line 102
    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->init()V

    .line 91
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 172
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 173
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 178
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    .line 179
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v1}, Lmiui/maml/RenderUpdater;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v1, p0, Lmiui/maml/component/MamlView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 160
    .local v0, "sa":I
    iget v1, p0, Lmiui/maml/component/MamlView;->mScale:F

    iget v2, p0, Lmiui/maml/component/MamlView;->mScale:F

    iget v3, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    .end local v0    # "sa":I
    :goto_1
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v1}, Lmiui/maml/RenderUpdater;->doneRender()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 75
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 191
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 192
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 193
    const-string v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 195
    move v3, p2

    .line 196
    .local v3, "x":I
    move v4, p3

    .line 197
    .local v4, "y":I
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mParent:Landroid/view/ViewParent;

    .line 198
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 199
    check-cast v1, Landroid/view/View;

    .line 200
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 205
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    const-string v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 206
    const-string v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 208
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v5}, Lmiui/maml/RenderUpdater;->triggerUpdate()V

    .line 209
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onResume()V

    .line 187
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 132
    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 134
    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 137
    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 138
    const/4 v1, 0x1

    .line 140
    .end local v0    # "b":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlView;
    .locals 1
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderUpdater;->setAutoCleanup(Z)V

    .line 84
    return-object p0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 214
    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    .line 215
    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    .line 216
    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    .line 217
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    if-nez p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    goto :goto_0
.end method
