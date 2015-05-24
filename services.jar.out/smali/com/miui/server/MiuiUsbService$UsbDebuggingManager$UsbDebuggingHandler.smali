.class Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field private static final MESSAGE_ADB_ALLOW:I = 0x3

.field private static final MESSAGE_ADB_CONFIRM:I = 0x5

.field private static final MESSAGE_ADB_DENY:I = 0x4

.field private static final MESSAGE_ADB_DISABLED:I = 0x2

.field private static final MESSAGE_ADB_ENABLED:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .line 207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$300(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # setter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$302(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Z)Z

    .line 218
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$402(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 219
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$400(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$300(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    const/4 v3, 0x0

    # setter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mAdbEnabled:Z
    invoke-static {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$302(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Z)Z

    .line 228
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    invoke-virtual {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->closeSocket()V

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$400(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # setter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mThread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$402(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 236
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    iput-object v4, v2, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    .line 237
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    iput-object v4, v2, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # invokes: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$500(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "fingerprints":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$600(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    const-string v2, "MiuiUsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprints do not match. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$600(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    .line 251
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # invokes: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->writeKey(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$700(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)V

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "fingerprints":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    const-string v3, "NO"

    invoke-virtual {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 264
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    iget-object v3, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # invokes: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$500(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$602(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    iget-object v3, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$UsbDebuggingHandler;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    # getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mFingerprints:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$600(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$800(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
