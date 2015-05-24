.class Lmiui/view/VolumePanel$2;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumePanel;->createVolumePanel()V
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
    .line 340
    iput-object p1, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    # getter for: Lmiui/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lmiui/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    # invokes: Lmiui/view/VolumePanel;->forceTimeout()V
    invoke-static {v1}, Lmiui/view/VolumePanel;->access$200(Lmiui/view/VolumePanel;)V

    .line 351
    :goto_0
    return v0

    .line 348
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v1, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 349
    iget-object v1, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    iget-object v2, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    invoke-virtual {v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 350
    iget-object v0, p0, Lmiui/view/VolumePanel$2;->this$0:Lmiui/view/VolumePanel;

    # invokes: Lmiui/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lmiui/view/VolumePanel;->access$300(Lmiui/view/VolumePanel;)V

    .line 351
    const/4 v0, 0x0

    goto :goto_0
.end method
