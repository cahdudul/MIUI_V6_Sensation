.class Lmiui/maml/elements/MusicControlScreenElement$2;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 510
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$2500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 511
    .local v0, "playing":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$2600(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->isMusicPlaying()Z
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    .line 515
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V
    invoke-static {v1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    .line 516
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    :cond_1
    return-void
.end method
