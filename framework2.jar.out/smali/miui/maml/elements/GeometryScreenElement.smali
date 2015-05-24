.class public abstract Lmiui/maml/elements/GeometryScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/GeometryScreenElement$DrawMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GeometryScreenElement"


# instance fields
.field private mFillColor:I

.field protected mFillColorParser:Lmiui/maml/util/ColorParser;

.field protected mFillShadersElement:Lmiui/maml/shader/ShadersElement;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field private mStrokeColor:I

.field protected mStrokeColorParser:Lmiui/maml/util/ColorParser;

.field protected mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

.field protected mWeight:F

.field protected mWeightExp:Lmiui/maml/data/Expression;

.field protected mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 25
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 40
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result v4

    iput v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 51
    const-string v4, "strokeColor"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "color":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v1}, Lmiui/maml/util/ColorParser;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    .line 55
    :cond_0
    const-string v4, "fillColor"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v1}, Lmiui/maml/util/ColorParser;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    .line 59
    :cond_1
    const-string v4, "weight"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeightExp:Lmiui/maml/data/Expression;

    .line 60
    const-string v4, "cap"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/maml/elements/GeometryScreenElement;->getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    .line 61
    .local v0, "cap":Landroid/graphics/Paint$Cap;
    iget-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    invoke-direct {p0, p1}, Lmiui/maml/elements/GeometryScreenElement;->resolveDashIntervals(Lorg/w3c/dom/Element;)[F

    move-result-object v2

    .line 63
    .local v2, "dashIntervals":[F
    if-eqz v2, :cond_2

    .line 64
    iget-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 66
    :cond_2
    const-string v4, "strokeAlign"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->getStrokeAlign(Ljava/lang/String;)Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .line 68
    const-string v4, "xfermodeNum"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    .line 69
    iget-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_3

    .line 70
    const-string v4, "xfermode"

    invoke-virtual {p0, p1, v4}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 71
    .local v3, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v5, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    .end local v3    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    iget-object v4, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->loadShadersElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 75
    return-void
.end method

.method private final getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;
    .locals 3
    .param p1, "strCap"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 79
    .local v0, "cap":Landroid/graphics/Paint$Cap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 88
    .end local v0    # "cap":Landroid/graphics/Paint$Cap;
    .local v1, "cap":Landroid/graphics/Paint$Cap;
    :goto_0
    return-object v1

    .line 83
    .end local v1    # "cap":Landroid/graphics/Paint$Cap;
    .restart local v0    # "cap":Landroid/graphics/Paint$Cap;
    :cond_0
    const-string v2, "round"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 88
    .end local v0    # "cap":Landroid/graphics/Paint$Cap;
    .restart local v1    # "cap":Landroid/graphics/Paint$Cap;
    goto :goto_0

    .line 85
    .end local v1    # "cap":Landroid/graphics/Paint$Cap;
    .restart local v0    # "cap":Landroid/graphics/Paint$Cap;
    :cond_2
    const-string v2, "square"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_1
.end method

.method private loadShadersElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 114
    const-string v1, "StrokeShaders"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 115
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Lmiui/maml/shader/ShadersElement;

    invoke-direct {v1, v0, p2}, Lmiui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    .line 118
    :cond_0
    const-string v1, "FillShaders"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    new-instance v1, Lmiui/maml/shader/ShadersElement;

    invoke-direct {v1, v0, p2}, Lmiui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    .line 122
    :cond_1
    return-void
.end method

.method private resolveDashIntervals(Lorg/w3c/dom/Element;)[F
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "dashIntervals":[F
    const-string v6, "dash"

    invoke-virtual {p0, p1, v6}, Lmiui/maml/elements/GeometryScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "strDash":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v5

    .line 98
    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "intervals":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    array-length v6, v3

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    .line 100
    array-length v6, v3

    new-array v0, v6, [F

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 103
    :try_start_0
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move-object v5, v0

    .line 108
    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    invoke-virtual {v1}, Lmiui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    :goto_0
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 139
    :cond_1
    iget v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_3

    .line 140
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    invoke-virtual {v1}, Lmiui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 144
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    :goto_1
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 152
    :cond_3
    return-void

    .line 132
    :cond_4
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 146
    :cond_5
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mAlpha:I

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method protected doTick(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 179
    invoke-virtual {p0}, Lmiui/maml/elements/GeometryScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/GeometryScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .line 184
    .local v1, "vars":Lmiui/maml/data/Variables;
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v2, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 187
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v2, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 190
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lmiui/maml/shader/ShadersElement;

    invoke-virtual {v2}, Lmiui/maml/shader/ShadersElement;->updateShader()V

    .line 193
    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    if-eqz v2, :cond_5

    .line 194
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lmiui/maml/shader/ShadersElement;

    invoke-virtual {v2}, Lmiui/maml/shader/ShadersElement;->updateShader()V

    .line 196
    :cond_5
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeightExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_6

    .line 197
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeightExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/GeometryScreenElement;->scale(D)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 200
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 202
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v2, p0, Lmiui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
.end method
