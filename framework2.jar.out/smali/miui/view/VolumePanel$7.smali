.class Lmiui/view/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->prepareAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumePanel;


# direct methods
.method constructor <init>(Lmiui/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lmiui/view/VolumePanel$7;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1055
    iget-object v0, p0, Lmiui/view/VolumePanel$7;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/widget/CircleProgressView;->setProgress(I)V

    .line 1056
    return-void
.end method
