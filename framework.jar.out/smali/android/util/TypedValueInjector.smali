.class Landroid/util/TypedValueInjector;
.super Ljava/lang/Object;
.source "TypedValueInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static miuiScale(FLandroid/util/DisplayMetrics;)F
    .locals 5
    .param p0, "value"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 5
    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 6
    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, p0

    .line 16
    :goto_0
    return v2

    .line 8
    :cond_0
    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v3

    .line 9
    .local v1, "scaleFactor":F
    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    div-float v0, v2, v3

    .line 11
    .local v0, "bigValueBase":F
    cmpl-float v2, p0, v0

    if-lez v2, :cond_1

    .line 13
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p0

    iget v3, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v4, p1, Landroid/util/DisplayMetrics;->density:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    goto :goto_0

    .line 16
    :cond_1
    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, p0

    goto :goto_0
.end method
