.class public Lmiui/maml/ImmVibrateManager;
.super Ljava/lang/Object;
.source "ImmVibrateManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImmVibrateManager"


# instance fields
.field private mContext:Lmiui/maml/ScreenContext;

.field private mDevice:Lcom/immersion/Device;

.field private mIvtBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/immersion/IVTBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 1
    .param p1, "c"    # Lmiui/maml/ScreenContext;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    .line 25
    iput-object p1, p0, Lmiui/maml/ImmVibrateManager;->mContext:Lmiui/maml/ScreenContext;

    .line 26
    return-void
.end method

.method private loadIvtBuffer(Ljava/io/InputStream;)Lcom/immersion/IVTBuffer;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v5

    .line 93
    :cond_1
    const/16 v0, 0x400

    .line 94
    .local v0, "COUNT":I
    const/16 v6, 0x400

    :try_start_0
    new-array v1, v6, [B

    .line 95
    .local v1, "buff":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v4, -0x1

    .line 97
    .local v4, "read":I
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 103
    .end local v1    # "buff":[B
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "ImmVibrateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to load IVT buffer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz p1, :cond_0

    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v6

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buff":[B
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 106
    if-eqz p1, :cond_0

    .line 108
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 109
    :catch_2
    move-exception v6

    goto :goto_0

    .line 102
    :cond_3
    :try_start_5
    new-instance v6, Lcom/immersion/IVTBuffer;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    if-eqz p1, :cond_4

    .line 108
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    move-object v5, v6

    .line 110
    goto :goto_0

    .line 106
    .end local v1    # "buff":[B
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    :catchall_0
    move-exception v5

    if-eqz p1, :cond_5

    .line 108
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 110
    :cond_5
    :goto_3
    throw v5

    .line 109
    .restart local v1    # "buff":[B
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    :catch_3
    move-exception v5

    goto :goto_2

    .end local v1    # "buff":[B
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    :catch_4
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->close()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    .line 38
    :cond_0
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    .line 30
    iget-object v0, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, v1, v1}, Lcom/immersion/Device;->setPropertyInt32(II)V

    .line 31
    return-void
.end method

.method public playIvtEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "ivtFile"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ImmVibrateManager;->playIvtEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public playIvtEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ivtFile"    # Ljava/lang/String;
    .param p2, "effectName"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/immersion/IVTBuffer;

    .line 51
    .local v0, "buf":Lcom/immersion/IVTBuffer;
    if-nez v0, :cond_2

    .line 52
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v2, p1}, Lmiui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/maml/ImmVibrateManager;->loadIvtBuffer(Ljava/io/InputStream;)Lcom/immersion/IVTBuffer;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    const-string v2, "ImmVibrateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to load IVT resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lmiui/maml/ImmVibrateManager;->mIvtBuffers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ImmVibrateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to play IVT effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1
.end method

.method public playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 4
    .param p1, "d"    # Lcom/immersion/MagSweepEffectDefinition;

    .prologue
    .line 78
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1, p1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ImmVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to play MagSweepEffectDefinition. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 4
    .param p1, "d"    # Lcom/immersion/PeriodicEffectDefinition;

    .prologue
    .line 67
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ImmVibrateManager;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1, p1}, Lcom/immersion/Device;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ImmVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to play PeriodicEffectDefinition. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
