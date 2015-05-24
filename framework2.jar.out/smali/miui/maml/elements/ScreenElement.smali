.class public abstract Lmiui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElement$1;,
        Lmiui/maml/elements/ScreenElement$ProxyListener;,
        Lmiui/maml/elements/ScreenElement$Align;,
        Lmiui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mAlign:Lmiui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

.field protected mAvailableController:Lmiui/maml/RendererController;

.field protected mCategory:Ljava/lang/String;

.field protected mController:Lmiui/maml/RendererController;

.field private mCurFramerate:F

.field protected mFrameRate:F

.field private mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mNode:Lorg/w3c/dom/Element;

.field protected mParent:Lmiui/maml/elements/ElementGroup;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mShow:Z

.field protected mStyle:Lmiui/maml/StylesManager$Style;

.field private mVisibilityExpression:Lmiui/maml/data/Expression;

.field private mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 55
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 68
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 126
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mNode:Lorg/w3c/dom/Element;

    .line 127
    iput-object p2, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 128
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 129
    const-string v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 132
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v2, "category"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 139
    const-string v2, "name"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    .line 141
    const-string v2, "visibility"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "vis":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    iput-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 151
    :cond_2
    :goto_2
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 152
    const-string v2, "align"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "align":Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 161
    :cond_3
    :goto_3
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 162
    const-string v2, "alignV"

    invoke-virtual {p0, p1, v2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 164
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 172
    :cond_4
    :goto_4
    const-string v2, "frameRate"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/ScreenElement;->mFrameRate:F

    iput v2, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 173
    iget v2, p0, Lmiui/maml/elements/ScreenElement;->mFrameRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->onCreateRendererController()Lmiui/maml/RendererController;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    goto :goto_0

    .end local v0    # "align":Ljava/lang/String;
    .end local v1    # "vis":Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 140
    goto :goto_1

    .line 145
    .restart local v1    # "vis":Ljava/lang/String;
    :cond_6
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_2

    .line 148
    :cond_7
    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    goto :goto_2

    .line 155
    .restart local v0    # "align":Ljava/lang/String;
    :cond_8
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_3

    .line 157
    :cond_9
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_3

    .line 165
    :cond_a
    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 166
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_4

    .line 167
    :cond_b
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_4
.end method

.method private setVisibilityVar(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 284
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "visibility"

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 288
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 290
    :cond_1
    return-void

    .line 288
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 495
    invoke-interface {p1, p0}, Lmiui/maml/elements/ScreenElementVisitor;->visit(Lmiui/maml/elements/ScreenElement;)V

    .line 496
    return-void
.end method

.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 438
    .local v0, "c":Lmiui/maml/RendererController;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v1

    goto :goto_0
.end method

.method protected final descale(F)F
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 459
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method protected abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected doTick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 351
    return-void
.end method

.method protected final evaluate(Lmiui/maml/data/Expression;)D
    .locals 2
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 509
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected final evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;
    .locals 1
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 505
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lmiui/maml/elements/ScreenElement;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {p1, p2, v0}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # F

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 202
    .end local p3    # "def":F
    :goto_0
    return p3

    .line 201
    .restart local p3    # "def":F
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 186
    .end local p3    # "def":I
    :goto_0
    return p3

    .line 185
    .restart local p3    # "def":I
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # J

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 194
    .end local p3    # "def":J
    :goto_0
    return-wide p3

    .line 193
    .restart local p3    # "def":J
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getFramerate()F
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_0
.end method

.method protected getLeft(FF)F
    .locals 3
    .param p1, "pos"    # F
    .param p2, "width"    # F

    .prologue
    .line 416
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 427
    .end local p1    # "pos":F
    :goto_0
    return p1

    .line 418
    .restart local p1    # "pos":F
    :cond_0
    move v0, p1

    .line 419
    .local v0, "x":F
    sget-object v1, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 427
    goto :goto_0

    .line 421
    :pswitch_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 422
    goto :goto_1

    .line 424
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNotifierManager()Lmiui/maml/NotifierManager;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmiui/maml/elements/ElementGroup;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mAvailableController:Lmiui/maml/RendererController;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    :goto_0
    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mAvailableController:Lmiui/maml/RendererController;

    .line 486
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mAvailableController:Lmiui/maml/RendererController;

    return-object v0

    .line 483
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public final getSelfRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 3
    .param p1, "pos"    # F
    .param p2, "height"    # F

    .prologue
    .line 401
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 412
    .end local p1    # "pos":F
    :goto_0
    return p1

    .line 403
    .restart local p1    # "pos":F
    :cond_0
    move v0, p1

    .line 404
    .local v0, "y":F
    sget-object v1, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 412
    goto :goto_0

    .line 406
    :pswitch_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 407
    goto :goto_1

    .line 409
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 253
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_0

    .line 254
    iget v0, p0, Lmiui/maml/elements/ScreenElement;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 257
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 258
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .prologue
    .line 354
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method protected onCreateRendererController()Lmiui/maml/RendererController;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lmiui/maml/RendererController;

    invoke-direct {v0}, Lmiui/maml/RendererController;-><init>()V

    .line 208
    .local v0, "c":Lmiui/maml/RendererController;
    new-instance v1, Lmiui/maml/elements/ScreenElement$ProxyListener;

    invoke-direct {v1, p0, v0}, Lmiui/maml/elements/ScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/RendererController;)V

    .line 209
    .local v1, "l":Lmiui/maml/elements/ScreenElement$ProxyListener;
    invoke-virtual {v0, v1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 210
    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 211
    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 274
    if-nez p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public final pauseAnim()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 317
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 318
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 319
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 322
    return-void
.end method

.method public final playAnim()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 303
    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    .line 304
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public final playAnim(JJZZ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "isLoop"    # Z
    .param p6, "isDelay"    # Z

    .prologue
    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .local v1, "elapsedRealtime":J
    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move v8, p6

    .line 308
    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 309
    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 310
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 499
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 500
    .local v0, "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    .line 502
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 362
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 363
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final requestFramerate(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/4 v1, 0x0

    .line 467
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_2

    .line 472
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 476
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 432
    .local v0, "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 434
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 336
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 338
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 339
    return-void
.end method

.method public reset(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 342
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 297
    return-void
.end method

.method public final resumeAnim()V
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 326
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 327
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 328
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 331
    return-void
.end method

.method protected final scale(D)F
    .locals 2
    .param p1, "v"    # D

    .prologue
    .line 455
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .locals 4
    .param p1, "value"    # D

    .prologue
    .line 390
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_h"

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 396
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method protected setActualWidth(D)V
    .locals 4
    .param p1, "value"    # D

    .prologue
    .line 380
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_w"

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 386
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setParent(Lmiui/maml/elements/ElementGroup;)V
    .locals 0
    .param p1, "parent"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    .line 242
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    .line 243
    return-void
.end method

.method public show(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 216
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 217
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 218
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, p2}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mController:Lmiui/maml/RendererController;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 348
    :cond_0
    return-void
.end method

.method public updateVisibility()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 263
    .local v0, "v":Z
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 264
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 265
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 270
    :cond_0
    return-void
.end method
