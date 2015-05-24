.class public Lmiui/util/ScreenshotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScreenshotDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotDrawable"

.field private static sHasRealBlur:Z

.field private static sRealBlurBlack:F

.field private static sTempLoc:[I


# instance fields
.field private mBluredBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOwnerView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    .line 25
    const-string v0, "ro.miui.has_real_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    .line 26
    const-string v0, "persist.sys.real_blur_black"

    const/16 v1, 0x45

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotDrawable;->sRealBlurBlack:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ownerView"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 37
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/util/ScreenshotDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 41
    sget-boolean v1, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    if-nez v1, :cond_0

    .line 42
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .end local p1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-nez v1, :cond_0

    .line 44
    new-instance v0, Lmiui/util/ScreenshotDrawable;

    invoke-direct {v0, p0}, Lmiui/util/ScreenshotDrawable;-><init>(Landroid/view/View;)V

    .line 45
    .local v0, "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/util/ScreenshotDrawable;->setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .end local v0    # "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lmiui/util/ScreenshotDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    goto :goto_0
.end method

.method private rebuildBluredBitmap()V
    .locals 8

    .prologue
    .line 56
    :try_start_0
    iget-object v3, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 57
    .local v2, "screenshot":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    sget v4, Lmiui/util/ScreenshotUtils;->sBlurRadius:I

    invoke-static {v2, v3, v4}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    .line 58
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget v3, Lmiui/util/ScreenshotDrawable;->sRealBlurBlack:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "screenshot":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v3, "ScreenshotDrawable"

    const-string v4, "Screenshot and fastblur failed."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVisibilityAnimator(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    .line 108
    invoke-virtual {p0, v2}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    .line 123
    :goto_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    return-void

    .line 110
    :cond_1
    new-array v0, v1, [I

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/util/ScreenshotDrawable$1;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$1;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 107
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    sget-object v5, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 78
    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v1, v4, v5

    .line 79
    .local v1, "left":I
    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v2, v4, v5

    .line 80
    .local v2, "top":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v3, v4, v5

    .line 81
    .local v3, "width":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v0, v4, v5

    .line 82
    .local v0, "height":I
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "width":I
    :cond_0
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    :cond_1
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    .line 160
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->invalidateSelf()V

    .line 145
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 133
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 149
    return-void
.end method

.method public setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "originalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    .line 95
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 96
    invoke-direct {p0}, Lmiui/util/ScreenshotDrawable;->rebuildBluredBitmap()V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
