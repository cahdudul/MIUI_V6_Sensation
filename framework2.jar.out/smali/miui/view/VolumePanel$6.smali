.class Lmiui/view/VolumePanel$6;
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
    .line 1038
    iput-object p1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 1041
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1042
    .local v0, "value":F
    iget-object v1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$600(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1043
    iget-object v1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;

    move-result-object v1

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Lmiui/widget/CircleProgressView;->setTranslationX(F)V

    .line 1044
    iget-object v1, p0, Lmiui/view/VolumePanel$6;->this$0:Lmiui/view/VolumePanel;

    # getter for: Lmiui/view/VolumePanel;->mVolumeProgress:Lmiui/widget/CircleProgressView;
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$500(Lmiui/view/VolumePanel;)Lmiui/widget/CircleProgressView;

    move-result-object v1

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Lmiui/widget/CircleProgressView;->setTranslationY(F)V

    .line 1045
    return-void
.end method
