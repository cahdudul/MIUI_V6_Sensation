.class public Lmiui/maml/elements/CurveScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CurveScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/VariableArrayElement$VarObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/CurveScreenElement$BezierCurve;,
        Lmiui/maml/elements/CurveScreenElement$DataInfo;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Curve"


# instance fields
.field private mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

.field private mClose:Z

.field private mControlPoints:[F

.field private mCurvature:F

.field private mCurveChanged:Z

.field private mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

.field private mDataValid:Z

.field private mDynamic:Z

.field private mDynamicExp:Lmiui/maml/data/Expression;

.field private mForceUpdate:Z

.field private mLoaded:Z

.field private mNode:Lorg/w3c/dom/Element;

.field private mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

.field private mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    .line 80
    new-instance v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    invoke-direct {v0, p0}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;-><init>(Lmiui/maml/elements/CurveScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    .line 88
    iput-object p1, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    .line 89
    return-void
.end method

.method private buildData(Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 147
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-direct {v0, p0}, Lmiui/maml/elements/CurveScreenElement$DataInfo;-><init>(Lmiui/maml/elements/CurveScreenElement;)V

    .line 137
    .local v0, "info":Lmiui/maml/elements/CurveScreenElement$DataInfo;
    const-string v3, "##"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 139
    .local v1, "varArray":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v3, :cond_1

    .line 140
    check-cast v1, Lmiui/maml/elements/VariableArrayElement;

    .end local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    iput-object v1, v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    goto :goto_0

    .restart local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    :cond_1
    move-object v0, v2

    .line 142
    goto :goto_0

    .line 145
    .end local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    :cond_2
    invoke-static {p1}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    goto :goto_0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 190
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 195
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 197
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v10

    if-ne v9, v10, :cond_6

    :cond_4
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    .line 199
    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    if-eqz v9, :cond_0

    .line 203
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_7

    .line 205
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints(Lmiui/maml/data/Variables;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    .line 216
    :cond_5
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 217
    .local v1, "x0":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 218
    .local v5, "y0":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x2

    iget-object v11, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 219
    .local v2, "x1":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x3

    iget-object v11, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 220
    .local v6, "y1":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 221
    .local v4, "xn":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 222
    .local v8, "yn":F
    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mClose:Z

    if-eqz v9, :cond_8

    .line 223
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 224
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 225
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_2
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget v11, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    invoke-virtual {v9, v10, v11}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->computeControlPoints(Ljava/util/ArrayList;F)[F

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    .line 237
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    goto/16 :goto_0

    .line 197
    .end local v1    # "x0":F
    .end local v2    # "x1":F
    .end local v4    # "xn":F
    .end local v5    # "y0":F
    .end local v6    # "y1":F
    .end local v8    # "yn":F
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 207
    :cond_7
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints(Lmiui/maml/data/Variables;)Ljava/util/ArrayList;

    move-result-object v3

    .line 208
    .local v3, "xArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v9, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints(Lmiui/maml/data/Variables;)Ljava/util/ArrayList;

    move-result-object v7

    .line 209
    .local v7, "yArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 211
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 230
    .end local v0    # "i":I
    .end local v3    # "xArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v7    # "yArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v1    # "x0":F
    .restart local v2    # "x1":F
    .restart local v4    # "xn":F
    .restart local v5    # "y0":F
    .restart local v6    # "y1":F
    .restart local v8    # "yn":F
    :cond_8
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 232
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->finish()V

    .line 153
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 159
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    goto :goto_0
.end method

.method public init()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 93
    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->init()V

    .line 95
    iget-boolean v6, p0, Lmiui/maml/elements/CurveScreenElement;->mLoaded:Z

    if-nez v6, :cond_0

    .line 96
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v7, "data"

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "data":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v7, "xdata"

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "xdata":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v7, "ydata"

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "ydata":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v0, v6}, Lmiui/maml/elements/CurveScreenElement;->buildData(Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    .line 105
    :goto_0
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v7, "close"

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmiui/maml/elements/CurveScreenElement;->mClose:Z

    .line 106
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v7, "curvature"

    const v8, 0x3f333333    # 0.7f

    invoke-virtual {p0, v6, v7, v8}, Lmiui/maml/elements/CurveScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v6

    iput v6, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    .line 107
    iget v6, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    :goto_1
    iput v4, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    .line 108
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v5, "dynamic"

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "dynamicStr":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    .line 116
    :goto_2
    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mLoaded:Z

    .line 119
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "dynamicStr":Ljava/lang/String;
    .end local v2    # "xdata":Ljava/lang/String;
    .end local v3    # "ydata":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v4, :cond_7

    .line 120
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v4, v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 129
    :cond_1
    :goto_3
    return-void

    .line 102
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "xdata":Ljava/lang/String;
    .restart local v3    # "ydata":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v2, v6}, Lmiui/maml/elements/CurveScreenElement;->buildData(Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    .line 103
    iget-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v3, v6}, Lmiui/maml/elements/CurveScreenElement;->buildData(Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    goto :goto_0

    .line 107
    :cond_3
    iget v4, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    iget v4, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    goto :goto_1

    .line 111
    .restart local v1    # "dynamicStr":Ljava/lang/String;
    :cond_5
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    goto :goto_2

    .line 114
    :cond_6
    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    goto :goto_2

    .line 122
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "dynamicStr":Ljava/lang/String;
    .end local v2    # "xdata":Ljava/lang/String;
    .end local v3    # "ydata":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v4, :cond_8

    .line 123
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v4, v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 125
    :cond_8
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v4, v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    goto :goto_3
.end method

.method public onDataChange([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 168
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->requestUpdate()V

    .line 169
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    .line 178
    iget-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    iget-object v1, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    iget-object v3, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->inflateBezierPath(Ljava/util/ArrayList;[FLandroid/graphics/Path;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    .line 183
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/maml/elements/CurveScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 173
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->requestUpdate()V

    .line 174
    return-void
.end method
