.class public Lmiui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .locals 3
    .param p1, "keepCur"    # Z
    .param p2, "loop"    # Z
    .param p3, "volume"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 50
    iput-boolean p2, p0, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    .line 51
    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    .line 52
    iput v1, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 54
    iput v2, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    .line 56
    :cond_1
    iput p3, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0
.end method
