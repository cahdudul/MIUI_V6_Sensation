.class Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    monitor-enter v1

    .line 68
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    monitor-exit v1

    .line 87
    return-void

    .line 70
    :pswitch_0
    const-string v0, "MiuiScreenOnProximityLock"

    const-string v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->prepareHintWindow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$100(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->releaseHintWindow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$200(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->showHint()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$300(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
