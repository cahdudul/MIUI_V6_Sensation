.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field private static final sHoverPaintColor:I = -0x7f000100

.field private static final sPaintColor:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mAlpha:I

.field private mAlphaExpression:Lmiui/maml/data/Expression;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseXExpression:Lmiui/maml/data/Expression;

.field private mBaseYExpression:Lmiui/maml/data/Expression;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterXExpression:Lmiui/maml/data/Expression;

.field private mCenterYExpression:Lmiui/maml/data/Expression;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lmiui/maml/data/Expression;

.field private mHExpression:Lmiui/maml/data/Expression$NumberExpression;

.field protected mHasContentDescription:Z

.field private mHeightExpression:Lmiui/maml/data/Expression;

.field private mHoverPaint:Landroid/graphics/Paint;

.field protected mHovered:Z

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotZ:Lmiui/maml/data/Expression;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field private mRotationExpression:Lmiui/maml/data/Expression;

.field private mRotationX:Lmiui/maml/data/Expression;

.field private mRotationY:Lmiui/maml/data/Expression;

.field private mRotationZ:Lmiui/maml/data/Expression;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mSIdExpression:Lmiui/maml/data/Expression$NumberExpression;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field private mScaleXExpression:Lmiui/maml/data/Expression;

.field private mScaleYExpression:Lmiui/maml/data/Expression;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field private mSources:Lmiui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lmiui/maml/util/TextFormatter;

.field private mSrcIdExpression:Lmiui/maml/data/Expression;

.field protected mTouchable:Z

.field private mTriggers:Lmiui/maml/CommandTriggers;

.field private mWidthExpression:Lmiui/maml/data/Expression;

.field private mXExpression:Lmiui/maml/data/Expression$NumberExpression;

.field private mYExpression:Lmiui/maml/data/Expression$NumberExpression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    .line 120
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 121
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const v1, -0x4c06f6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    const v1, -0x7f000100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "compatibleName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 183
    .local v0, "exp":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p0, p1, p3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method private handleCancel()V
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 493
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "x"

    const-string v1, "left"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    .line 134
    const-string v0, "y"

    const-string v1, "top"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    .line 135
    const-string v0, "w"

    const-string v1, "width"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    .line 136
    const-string v0, "h"

    const-string v1, "height"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    .line 137
    const-string v0, "angle"

    const-string v1, "rotation"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    .line 138
    const-string v0, "centerX"

    const-string v1, "pivotX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    .line 139
    const-string v0, "centerY"

    const-string v1, "pivotY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    .line 140
    const-string v0, "srcid"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    .line 141
    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    .line 142
    const-string v0, "scale"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    .line 143
    const-string v0, "scaleX"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    .line 144
    const-string v0, "scaleY"

    invoke-direct {p0, p1, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    .line 145
    const-string v0, "angleX"

    const-string v1, "rotationX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    .line 146
    const-string v0, "angleY"

    const-string v1, "rotationY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    .line 147
    const-string v0, "angleZ"

    const-string v1, "rotationZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    .line 148
    const-string v0, "centerZ"

    const-string v1, "pivotZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    .line 150
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    .line 151
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    .line 152
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    .line 153
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    .line 154
    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    .line 156
    const-string v1, "src"

    const-string v2, "srcFormat"

    const-string v3, "srcParas"

    const-string v4, "srcExp"

    const-string v5, "srcFormatExp"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    .line 158
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 160
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 163
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_3

    .line 164
    :cond_2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 167
    :cond_3
    const-string v0, "touchable"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 168
    const-string v0, "interceptTouch"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 169
    const-string v0, "haptic"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 171
    const-string v0, "Triggers"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 172
    .local v6, "triggers":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_4

    .line 173
    new-instance v0, Lmiui/maml/CommandTriggers;

    invoke-direct {v0, v6, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    .line 176
    :cond_4
    const-string v0, "contentDescription"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 177
    const-string v0, "contentDescriptionExp"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    .line 178
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 199
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 200
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v1, Lmiui/maml/animation/AlphaAnimation;

    invoke-direct {v1, v0, p0}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    .line 204
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 218
    const-string v1, "PositionAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 219
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v1, Lmiui/maml/animation/PositionAnimation;

    invoke-direct {v1, v0, p0}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    .line 223
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 227
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 228
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v1, Lmiui/maml/animation/RotationAnimation;

    invoke-direct {v1, v0, p0}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    .line 232
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 190
    const-string v1, "SizeAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 191
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v1, Lmiui/maml/animation/SizeAnimation;

    invoke-direct {v1, v0, p0}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    .line 195
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 208
    const-string v1, "SourcesAnimation"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 209
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v1, Lmiui/maml/animation/SourcesAnimation;

    invoke-direct {v1, v0, p0}, Lmiui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 214
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 246
    .local v15, "sc":I
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v18

    .line 247
    .local v18, "var":Lmiui/maml/data/Variables;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v2, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 250
    const/4 v12, 0x0

    .local v12, "rx":F
    const/4 v13, 0x0

    .local v13, "ry":F
    const/4 v14, 0x0

    .line 251
    .local v14, "rz":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v12, v0

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v13, v0

    .line 257
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v14, v0

    .line 260
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_5

    .line 261
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v12, v13, v14}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v7, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v7, v0, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 270
    .end local v12    # "rx":F
    .end local v13    # "ry":F
    .end local v14    # "rz":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v11

    .line 271
    .local v11, "rotation":F
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_6

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 274
    :cond_6
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "scaleX":F
    const/high16 v17, 0x3f800000    # 1.0f

    .line 275
    .local v17, "scaleY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_c

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v16, v17

    .line 281
    :cond_7
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v16, v2

    if-nez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_9

    .line 282
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 285
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v20

    .line 286
    .local v20, "x":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v21

    .line 287
    .local v21, "y":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v7

    sub-float v7, v20, v7

    sub-float v9, v2, v7

    .line 288
    .local v9, "pivotXToX":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v7

    sub-float v7, v21, v7

    sub-float v10, v2, v7

    .line 289
    .local v10, "pivotYToY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v7, v9

    neg-float v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float v7, v9, v20

    add-float v22, v10, v21

    move/from16 v0, v22

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 293
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-boolean v2, v2, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v2, :cond_a

    .line 296
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v19

    .line 297
    .local v19, "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    .line 298
    .local v8, "height":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_a

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    .line 300
    .local v3, "left":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    .line 301
    .local v4, "top":F
    add-float v5, v3, v19

    .line 302
    .local v5, "right":F
    add-float v6, v4, v8

    .line 303
    .local v6, "bottom":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v8    # "height":F
    .end local v19    # "width":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, v2, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_b

    .line 308
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v19

    .line 309
    .restart local v19    # "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    .line 310
    .restart local v8    # "height":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_b

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v3

    .line 312
    .restart local v3    # "left":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v4

    .line 313
    .restart local v4    # "top":F
    add-float v5, v3, v19

    .line 314
    .restart local v5    # "right":F
    add-float v6, v4, v8

    .line 315
    .restart local v6    # "bottom":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHoverPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    .end local v3    # "left":F
    .end local v4    # "top":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v8    # "height":F
    .end local v19    # "width":F
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 320
    return-void

    .line 277
    .end local v9    # "pivotXToX":F
    .end local v10    # "pivotYToY":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_7

    .line 278
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v2, :cond_e

    const/high16 v16, 0x3f800000    # 1.0f

    .line 279
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-nez v2, :cond_f

    const/high16 v17, 0x3f800000    # 1.0f

    :goto_2
    goto/16 :goto_0

    .line 278
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v16, v0

    goto :goto_1

    .line 279
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    goto :goto_2
.end method

.method protected doTick(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 611
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 612
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrc:Ljava/lang/String;

    .line 614
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 615
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 616
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->tick(J)V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 612
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 619
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    iget-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 620
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(F)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 621
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AnimatedScreenElement;->descale(F)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 623
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 624
    iget v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iput v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 625
    return-void

    .line 624
    :cond_3
    iget v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    goto :goto_2
.end method

.method public evaluateAlpha()I
    .locals 5

    .prologue
    const/16 v2, 0xff

    .line 688
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 689
    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    .line 690
    .local v1, "alpha1":I
    :goto_1
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    .line 693
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_2

    .end local v0    # "alpha":I
    :goto_2
    return v0

    .end local v1    # "alpha1":I
    :cond_0
    move v0, v2

    .line 688
    goto :goto_0

    .restart local v0    # "alpha":I
    :cond_1
    move v1, v2

    .line 689
    goto :goto_1

    .line 693
    .restart local v1    # "alpha1":I
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v2

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_2
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 523
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 524
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 525
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->finish()V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->finish()V

    .line 529
    :cond_1
    return-void
.end method

.method public getAbsoluteLeft()F
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method public getAbsoluteTop()F
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method protected getContentDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    .line 671
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCenterYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRotation()F
    .locals 4

    .prologue
    .line 683
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 684
    .local v0, "angle":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v2

    :goto_1
    float-to-double v2, v2

    add-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .line 683
    .end local v0    # "angle":D
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 684
    .restart local v0    # "angle":D
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 595
    const/4 v2, 0x0

    .line 596
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v3, :cond_1

    .line 597
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 602
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-long v0, v3

    .line 604
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .end local v0    # "id":J
    :cond_0
    return-object v2

    .line 599
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getTop()F
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    .line 652
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method public getX()F
    .locals 4

    .prologue
    .line 628
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 629
    .local v0, "x":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 632
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 635
    :cond_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 628
    .end local v0    # "x":D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 4

    .prologue
    .line 639
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    .line 640
    .local v0, "y":D
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 643
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v2, :cond_1

    .line 644
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 646
    :cond_1
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v2

    return v2

    .line 639
    .end local v0    # "y":D
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 509
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 510
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrc:Ljava/lang/String;

    .line 511
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 512
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 513
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->init()V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 515
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_2

    .line 516
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->init()V

    .line 517
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    .line 518
    return-void
.end method

.method protected onActionCancel()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method protected onActionDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 464
    return-void
.end method

.method protected onActionMove(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 468
    return-void
.end method

.method protected onActionUp()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 414
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-nez v5, :cond_2

    :cond_0
    move v1, v4

    .line 452
    :cond_1
    :goto_0
    return v1

    .line 417
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 419
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 420
    .local v3, "y":F
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 421
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v5, v5, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    if-ne v5, p0, :cond_3

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    if-nez v5, :cond_4

    .line 432
    :cond_3
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    iput-boolean v6, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    .line 434
    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p0, v4, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    .line 435
    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x1

    goto :goto_0

    .line 423
    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    iput-boolean v6, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    .line 425
    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p0, v4, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    .line 426
    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Ljava/lang/String;)V

    .line 427
    const/4 v1, 0x1

    goto :goto_0

    .line 439
    :cond_4
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-nez v5, :cond_5

    .line 440
    iput-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    goto :goto_0

    .line 442
    :cond_5
    const/4 v1, 0x1

    .line 445
    goto :goto_0

    .line 447
    :pswitch_3
    iput-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHovered:Z

    .line 448
    const/4 v1, 0x1

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 363
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 409
    :cond_1
    :goto_0
    return v3

    .line 366
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 367
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 368
    .local v2, "y":F
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 369
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 409
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-nez v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_0

    .line 371
    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    iput-boolean v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 373
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v5, :cond_5

    .line 374
    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, v3}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 376
    :cond_5
    const-string v5, "down"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 378
    const/4 v0, 0x1

    goto :goto_1

    .line 382
    :pswitch_1
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v5, :cond_3

    .line 383
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v0

    .line 384
    const-string v5, "move"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_1

    .line 389
    :pswitch_2
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v5, :cond_3

    .line 390
    iput-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 391
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 392
    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v5, :cond_6

    .line 393
    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, v3}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 395
    :cond_6
    const-string v5, "up"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 401
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 398
    :cond_7
    const-string v5, "cancel"

    invoke-virtual {p0, v5}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    goto :goto_2

    .line 405
    :pswitch_3
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_1

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 500
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 502
    if-nez p1, :cond_0

    .line 503
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 505
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 533
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 534
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 536
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->pause()V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->pause()V

    .line 540
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 541
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 566
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 567
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 568
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 569
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->pauseAnim(J)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 572
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0, p1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    .line 485
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 556
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 557
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 558
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 559
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 558
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 562
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 238
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 587
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->reset(J)V

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 592
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 545
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 546
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 548
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->resume()V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->resume()V

    .line 552
    :cond_1
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 576
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 577
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 579
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->resumeAnim(J)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 582
    return-void
.end method

.method public setH(D)V
    .locals 2
    .param p1, "h"    # D

    .prologue
    .line 731
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHExpression:Lmiui/maml/data/Expression$NumberExpression;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHExpression:Lmiui/maml/data/Expression$NumberExpression;

    .line 733
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHExpression:Lmiui/maml/data/Expression$NumberExpression;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightExpression:Lmiui/maml/data/Expression;

    .line 735
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHExpression:Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 736
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 704
    :cond_0
    return-void
.end method

.method public setSrcId(D)V
    .locals 2
    .param p1, "srcId"    # D

    .prologue
    .line 707
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSIdExpression:Lmiui/maml/data/Expression$NumberExpression;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSIdExpression:Lmiui/maml/data/Expression$NumberExpression;

    .line 709
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYExpression:Lmiui/maml/data/Expression$NumberExpression;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    .line 711
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSIdExpression:Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 712
    return-void
.end method

.method public setX(D)V
    .locals 2
    .param p1, "x"    # D

    .prologue
    .line 723
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXExpression:Lmiui/maml/data/Expression$NumberExpression;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXExpression:Lmiui/maml/data/Expression$NumberExpression;

    .line 725
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXExpression:Lmiui/maml/data/Expression$NumberExpression;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseXExpression:Lmiui/maml/data/Expression;

    .line 727
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXExpression:Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 728
    return-void
.end method

.method public setY(D)V
    .locals 2
    .param p1, "y"    # D

    .prologue
    .line 715
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYExpression:Lmiui/maml/data/Expression$NumberExpression;

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYExpression:Lmiui/maml/data/Expression$NumberExpression;

    .line 717
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYExpression:Lmiui/maml/data/Expression$NumberExpression;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBaseYExpression:Lmiui/maml/data/Expression;

    .line 719
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYExpression:Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 720
    return-void
.end method

.method public touched(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result v0

    return v0
.end method

.method public touched(FFZ)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isAbsolute"    # Z

    .prologue
    const/4 v6, 0x0

    .line 347
    if-eqz p3, :cond_0

    .line 348
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_1

    move v2, v6

    .line 349
    .local v2, "parentLeft":F
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v7, :cond_2

    move v3, v6

    .line 350
    .local v3, "parentTop":F
    :goto_1
    sub-float/2addr p1, v2

    .line 351
    sub-float/2addr p2, v3

    .line 353
    .end local v2    # "parentLeft":F
    .end local v3    # "parentTop":F
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v1

    .line 354
    .local v1, "left":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v4

    .line 355
    .local v4, "top":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v5

    .line 356
    .local v5, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 357
    .local v0, "h":F
    cmpl-float v6, p1, v1

    if-ltz v6, :cond_3

    add-float v6, v1, v5

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_3

    add-float v6, v4, v0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 348
    .end local v0    # "h":F
    .end local v1    # "left":F
    .end local v4    # "top":F
    .end local v5    # "w":F
    :cond_1
    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v2

    goto :goto_0

    .line 349
    .restart local v2    # "parentLeft":F
    :cond_2
    iget-object v6, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v3

    goto :goto_1

    .line 357
    .end local v2    # "parentLeft":F
    .restart local v0    # "h":F
    .restart local v1    # "left":F
    .restart local v4    # "top":F
    .restart local v5    # "w":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method
