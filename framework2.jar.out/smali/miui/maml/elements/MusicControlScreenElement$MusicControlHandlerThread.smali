.class Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;
.super Landroid/os/HandlerThread;
.source "MusicControlScreenElement.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicControlHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method static synthetic access$4900(Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerPause(Landroid/os/Message;)V

    return-void
.end method

.method private handleBroadcast(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 398
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateActivePlayerType()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 400
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    .line 404
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    move-result-object v4

    sget-object v5, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-ne v4, v5, :cond_0

    .line 444
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.miui.player.metachanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 410
    const-string v4, "other"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "extra":Ljava/lang/String;
    const-string v4, "meta_changed_track"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 414
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 418
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 420
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 443
    .end local v2    # "extra":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v5, "playing"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V
    invoke-static {v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    goto :goto_0

    .line 421
    .restart local v2    # "extra":Ljava/lang/String;
    :cond_3
    const-string v4, "meta_changed_album"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 422
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_1

    .line 423
    :cond_4
    const-string v4, "meta_changed_lyric"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 424
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_1

    .line 425
    :cond_5
    const-string v4, "meta_changed_buffer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_1

    .line 429
    .end local v2    # "extra":Ljava/lang/String;
    :cond_6
    const-string v4, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 430
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_1

    .line 431
    :cond_7
    const-string v4, "com.miui.player.refreshprogress"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 432
    const-string v4, "blocking"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 433
    .local v1, "blocking":Z
    if-eqz v1, :cond_8

    .line 434
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;
    invoke-static {v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 436
    :cond_8
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateMusicProgress(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_1

    .line 438
    .end local v1    # "blocking":Z
    :cond_9
    const-string v4, "com.miui.player.playstatechanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 440
    const-string v4, "com.miui.player.responselyric"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$800(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private handleInit(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 447
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateActivePlayerType()V
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 449
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->isMusicPlaying()Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v2

    .line 450
    .local v2, "playing":Z
    if-eqz v2, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->show(Z)V

    .line 453
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(ZZ)V
    invoke-static {v4, v2, v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$1400(Lmiui/maml/elements/MusicControlScreenElement;ZZ)V

    .line 456
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 457
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "songName"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "artistName"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "artist":Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMiuiPlayerPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "albumName"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "album":Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v5, "/data/data/com.miui.player/files/ablum.jpg"

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v1, v0, v5}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "artist":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v6}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerResume(Landroid/os/Message;)V

    .line 465
    invoke-direct {p0, v6}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerPause(Landroid/os/Message;)V

    .line 466
    return-void
.end method

.method private handleInnerPause(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 493
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2400(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 494
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    move-result-object v0

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mUpdateMusicProgress:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 500
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    :cond_2
    return-void
.end method

.method private handleInnerResume(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1700(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 470
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateActivePlayerType()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 471
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mPlayerType:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    move-result-object v0

    sget-object v1, Lmiui/maml/elements/MusicControlScreenElement$PlayerType;->THIRDPART:Lmiui/maml/elements/MusicControlScreenElement$PlayerType;

    if-eq v0, v1, :cond_4

    .line 472
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1800(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->requestLyric()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$1900(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->requestProgress()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2000(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 483
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 486
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsSystemPlayer:Z
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCheckMusicStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    :cond_3
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->isMusicPlaying()Z
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1200(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V
    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    .line 490
    return-void

    .line 479
    :cond_4
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v2, v2, v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1600(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 481
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    # invokes: Lmiui/maml/elements/MusicControlScreenElement;->resetMusicProgress()V
    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 394
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 383
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleBroadcast(Landroid/os/Message;)V

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInit(Landroid/os/Message;)V

    goto :goto_0

    .line 389
    :pswitch_2
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerResume(Landroid/os/Message;)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$MusicControlHandlerThread;->handleInnerPause(Landroid/os/Message;)V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
