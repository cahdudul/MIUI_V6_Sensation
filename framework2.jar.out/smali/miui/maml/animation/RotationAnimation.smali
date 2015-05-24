.class public Lmiui/maml/animation/RotationAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# instance fields
.field private mCurrentAngle:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 16
    const-string v0, "Rotation"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final getAngle()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lmiui/maml/animation/RotationAnimation;->mCurrentAngle:F

    return v0
.end method

.method protected onCreateItem()Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "angle"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/maml/animation/RotationAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-direct {v0, v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 6
    .param p1, "item1"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p2, "item2"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p3, "ratio"    # F

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v2, 0x0

    iput v2, p0, Lmiui/maml/animation/RotationAnimation;->mCurrentAngle:F

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 39
    .local v0, "a1":D
    :goto_1
    invoke-virtual {p2, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    sub-double/2addr v2, v0

    float-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p0, Lmiui/maml/animation/RotationAnimation;->mCurrentAngle:F

    goto :goto_0

    .line 38
    .end local v0    # "a1":D
    :cond_1
    invoke-virtual {p1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_1
.end method
