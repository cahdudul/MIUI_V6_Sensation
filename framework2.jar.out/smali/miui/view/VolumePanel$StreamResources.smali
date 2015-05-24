.class Lmiui/view/VolumePanel$StreamResources;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamResources"
.end annotation


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "descRes"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    .line 165
    iput p2, p0, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    .line 166
    iput p3, p0, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 167
    return-void
.end method
