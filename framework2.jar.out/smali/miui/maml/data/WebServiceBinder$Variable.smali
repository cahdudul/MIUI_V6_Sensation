.class public Lmiui/maml/data/WebServiceBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private mCache:Z

.field public mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 133
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 137
    :cond_0
    const-string v0, "cache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    .line 138
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder$Variable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final getCacheName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 188
    iget v4, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v2, 0x0

    .line 192
    .local v2, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 194
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 201
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 204
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->setValue(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v4, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 198
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_3
    const-string v4, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    :goto_4
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 198
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 196
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public saveCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "response"    # Ljava/io/InputStream;
    .param p2, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p2}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    invoke-static {p2}, Landroid/miui/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 151
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 155
    if-eqz p1, :cond_1

    .line 156
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 157
    .local v4, "fo":Ljava/io/FileOutputStream;
    const/high16 v0, 0x10000

    .line 158
    .local v0, "COUNT":I
    const/high16 v6, 0x10000

    new-array v1, v6, [B

    .line 159
    .local v1, "buff":[B
    const/4 v5, -0x1

    .line 160
    .local v5, "read":I
    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x10000

    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_2

    .line 161
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 166
    .end local v0    # "COUNT":I
    .end local v1    # "buff":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v6, "WebServiceBinder"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 163
    .restart local v0    # "COUNT":I
    .restart local v1    # "buff":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fo":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :cond_2
    :try_start_1
    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 169
    .end local v0    # "COUNT":I
    .end local v1    # "buff":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    :catch_1
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "WebServiceBinder"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "WebServiceBinder"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method
