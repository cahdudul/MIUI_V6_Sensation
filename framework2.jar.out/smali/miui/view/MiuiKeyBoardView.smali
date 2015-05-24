.class public Lmiui/view/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;,
        Lmiui/view/MiuiKeyBoardView$KeyButton;
    }
.end annotation


# static fields
.field private static final FUNC_KEY_RATIO:F = 1.6f

.field private static final HORIZONTAL_MARGIN_RATIO:F = 0.2f

.field private static final OK_KEY_RATIO:F = 2.8f

.field private static final PREVIEW_ANIMATION_DURATION:I = 0x64

.field private static final SHOW_PREVIEW_DURATION:J = 0x12cL

.field private static final SIZE_GROUP:[[F

.field private static final SPACE_KEY_RATIO:F = 5.8f

.field private static final SPACE_STR:Ljava/lang/String; = " "

.field private static final VERTICAL_MARGIN_RATIO:F = 0.17f


# instance fields
.field private mAllKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnCapsLock:Landroid/view/View;

.field private mBtnLetterDelete:Landroid/view/View;

.field private mBtnLetterOK:Landroid/view/View;

.field private mBtnLetterSpace:Landroid/view/View;

.field private mBtnSymbolDelete:Landroid/view/View;

.field private mBtnSymbolOK:Landroid/view/View;

.field private mBtnSymbolSpace:Landroid/view/View;

.field private mBtnToLetterBoard:Landroid/view/View;

.field private mBtnToSymbolBoard:Landroid/view/View;

.field private mConfirmHide:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIsShowingPreview:Z

.field private mIsUpperMode:Z

.field private mKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterBoard:Landroid/widget/FrameLayout;

.field private mPopupViewHeight:I

.field private mPopupViewWidth:I

.field private mPopupViewX:I

.field private mPopupViewY:I

.field private mPreviewText:Landroid/widget/TextView;

.field private final mSendDeleteActionRunnable:Ljava/lang/Runnable;

.field private mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field private mShowPreviewLastTime:J

.field private mShrinkToBottonAnimation:Landroid/view/animation/Animation;

.field private mStretchFromBottonAnimation:Landroid/view/animation/Animation;

.field private mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x3

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_3
    .array-data 4
        0x40333333    # 2.8f
        0x40b9999a    # 5.8f
        0x40333333    # 2.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    .line 57
    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 63
    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 65
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 66
    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 67
    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 242
    new-instance v0, Lmiui/view/MiuiKeyBoardView$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$1;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lmiui/view/MiuiKeyBoardView$2;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$2;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0xa030007

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0xa03000f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0xa030006

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setFocusableInTouchMode(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lmiui/view/MiuiKeyBoardView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/MiuiKeyBoardView;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmiui/view/MiuiKeyBoardView;

    .prologue
    .line 26
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method private calcAndStartShowPreviewAnim(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 361
    instance-of v1, p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v1, :cond_0

    .line 362
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 366
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 367
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 368
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 370
    .local v0, "viewPos":[F
    invoke-direct {p0, p1, v0, v5, v6}, Lmiui/view/MiuiKeyBoardView;->getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F

    .line 371
    aget v1, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    .line 372
    aget v1, v0, v6

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    .line 373
    invoke-direct {p0, v6}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    .line 374
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    .end local v0    # "viewPos":[F
    :cond_0
    return-void
.end method

.method private getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F
    .locals 10
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "useTransformation"    # Z
    .param p4, "ignoreScale"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    .local v0, "scale":F
    const/4 v3, 0x0

    aput v3, p2, v7

    aput v3, p2, v6

    .line 151
    if-eqz p3, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    .line 155
    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    .line 156
    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 158
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    if-eq v2, p0, :cond_2

    move-object v1, v2

    .line 159
    check-cast v1, Landroid/view/View;

    .line 160
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_1

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    .line 164
    :cond_1
    aget v3, p2, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    .line 165
    aget v3, p2, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 167
    goto :goto_0

    .line 168
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    .line 169
    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v6

    .line 170
    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v7

    .line 172
    :cond_3
    return v0
.end method

.method private onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 232
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardDelete()V

    goto :goto_0

    .line 234
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private onKeyBoardOK()V
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 238
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardOK()V

    goto :goto_0

    .line 240
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 226
    .local v1, "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-interface {v1, p1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    .end local v1    # "listener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :cond_0
    return-void
.end method

.method private setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 135
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 142
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 145
    :cond_2
    return-void
.end method

.method private shiftLetterBoard()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 421
    .local v1, "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 423
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 428
    .end local v1    # "key":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 429
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_4

    .line 430
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0xa020041

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 434
    :goto_3
    return-void

    :cond_3
    move v3, v5

    .line 428
    goto :goto_2

    .line 432
    :cond_4
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0xa020040

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private showLetterBoard(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 413
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 415
    return-void

    :cond_0
    move v0, v2

    .line 413
    goto :goto_0

    :cond_1
    move v2, v1

    .line 414
    goto :goto_1
.end method

.method private showPreviewAnim(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x2

    .line 385
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 386
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 387
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 388
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 389
    if-eqz p1, :cond_1

    .line 390
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 394
    :goto_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 395
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 397
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 398
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/MiuiKeyBoardView$3;

    invoke-direct {v1, p0}, Lmiui/view/MiuiKeyBoardView$3;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 405
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 406
    iput-boolean p1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 410
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 390
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 392
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .locals 3
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .prologue
    .line 212
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .line 213
    .local v0, "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    .end local v0    # "actionListener":Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    return-void
.end method

.method keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V
    .locals 15
    .param p1, "board"    # Landroid/view/ViewGroup;
    .param p2, "width"    # I
    .param p3, "normalKeyWidth"    # I
    .param p4, "horizontalMargin"    # I
    .param p5, "normalKeyHeight"    # I
    .param p6, "verticalMargin"    # I

    .prologue
    .line 322
    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v9, v11

    .line 323
    .local v9, "rowCount":I
    const/4 v3, 0x0

    .line 324
    .local v3, "index":I
    iget v7, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 325
    .local v7, "paddingTop":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_3

    .line 326
    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    aget-object v8, v11, v2

    .line 327
    .local v8, "row":[F
    const/4 v10, 0x0

    .line 328
    .local v10, "totalSize":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v11, v8

    if-ge v4, v11, :cond_0

    .line 329
    aget v11, v8, v4

    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 331
    :cond_0
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int v11, v11, p4

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 332
    move/from16 v0, p2

    int-to-float v11, v0

    sub-float/2addr v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v5, v11

    .line 333
    .local v5, "padding":I
    const/4 v4, 0x0

    :goto_2
    array-length v11, v8

    if-ge v4, v11, :cond_2

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .line 335
    .local v1, "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    move v6, v5

    .line 336
    .local v6, "paddingLeft":I
    const-string v11, "!"

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 337
    int-to-float v11, v6

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 339
    :cond_1
    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    add-int v12, v7, p5

    invoke-virtual {v1, v6, v7, v11, v12}, Lmiui/view/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    .line 341
    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    move/from16 v0, p4

    int-to-float v13, v0

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v5, v11

    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 344
    .end local v1    # "btn":Lmiui/view/MiuiKeyBoardView$KeyButton;
    .end local v6    # "paddingLeft":I
    :cond_2
    add-int v11, p6, p5

    add-int/2addr v7, v11

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v4    # "j":I
    .end local v5    # "padding":I
    .end local v8    # "row":[F
    .end local v10    # "totalSize":F
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 284
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 285
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 291
    :cond_4
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    goto :goto_0

    .line 292
    :cond_5
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 293
    :cond_6
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardOK()V

    goto :goto_0

    .line 294
    :cond_7
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 295
    :cond_8
    const-string v0, " "

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_9
    check-cast p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0xa08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    .line 99
    const v1, 0xa08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    .line 101
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0xa040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    .line 102
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0xa040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipChildren(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipToPadding(Z)V

    .line 106
    const v1, 0xa090016

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 108
    const v1, 0xa090017

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 109
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    const v1, 0xa090018

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 111
    const v1, 0xa090019

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 112
    const v1, 0xa09001a

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    .line 113
    const v1, 0xa09001b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    .line 114
    const v1, 0xa09001c

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    .line 116
    const v1, 0xa09002b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 117
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    const v1, 0xa09002c

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 119
    const v1, 0xa09002d

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    .line 120
    const v1, 0xa09002e

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    .line 121
    const v1, 0xa09002f

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 124
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 125
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 304
    sub-int v2, p4, p2

    .line 305
    .local v2, "keyboardWidth":I
    sub-int v7, p5, p3

    .line 306
    .local v7, "keyboardHeight":I
    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    const/4 v8, 0x0

    aget-object v1, v1, v8

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr v0, v1

    float-to-int v3, v0

    .line 307
    .local v3, "normalKeyWidth":I
    int-to-float v0, v3

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 308
    .local v4, "horizontalMargin":I
    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f95c28f    # 1.17f

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 309
    .local v5, "normalKeyHeight":I
    int-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 310
    .local v6, "verticalMargin":I
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v8, 0x0

    sub-int v9, p5, p3

    invoke-virtual {v0, v1, v8, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 311
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v8, 0x0

    sub-int v9, p5, p3

    invoke-virtual {v0, v1, v8, v2, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 312
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 314
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    .line 316
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v8, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v9, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    add-int/2addr v9, v10

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v11, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 318
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v3, 0x0

    .line 253
    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 276
    .end local v0    # "action":I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    return v3

    .line 257
    .restart local v0    # "action":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 259
    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->calcAndStartShowPreviewAnim(Landroid/view/View;)V

    .line 261
    :cond_1
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 262
    :cond_2
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 267
    :pswitch_2
    const-wide/16 v5, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    sub-long/2addr v7, v9

    sub-long v1, v5, v7

    .line 268
    .local v1, "hideDelayed":J
    iget-boolean v5, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz v5, :cond_3

    .line 269
    iget-object v5, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    cmp-long v6, v1, v3

    if-lez v6, :cond_5

    .end local v1    # "hideDelayed":J
    :goto_1
    invoke-virtual {p0, v5, v1, v2}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    :cond_3
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 272
    :cond_4
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .restart local v1    # "hideDelayed":J
    :cond_5
    move-wide v1, v3

    .line 269
    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public removeKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 350
    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    .line 353
    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    return-void
.end method
