.class public Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "SineEaseInOutInterpolater.java"

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
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 8
    const/high16 v0, -0x41000000    # -0.5f

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    float-to-double v3, p1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
