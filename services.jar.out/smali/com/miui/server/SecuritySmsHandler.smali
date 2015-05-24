.class Lcom/miui/server/SecuritySmsHandler;
.super Ljava/lang/Object;
.source "SecuritySmsHandler.java"


# instance fields
.field private mBlockType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInterceptSmsCallerPkgName:Ljava/lang/String;

.field private mInterceptSmsCallerUid:I

.field private mInterceptSmsCount:I

.field private mInterceptSmsLock:Ljava/lang/Object;

.field private mInterceptSmsSenderNum:Ljava/lang/String;

.field private mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 35
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 38
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$1;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$2;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecuritySmsHandler;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SecuritySmsHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    return-void
.end method

.method private checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    .line 162
    iget v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkWithInterceptedSender(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "result":Z
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    const-string v1, "SecurityManagerService"

    const-string v3, "checkWithInterceptedSender: callerUid:%d, senderNum:%s, count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-lez v1, :cond_0

    .line 148
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_0
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-nez v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 155
    :cond_1
    monitor-exit v2

    .line 156
    return v0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 180
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method private dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 177
    return-void
.end method

.method private dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchMmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "com.jeejen.family.miui.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :goto_0
    const-string v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 214
    return-void

    .line 211
    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dispatchNormalSms(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 217
    const-string v1, "SecurityManagerService"

    const-string v2, "dispatchNormalSms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 223
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    const-string v1, "SecurityManagerService"

    const-string v2, "Delivering SMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 231
    return-void
.end method

.method private dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchSmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "com.jeejen.family.miui"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_0
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 202
    return-void

    .line 199
    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dispatchToInterceptApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchToInterceptApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method private releaseSmsIntercept()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 167
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 169
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 170
    return-void
.end method


# virtual methods
.method checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v13, "SecurityManagerService"

    const-string v14, "enter checkSmsBlocked"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v3, 0x0

    .line 52
    .local v3, "blocked":Z
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-ge v13, v14, :cond_0

    move v4, v3

    .line 100
    .end local v3    # "blocked":Z
    .local v4, "blocked":I
    :goto_0
    return v4

    .line 56
    .end local v4    # "blocked":I
    .restart local v3    # "blocked":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "action":Ljava/lang/String;
    const-string v13, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 59
    .local v8, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v13, v8

    if-ge v7, v13, :cond_1

    .line 61
    aget-object v13, v8, v7

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 64
    :cond_1
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/server/SecuritySmsHandler;->checkWithInterceptedSender(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 68
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted by sender address"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchToInterceptApp(Landroid/content/Intent;)V

    .line 70
    const/4 v3, 0x1

    .line 73
    :cond_2
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 74
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted by AntiSpam"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v13, "blockType"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    .line 77
    const/4 v3, 0x1

    .line 99
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "body":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v13, "SecurityManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "leave checkSmsBlocked, blocked:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 100
    .restart local v4    # "blocked":I
    goto/16 :goto_0

    .line 80
    .end local v4    # "blocked":I
    :cond_4
    const-string v13, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 83
    :try_start_0
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 84
    .local v11, "pushData":[B
    new-instance v9, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v9, v11}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 85
    .local v9, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    .line 86
    .local v10, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "address":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 89
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted wap push by AntiSpam"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v13, "blockType"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v3, 0x1

    goto :goto_2

    .line 94
    .end local v2    # "address":Ljava/lang/String;
    .end local v9    # "parser":Lcom/google/android/mms/pdu/PduParser;
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "pushData":[B
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 119
    :goto_0
    return v1

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v4, "SecurityManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 110
    .local v0, "callerUid":I
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v3, :cond_1

    .line 112
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 113
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 116
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method stopInterceptSmsBySender()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 138
    :goto_0
    return v1

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v5, "SecurityManagerService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 129
    .local v0, "callerUid":I
    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v4, :cond_1

    .line 131
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 133
    :cond_1
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-ne v4, v0, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 135
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 137
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
