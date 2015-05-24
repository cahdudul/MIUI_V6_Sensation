.class public Lmiui/maml/util/ZipResourceLoader;
.super Lmiui/maml/ResourceLoader;
.source "ZipResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mResourcePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zipPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "innerPath"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipPath"    # Ljava/lang/String;
    .param p2, "innerPath"    # Ljava/lang/String;
    .param p3, "manifestName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/maml/ResourceLoader;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty zip path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 46
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "innerPath":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    .line 47
    if-eqz p3, :cond_2

    .line 48
    iput-object p3, p0, Lmiui/maml/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    .line 49
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/util/ZipResourceLoader;->init()V

    .line 50
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    iget-object v0, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    .line 98
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/maml/util/ZipResourceLoader;->close()V

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lmiui/maml/util/ZipResourceLoader;->close()V

    .line 119
    invoke-super {p0}, Lmiui/maml/ResourceLoader;->finish()V

    .line 120
    return-void
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 67
    :cond_1
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v3, :cond_4

    .line 69
    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 70
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_2

    .line 71
    monitor-exit v2

    goto :goto_0

    .line 79
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz p2, :cond_3

    .line 74
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    aput-wide v4, p2, v3

    .line 75
    :cond_3
    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 79
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Lmiui/maml/ResourceLoader;->init()V

    .line 104
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_0

    .line 105
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 114
    :cond_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    const-string v1, "ZipResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to init zip file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 58
    :cond_3
    :try_start_1
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method
