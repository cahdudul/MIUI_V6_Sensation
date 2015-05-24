.class Lmiui/view/VolumePanel$5;
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
    .line 1004
    iput-object p1, p0, Lmiui/view/VolumePanel$5;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1007
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1008
    .local v0, "value":F
    iget-object v1, p0, Lmiui/view/VolumePanel$5;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/CircleProgressView;->setScaleX(F)V

    .line 1009
    iget-object v1, p0, Lmiui/view/VolumePanel$5;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/CircleProgressView;->setScaleY(F)V

    .line 1010
    return-void
.end method
