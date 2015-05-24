.class public Lmiui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field public mAcceleation:D

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lmiui/maml/data/Expression;

.field public mEaseExp:Lmiui/maml/data/Expression;

.field public mExps:[Lmiui/maml/data/Expression;

.field public mHasAcceleation:Z

.field public mHasSpeed:Z

.field public mHasTime:Z

.field public mInitAcceleation:D

.field public mInitSpeed:D

.field public mInitTime:J

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field private mNeedEvaluate:Z

.field private mScreenElement:Lmiui/maml/elements/ScreenElement;

.field public mSpeed:D

.field public mTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "attrs"    # [Ljava/lang/String;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 49
    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 51
    return-void
.end method

.method private reevaluate()V
    .locals 9

    .prologue
    .line 101
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-nez v6, :cond_1

    .line 108
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v2, 0x0

    .line 105
    .local v2, "i":I
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    .local v0, "arr$":[Lmiui/maml/data/Expression;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 106
    .local v1, "e":Lmiui/maml/data/Expression;
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-nez v1, :cond_2

    const-wide/16 v6, 0x0

    :goto_1
    aput-wide v6, v8, v3

    .line 105
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 106
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-virtual {v1, v6}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v6

    goto :goto_1
.end method


# virtual methods
.method public get(I)D
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 55
    :cond_0
    const-string v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-wide/16 v0, 0x0

    .line 62
    :goto_0
    return-wide v0

    .line 58
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 62
    :cond_2
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method public getDistance(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 10
    .param p1, "dest"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v4, v4

    iget-object v5, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v5, v5

    if-eq v4, v5, :cond_1

    .line 112
    :cond_0
    const-wide/16 v4, 0x0

    .line 119
    :goto_0
    return-wide v4

    .line 114
    :cond_1
    const-wide/16 v1, 0x0

    .line 115
    .local v1, "dist":D
    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v4

    .line 116
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 117
    invoke-virtual {p1, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v6

    invoke-virtual {p0, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 66
    const-string v6, "easeType"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    const-string v6, "easeExp"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mEaseExp:Lmiui/maml/data/Expression;

    .line 69
    :try_start_0
    const-string v6, "time"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 70
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasTime:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :goto_0
    :try_start_1
    const-string v6, "acc"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 75
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasAcceleation:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    :try_start_2
    const-string v6, "speed"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 80
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mHasSpeed:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :goto_2
    const-string v6, "dtime"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    .line 85
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Lmiui/maml/data/Expression;

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 89
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    aput-object v7, v6, v2

    .line 88
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 91
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [D

    iput-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 94
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 95
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitSpeed:D

    .line 96
    iget-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    iput-wide v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitAcceleation:D

    .line 97
    return-object p0

    .line 81
    :catch_0
    move-exception v6

    goto :goto_2

    .line 76
    :catch_1
    move-exception v6

    goto :goto_1

    .line 71
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 124
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 125
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitSpeed:D

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mSpeed:D

    .line 126
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitAcceleation:D

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAcceleation:D

    .line 127
    return-void
.end method
