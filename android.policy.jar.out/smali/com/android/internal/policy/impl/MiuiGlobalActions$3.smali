.class Lcom/android/internal/policy/impl/MiuiGlobalActions$3;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRotation:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :cond_0
    return-void
.end method
