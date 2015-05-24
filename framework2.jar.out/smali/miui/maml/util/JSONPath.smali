.class public Lmiui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONArray;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v6, v11

    .line 90
    :cond_0
    :goto_0
    return-object v6

    .line 45
    :cond_1
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "segs":[Ljava/lang/String;
    iget-object v12, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v12, :cond_2

    iget-object v6, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 48
    .local v6, "obj":Ljava/lang/Object;
    :goto_1
    if-nez v6, :cond_3

    move-object v6, v11

    .line 49
    goto :goto_0

    .line 47
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    goto :goto_1

    .line 52
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_0
    array-length v12, v9

    if-ge v3, v12, :cond_0

    .line 53
    aget-object v8, v9, v3

    .line 54
    .local v8, "seg":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 52
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 57
    :cond_5
    const/4 v5, 0x0

    .line 58
    .local v5, "index":I
    const-string v12, "["

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 59
    .local v4, "ind":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_6

    .line 60
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 62
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 65
    .end local v7    # "s":Ljava/lang/String;
    :cond_6
    instance-of v12, v6, Lorg/json/JSONObject;

    if-eqz v12, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 66
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v10, v0

    .line 67
    .local v10, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 70
    .end local v10    # "tmp":Lorg/json/JSONObject;
    :cond_7
    instance-of v12, v6, Lorg/json/JSONArray;

    if-eqz v12, :cond_8

    .line 71
    move-object v0, v6

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 72
    .local v1, "arr":Lorg/json/JSONArray;
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 75
    .end local v1    # "arr":Lorg/json/JSONArray;
    :cond_8
    if-eqz v6, :cond_9

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v6, v12, :cond_4

    :cond_9
    move-object v6, v11

    .line 76
    goto :goto_0

    .line 80
    .end local v4    # "ind":I
    .end local v5    # "index":I
    .end local v8    # "seg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    move-object v6, v11

    .line 90
    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    .line 84
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 86
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
