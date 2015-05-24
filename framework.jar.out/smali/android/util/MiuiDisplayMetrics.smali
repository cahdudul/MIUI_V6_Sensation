.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static final DENSITY_NXHGITH:I = 0x1b8

.field public static final PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density"

.field public static final PROP_MIUI_OVERY_DENSITY:Ljava/lang/String; = "persist.miui.overlay_density"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNxhdpiDensity()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x1b8

    return v0
.end method

.method public static final setDensityByResolution(I)Z
    .locals 4
    .param p0, "resolution"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-boolean v2, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v2, :cond_0

    .line 37
    const/16 v2, 0x438

    if-ne p0, v2, :cond_2

    .line 38
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "persist.miui.overlay_density"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const/16 v0, 0x1b8

    .line 48
    .local v0, "density":I
    :goto_0
    const-string/jumbo v2, "persist.miui.density"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v2, "persist.miui.overlay_density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 51
    .end local v0    # "density":I
    :cond_0
    return v1

    .line 41
    :cond_1
    const/16 v0, 0x1e0

    .restart local v0    # "density":I
    goto :goto_0

    .line 43
    .end local v0    # "density":I
    :cond_2
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_0

    .line 44
    const/16 v0, 0x140

    .restart local v0    # "density":I
    goto :goto_0
.end method

.method public static final setOverlayDensityStatus(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 22
    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_2

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const-string/jumbo v0, "persist.miui.overlay_density"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.miui.overlay_density"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 31
    :goto_1
    return v0

    .line 26
    :cond_0
    const-string/jumbo v0, "persist.miui.overlay_density"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "false"

    const-string/jumbo v1, "persist.miui.overlay_density"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 31
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
