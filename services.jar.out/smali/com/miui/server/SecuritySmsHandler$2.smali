.class Lcom/miui/server/SecuritySmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecuritySmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method constructor <init>(Lcom/miui/server/SecuritySmsHandler;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "action":Ljava/lang/String;
    const-string v7, "SecurityManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mResultReceiver sms dispatched, action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/miui/server/SecuritySmsHandler$2;->getResultCode()I

    move-result v5

    .line 257
    .local v5, "resultCode":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 258
    const-string v7, "SecurityManagerService"

    const-string v8, "mResultReceiver SMS_RECEIVED_ACTION no aborted"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 260
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 262
    aget-object v7, v4, v3

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_0
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "body":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->access$200(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 269
    iget-object v7, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/miui/server/SecuritySmsHandler;->access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 277
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v5    # "resultCode":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 271
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v5    # "resultCode":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v7, "blockType"

    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # getter for: Lcom/miui/server/SecuritySmsHandler;->mBlockType:I
    invoke-static {v8}, Lcom/miui/server/SecuritySmsHandler;->access$400(Lcom/miui/server/SecuritySmsHandler;)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    iget-object v7, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/miui/server/SecuritySmsHandler;->access$500(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 273
    const-string v7, "SecurityManagerService"

    const-string v8, "mResultReceiver dispatch SMS_DELIVER_ACTION to original Mms App"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
