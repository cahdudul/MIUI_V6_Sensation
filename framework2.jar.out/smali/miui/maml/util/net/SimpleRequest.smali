.class public final Lmiui/maml/util/net/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/net/SimpleRequest$StreamContent;,
        Lmiui/maml/util/net/SimpleRequest$MapContent;,
        Lmiui/maml/util/net/SimpleRequest$StringContent;,
        Lmiui/maml/util/net/SimpleRequest$HeaderContent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TIMEOUT:I = 0x7530

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field private static final log:Ljava/util/logging/Logger;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lmiui/maml/util/net/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    return-void
.end method

.method protected static appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p0, :cond_0

    .line 50
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "origin is not allowed null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "urlBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 54
    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "paramPart":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 57
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v0    # "paramPart":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    .restart local v0    # "paramPart":Ljava/lang/String;
    :cond_2
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 7
    .param p0, "stringContent"    # Lmiui/maml/util/net/SimpleRequest$StringContent;

    .prologue
    const/4 v5, 0x0

    .line 289
    if-nez p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v5

    .line 292
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "bodyString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 295
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 299
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    .line 302
    invoke-static {v3}, Lmiui/maml/util/net/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 304
    .local v1, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lmiui/maml/util/net/SimpleRequest$MapContent;

    invoke-direct {v5, v1}, Lmiui/maml/util/net/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    .line 305
    .local v5, "mapContent":Lmiui/maml/util/net/SimpleRequest$MapContent;
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/util/net/SimpleRequest$MapContent;->putHeaders(Ljava/util/Map;)V

    goto :goto_0

    .line 296
    .end local v1    # "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "mapContent":Lmiui/maml/util/net/SimpleRequest$MapContent;
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 197
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/maml/util/net/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 140
    .local v9, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0, v9}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 142
    .local v3, "conn":Ljava/net/HttpURLConnection;
    if-nez v3, :cond_0

    .line 143
    sget-object v12, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v13, "failed to create URLConnection"

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 144
    new-instance v12, Ljava/io/IOException;

    const-string v13, "failed to create connection"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 147
    :cond_0
    const/4 v12, 0x1

    :try_start_0
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 148
    const-string v12, "GET"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 151
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 153
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 155
    .local v2, "code":I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    .line 158
    .local v7, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    .line 159
    .local v1, "cm":Ljava/net/CookieManager;
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 160
    .local v10, "reqUri":Ljava/net/URI;
    invoke-virtual {v1, v10, v7}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 161
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    .line 162
    .local v8, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v8}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 163
    .local v4, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    new-instance v11, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Lmiui/maml/util/net/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    .line 166
    .local v11, "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    invoke-virtual {v11, v4}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->putHeaders(Ljava/util/Map;)V

    .line 167
    return-object v11

    .line 168
    .end local v1    # "cm":Ljava/net/CookieManager;
    .end local v4    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v10    # "reqUri":Ljava/net/URI;
    .end local v11    # "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :cond_1
    const/16 v12, 0x193

    if-ne v2, v12, :cond_2

    .line 169
    new-instance v12, Lmiui/maml/util/net/AccessDeniedException;

    const-string v13, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v12, v13}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "code":I
    :catch_0
    move-exception v5

    .line 185
    .local v5, "e":Ljava/net/ProtocolException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "protocol error"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 171
    .end local v5    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "code":I
    :cond_2
    const/16 v12, 0x191

    if-eq v2, v12, :cond_3

    const/16 v12, 0x190

    if-ne v2, v12, :cond_4

    .line 173
    :cond_3
    :try_start_1
    new-instance v12, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "authentication failure for get, code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 176
    :cond_4
    sget-object v12, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http status error when GET: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 177
    const/16 v12, 0x12d

    if-ne v2, v12, :cond_5

    .line 178
    sget-object v12, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected redirect from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Location"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 182
    :cond_5
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected http res code: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    .line 73
    .local v11, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 75
    .local v4, "conn":Ljava/net/HttpURLConnection;
    if-nez v4, :cond_0

    .line 76
    sget-object v15, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v16, "failed to create URLConnection"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 77
    new-instance v15, Ljava/io/IOException;

    const-string v16, "failed to create connection"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 80
    :cond_0
    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 81
    const-string v15, "GET"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 84
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 85
    .local v3, "code":I
    const/16 v15, 0xc8

    if-eq v3, v15, :cond_1

    const/16 v15, 0x12e

    if-ne v3, v15, :cond_4

    .line 87
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 89
    .local v8, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/net/CookieManager;

    invoke-direct {v2}, Ljava/net/CookieManager;-><init>()V

    .line 90
    .local v2, "cm":Ljava/net/CookieManager;
    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    .line 91
    .local v12, "reqUri":Ljava/net/URI;
    invoke-virtual {v2, v12, v8}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 92
    invoke-virtual {v2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v9

    .line 93
    .local v9, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v9}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 94
    .local v5, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v8}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v13, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    .line 97
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-direct {v1, v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 102
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_2
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v15
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cm":Ljava/net/CookieManager;
    .end local v3    # "code":I
    .end local v5    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v12    # "reqUri":Ljava/net/URI;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 129
    .local v6, "e":Ljava/net/ProtocolException;
    :try_start_3
    new-instance v15, Ljava/io/IOException;

    const-string v16, "protocol error"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    .end local v6    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v15

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15

    .line 105
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "cm":Ljava/net/CookieManager;
    .restart local v3    # "code":I
    .restart local v5    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "reqUri":Ljava/net/URI;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 108
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    :cond_3
    new-instance v14, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v14, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-virtual {v14, v5}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v14

    .line 112
    .end local v2    # "cm":Ljava/net/CookieManager;
    .end local v5    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v12    # "reqUri":Ljava/net/URI;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_4
    const/16 v15, 0x193

    if-ne v3, v15, :cond_5

    .line 113
    :try_start_5
    new-instance v15, Lmiui/maml/util/net/AccessDeniedException;

    const-string v16, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v15 .. v16}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 115
    :cond_5
    const/16 v15, 0x191

    if-eq v3, v15, :cond_6

    const/16 v15, 0x190

    if-ne v3, v15, :cond_7

    .line 117
    :cond_6
    new-instance v15, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "authentication failure for get, code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 120
    :cond_7
    sget-object v15, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http status error when GET: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 121
    const/16 v15, 0x12d

    if-ne v3, v15, :cond_8

    .line 122
    sget-object v15, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unexpected redirect from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Location"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 126
    :cond_8
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unexpected http res code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 342
    const/4 v7, 0x0

    .line 358
    :goto_0
    return-object v7

    .line 344
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 346
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 348
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v2, :cond_1

    .line 349
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 352
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 353
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v2, v2, 0x1

    .line 357
    goto :goto_1

    .line 358
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, "req":Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "req":Ljava/net/URL;
    .local v3, "req":Ljava/net/URL;
    move-object v2, v3

    .line 317
    .end local v3    # "req":Ljava/net/URL;
    .restart local v2    # "req":Ljava/net/URL;
    :goto_0
    if-nez v2, :cond_1

    .line 318
    sget-object v5, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v6, "failed to init url"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move-object v0, v4

    .line 337
    :cond_0
    :goto_1
    return-object v0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 323
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 324
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 325
    const/16 v5, 0x7530

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 326
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 327
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-eqz p1, :cond_0

    .line 331
    const-string v5, "Cookie"

    const-string v6, "; "

    invoke-static {p1, v6}, Lmiui/maml/util/net/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 334
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    .line 337
    goto :goto_1
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v1, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 365
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 369
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 285
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 205
    .local v6, "conn":Ljava/net/HttpURLConnection;
    if-nez v6, :cond_0

    .line 206
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v18, "failed to create URLConnection"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 207
    new-instance v17, Ljava/io/IOException;

    const-string v18, "failed to create connection"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 210
    :cond_0
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 211
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 212
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 215
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    .line 216
    .local v12, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v12, :cond_1

    .line 217
    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 219
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 223
    :try_start_2
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 227
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v13    # "os":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 228
    .local v5, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 230
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 232
    .local v10, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    .line 233
    .local v4, "cm":Ljava/net/CookieManager;
    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    .line 234
    .local v14, "reqUri":Ljava/net/URI;
    invoke-virtual {v4, v14, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 235
    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 237
    .local v8, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 238
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    .line 240
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 246
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 249
    .end local v11    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_4
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v17
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v5    # "code":I
    .end local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 273
    .local v9, "e":Ljava/net/ProtocolException;
    :try_start_5
    new-instance v17, Ljava/io/IOException;

    const-string v18, "protocol error"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 275
    .end local v9    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v17

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v17

    .line 223
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v12    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    :try_start_6
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v17

    .line 249
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "cm":Ljava/net/CookieManager;
    .restart local v5    # "code":I
    .restart local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "reqUri":Ljava/net/URI;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 252
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v11    # "line":Ljava/lang/String;
    :cond_4
    new-instance v16, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v16, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 275
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v16

    .line 256
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_5
    const/16 v17, 0x193

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 257
    :try_start_7
    new-instance v17, Lmiui/maml/util/net/AccessDeniedException;

    const-string v18, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 259
    :cond_6
    const/16 v17, 0x191

    move/from16 v0, v17

    if-eq v5, v0, :cond_7

    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 261
    :cond_7
    new-instance v17, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "authentication failure for post, code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 264
    :cond_8
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http status error when POST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 265
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 266
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected redirect from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 270
    :cond_9
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected http res code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
