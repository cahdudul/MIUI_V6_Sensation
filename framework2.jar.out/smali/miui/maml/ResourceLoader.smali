.class public abstract Lmiui/maml/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field private static final EVENT_GETBITMAPINFO:Ljava/lang/String; = "getBitmapInfo"

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"

.field private static final PARAM_RETRY_METHOD:Ljava/lang/String; = "retry_method"

.field private static final PARAM_RETRY_RESULT:Ljava/lang/String; = "retry_result"

.field private static final PARAM_SRC:Ljava/lang/String; = "src"

.field private static final PARAM_THEME:Ljava/lang/String; = "theme"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mLocale:Ljava/util/Locale;

.field protected mManifestName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;

.field private mTrackEventParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "manifest.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 41
    const-string v0, "config.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 296
    .end local p1    # "src":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 283
    .restart local p1    # "src":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    .line 293
    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "localePath":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 221
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v6

    .line 225
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 226
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 227
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 228
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v7

    goto :goto_0

    .line 229
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v3

    .line 230
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 243
    :catch_2
    move-exception v7

    goto :goto_0

    .line 231
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 243
    :catch_4
    move-exception v7

    goto :goto_0

    .line 233
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    .line 234
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 243
    :catch_6
    move-exception v7

    goto :goto_0

    .line 235
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v3

    .line 236
    .local v3, "e":Lorg/xml/sax/SAXException;
    :try_start_8
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_0

    .line 243
    :catch_8
    move-exception v7

    goto :goto_0

    .line 237
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 240
    if-eqz v4, :cond_0

    .line 242
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_0

    .line 243
    :catch_a
    move-exception v7

    goto :goto_0

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 242
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 244
    :cond_2
    :goto_1
    throw v6

    .line 243
    :catch_b
    move-exception v7

    goto :goto_1
.end method

.method private trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 202
    const-string v2, "theme"

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    .line 204
    .local v0, "xiaomiAnalytics":Lmiui/analytics/Analytics;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v0, p1, p2}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    invoke-virtual {v0}, Lmiui/analytics/Analytics;->endSession()V

    .line 208
    .end local v0    # "xiaomiAnalytics":Lmiui/analytics/Analytics;
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 11
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 107
    const-string v5, "images"

    invoke-direct {p0, p1, v5}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 109
    const-string v5, "ResourceLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRY AGAIN to get getPathForLanguage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v5, "images"

    invoke-direct {p0, p1, v5}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "src"

    invoke-interface {v5, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "retry_method"

    const-string v10, "getPathForLanguage"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v9, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v10, "retry_result"

    if-eqz v4, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v5, "getBitmapInfo"

    iget-object v9, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    invoke-direct {p0, v5, v9}, Lmiui/maml/ResourceLoader;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    if-nez v4, :cond_2

    .line 118
    const-string v5, "ResourceLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get getPathForLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 167
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move v5, v7

    .line 114
    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0, v4}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 123
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_4

    .line 124
    const-string v5, "ResourceLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRY AGAIN to get InputStream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v4}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 127
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "src"

    invoke-interface {v5, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "retry_method"

    const-string v10, "getInputStream"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v9, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v10, "retry_result"

    if-eqz v2, :cond_3

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v5, "getBitmapInfo"

    iget-object v9, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    invoke-direct {p0, v5, v9}, Lmiui/maml/ResourceLoader;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    if-nez v2, :cond_4

    .line 133
    const-string v5, "ResourceLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get InputStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 134
    goto :goto_1

    :cond_3
    move v5, v7

    .line 129
    goto :goto_2

    .line 139
    :cond_4
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .local v3, "padding":Landroid/graphics/Rect;
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_7

    .line 142
    const-string v5, "ResourceLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRY AGAIN to decode bitmap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "src"

    invoke-interface {v5, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "retry_method"

    const-string v10, "decodeStream"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v5, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    const-string v9, "retry_result"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v5, "getBitmapInfo"

    iget-object v6, p0, Lmiui/maml/ResourceLoader;->mTrackEventParams:Ljava/util/Map;

    invoke-direct {p0, v5, v6}, Lmiui/maml/ResourceLoader;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    if-nez v0, :cond_8

    .line 151
    const-string v5, "ResourceLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to decode bitmap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v2, :cond_5

    .line 161
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    :goto_4
    move-object v5, v8

    .line 163
    goto/16 :goto_1

    :cond_6
    move v6, v7

    .line 147
    goto :goto_3

    .line 155
    :cond_7
    :try_start_2
    new-instance v5, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-direct {v5, v0, v3}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-eqz v2, :cond_0

    .line 161
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 162
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 159
    :cond_8
    if-eqz v2, :cond_9

    .line 161
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "padding":Landroid/graphics/Rect;
    :cond_9
    :goto_5
    move-object v5, v8

    .line 167
    goto/16 :goto_1

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v5, "ResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    if-eqz v2, :cond_9

    .line 161
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 162
    :catch_2
    move-exception v5

    goto :goto_5

    .line 159
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_a

    .line 161
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 163
    :cond_a
    :goto_6
    throw v5

    .line 162
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "padding":Landroid/graphics/Rect;
    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_5

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "padding":Landroid/graphics/Rect;
    :catch_5
    move-exception v6

    goto :goto_6
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 12
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x1

    new-array v5, v9, [J

    .line 74
    .local v5, "olen":[J
    invoke-virtual {p0, p1, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_1

    move-object v4, v8

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 78
    :cond_1
    const/high16 v0, 0x10000

    .line 79
    .local v0, "COUNT":I
    const/high16 v9, 0x10000

    :try_start_0
    new-array v1, v9, [B

    .line 80
    .local v1, "buff":[B
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v10, v10

    invoke-direct {v4, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v4, "mf":Landroid/os/MemoryFile;
    const/4 v6, -0x1

    .line 82
    .local v6, "read":I
    const/4 v7, 0x0

    .line 83
    .local v7, "start":I
    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    invoke-virtual {v3, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 84
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v7, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 85
    add-int/2addr v7, v6

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-lez v9, :cond_3

    .line 95
    if-eqz v3, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v8

    goto :goto_0

    .line 95
    :cond_3
    if-eqz v3, :cond_4

    .line 97
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v1    # "buff":[B
    .end local v4    # "mf":Landroid/os/MemoryFile;
    .end local v6    # "read":I
    .end local v7    # "start":I
    :cond_4
    :goto_2
    move-object v4, v8

    .line 103
    goto :goto_0

    .line 90
    :catch_1
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v3, :cond_4

    .line 97
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 98
    :catch_2
    move-exception v9

    goto :goto_2

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    if-eqz v3, :cond_4

    .line 97
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 98
    :catch_4
    move-exception v9

    goto :goto_2

    .line 95
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 97
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 99
    :cond_5
    :goto_3
    throw v8

    .line 98
    .restart local v1    # "buff":[B
    .restart local v4    # "mf":Landroid/os/MemoryFile;
    .restart local v6    # "read":I
    .restart local v7    # "start":I
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v1    # "buff":[B
    .end local v4    # "mf":Landroid/os/MemoryFile;
    .end local v6    # "read":I
    .end local v7    # "start":I
    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 267
    :cond_1
    if-eqz v0, :cond_2

    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setContext(Landroid/content/Context;)Lmiui/maml/ResourceLoader;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 172
    .local v7, "rawContext":Landroid/content/Context;
    if-eqz v7, :cond_2

    .end local v7    # "rawContext":Landroid/content/Context;
    :goto_0
    iput-object v7, p0, Lmiui/maml/ResourceLoader;->mContext:Landroid/content/Context;

    .line 175
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    .line 177
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "resource_name"

    aput-object v1, v2, v8

    .line 180
    .local v2, "projection":[Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "content://com.android.thememanager.provider/theme"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 184
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 189
    const-string v1, ""

    iput-object v1, p0, Lmiui/maml/ResourceLoader;->mThemeName:Ljava/lang/String;

    .line 192
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_1
    return-object p0

    .restart local v7    # "rawContext":Landroid/content/Context;
    :cond_2
    move-object v7, p1

    .line 172
    goto :goto_0
.end method

.method public setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 64
    :cond_0
    iput-object p1, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    .line 65
    return-object p0
.end method
