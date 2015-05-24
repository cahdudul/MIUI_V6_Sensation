.class public Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
