.class public Lmiui/maml/data/WebServiceBinder;
.super Lmiui/maml/data/VariableBinder;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/WebServiceBinder$1;,
        Lmiui/maml/data/WebServiceBinder$QueryThread;,
        Lmiui/maml/data/WebServiceBinder$AuthToken;,
        Lmiui/maml/data/WebServiceBinder$List;,
        Lmiui/maml/data/WebServiceBinder$VariableArray;,
        Lmiui/maml/data/WebServiceBinder$Variable;,
        Lmiui/maml/data/WebServiceBinder$ResponseProtocol;,
        Lmiui/maml/data/WebServiceBinder$RequestMethod;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mAuthentication:Z

.field public mEncryptedUser:Ljava/lang/String;

.field mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mLastQueryTime:J

.field private mList:Lmiui/maml/data/WebServiceBinder$List;

.field private mParamsFormatter:Lmiui/maml/util/TextFormatter;

.field private mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field private mQueryInProgress:Z

.field private mQueryThread:Ljava/lang/Thread;

.field mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field private mSecure:Z

.field public mSecurity:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field public mServiceToken:Ljava/lang/String;

.field mStatusCodeVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    .line 108
    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 115
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 353
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    .line 354
    return-void
.end method

.method static synthetic access$200(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 67
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    return v0
.end method

.method static synthetic access$300(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 67
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lmiui/maml/data/WebServiceBinder;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    return-object v0
.end method

.method private canUseNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 512
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-nez v2, :cond_2

    move v0, v1

    .line 515
    goto :goto_0

    .line 516
    :cond_2
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-ne v2, v0, :cond_3

    .line 517
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 520
    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    const-string v0, "WebServiceBinder"

    const-string v1, "WebServiceBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    const-string v0, "requestMethod"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "requestMethod":Ljava/lang/String;
    const-string v0, "get"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 423
    :cond_1
    const-string v0, "queryAtStart"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    .line 424
    const-string v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    .line 425
    .local v4, "uriExp":Lmiui/maml/data/Expression;
    const-string v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 426
    .local v5, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uriFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 428
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v1, "params"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paramsFormat"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "paramsParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    .line 430
    const-string v0, "updateInterval"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    .line 432
    const-string v0, "protocol"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->parseProtocol(Ljava/lang/String;)V

    .line 435
    const-string v0, "authentication"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    .line 436
    const-string v0, "secure"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    .line 437
    const-string v0, "serviceID"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    .line 439
    const-string v0, "useNetwork"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 440
    .local v9, "useNetwork":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 450
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 451
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->loadVariableArrays(Lorg/w3c/dom/Element;)V

    .line 453
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    const-string v2, "statusCode"

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 455
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 458
    :cond_3
    const-string v0, "List"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 459
    .local v7, "list":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_4

    .line 461
    :try_start_0
    new-instance v0, Lmiui/maml/data/WebServiceBinder$List;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v7, v1}, Lmiui/maml/data/WebServiceBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_4
    :goto_1
    return-void

    .line 442
    .end local v7    # "list":Lorg/w3c/dom/Element;
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    const/4 v0, 0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto :goto_0

    .line 444
    :cond_6
    const-string v0, "none"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto :goto_0

    .line 447
    :cond_7
    invoke-static {v9}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto :goto_0

    .line 462
    .restart local v7    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v6

    .line 463
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "WebServiceBinder"

    const-string v1, "invalid List"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v0, "json/obj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    .line 473
    :cond_2
    const-string v0, "json/array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    .line 475
    :cond_3
    const-string v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0
.end method

.method private processResponseJson(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 598
    :cond_0
    const/4 v3, 0x0

    .line 599
    .local v3, "jpath":Lmiui/maml/util/JSONPath;
    :try_start_0
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v10, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v9, v10, :cond_3

    .line 600
    new-instance v4, Lmiui/maml/util/JSONPath;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .local v4, "jpath":Lmiui/maml/util/JSONPath;
    move-object v3, v4

    .line 605
    .end local v4    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v3    # "jpath":Lmiui/maml/util/JSONPath;
    :goto_1
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/data/VariableBinder$Variable;

    .line 606
    .local v8, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v8

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v6, v0

    .line 607
    .local v6, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 608
    .local v5, "obj":Ljava/lang/Object;
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_4

    .line 610
    :try_start_1
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 611
    .local v7, "value":Ljava/lang/String;
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v9, v7}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 612
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 614
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to get variable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 636
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v8    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :catch_1
    move-exception v1

    .line 637
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "WebServiceBinder"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 640
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->onUpdateComplete()V

    goto :goto_0

    .line 602
    :cond_3
    :try_start_3
    new-instance v4, Lmiui/maml/util/JSONPath;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONArray;)V

    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v4    # "jpath":Lmiui/maml/util/JSONPath;
    move-object v3, v4

    .end local v4    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v3    # "jpath":Lmiui/maml/util/JSONPath;
    goto :goto_1

    .line 616
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v6    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .restart local v8    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :cond_4
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v9, :cond_1

    .line 618
    const/4 v7, 0x0

    .line 619
    .local v7, "value":Ljava/lang/Double;
    :try_start_4
    instance-of v9, v5, Ljava/lang/Boolean;

    if-eqz v9, :cond_7

    .line 620
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 628
    :cond_5
    :goto_4
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v9, v7}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 629
    :catch_2
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_5
    iget-object v9, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 631
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to get variable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 620
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 621
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_7
    :try_start_6
    instance-of v9, v5, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    .line 622
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_4

    .line 623
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v9, v5, Ljava/lang/Long;

    if-eqz v9, :cond_9

    .line 624
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_4

    .line 625
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v9, v5, Ljava/lang/Double;

    if-eqz v9, :cond_5

    .line 626
    move-object v0, v5

    check-cast v0, Ljava/lang/Double;

    move-object v7, v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4
.end method

.method private processResponseXml(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v13

    .line 528
    .local v13, "xpath":Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 529
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 531
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 532
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v14, "utf-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 534
    .local v3, "doc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/VariableBinder$Variable;

    .line 535
    .local v11, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v11

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v8, v0

    .line 536
    .local v8, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_3

    .line 538
    :try_start_2
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v3, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 539
    .local v10, "value":Ljava/lang/String;
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v14, v10}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 540
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 541
    .local v4, "e":Ljavax/xml/xpath/XPathExpressionException;
    :try_start_3
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 542
    const-string v14, "WebServiceBinder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail to get variable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 568
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v11    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :catch_1
    move-exception v4

    move-object v6, v7

    .line 569
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v14, "WebServiceBinder"

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    if-eqz v6, :cond_2

    .line 586
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 590
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/WebServiceBinder;->onUpdateComplete()V

    goto/16 :goto_0

    .line 544
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .restart local v11    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :cond_3
    :try_start_6
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_1

    .line 546
    :try_start_7
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v3, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 547
    .local v10, "value":Ljava/lang/Double;
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v14, v10}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V
    :try_end_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 548
    .end local v10    # "value":Ljava/lang/Double;
    :catch_2
    move-exception v4

    .line 549
    .local v4, "e":Ljavax/xml/xpath/XPathExpressionException;
    :try_start_8
    iget-object v14, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 550
    const-string v14, "WebServiceBinder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail to get variable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 571
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v11    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :catch_3
    move-exception v4

    move-object v6, v7

    .line 572
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Lorg/xml/sax/SAXException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_9
    const-string v14, "WebServiceBinder"

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 585
    if-eqz v6, :cond_2

    .line 586
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 587
    :catch_4
    move-exception v14

    goto :goto_3

    .line 555
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_4
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/WebServiceBinder;->mVariableArrays:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/maml/data/VariableBinder$VariableArray;

    .line 556
    .local v9, "va":Lmiui/maml/data/VariableBinder$VariableArray;
    move-object v0, v9

    check-cast v0, Lmiui/maml/data/WebServiceBinder$VariableArray;

    move-object v12, v0

    .line 557
    .local v12, "varray":Lmiui/maml/data/WebServiceBinder$VariableArray;
    invoke-virtual {v12, v3, v13}, Lmiui/maml/data/WebServiceBinder$VariableArray;->fill(Ljava/lang/Object;Ljavax/xml/xpath/XPath;)V
    :try_end_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 574
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "va":Lmiui/maml/data/VariableBinder$VariableArray;
    .end local v12    # "varray":Lmiui/maml/data/WebServiceBinder$VariableArray;
    :catch_5
    move-exception v4

    move-object v6, v7

    .line 575
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_6
    :try_start_c
    const-string v14, "WebServiceBinder"

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 585
    if-eqz v6, :cond_2

    .line 586
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 587
    :catch_6
    move-exception v14

    goto/16 :goto_3

    .line 560
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_5
    :try_start_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v14, :cond_6

    .line 562
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v14, v14, Lmiui/maml/data/WebServiceBinder$List;->mXPath:Ljava/lang/String;

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v3, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/NodeList;

    .line 563
    .local v10, "value":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    invoke-virtual {v14, v10}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/w3c/dom/NodeList;)V
    :try_end_f
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 585
    .end local v10    # "value":Lorg/w3c/dom/NodeList;
    :cond_6
    :goto_7
    if-eqz v7, :cond_7

    .line 586
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    :cond_7
    move-object v6, v7

    .line 588
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 564
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    .line 565
    .local v4, "e":Ljavax/xml/xpath/XPathExpressionException;
    :try_start_11
    const-string v14, "WebServiceBinder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail to get list: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v16, v0

    # getter for: Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lmiui/maml/data/WebServiceBinder$List;->access$000(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_7

    .line 577
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_8
    move-exception v4

    move-object v6, v7

    .line 578
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_8
    :try_start_12
    const-string v14, "WebServiceBinder"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 585
    if-eqz v6, :cond_2

    .line 586
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_3

    .line 587
    :catch_9
    move-exception v14

    goto/16 :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v14

    move-object v6, v7

    .line 589
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 580
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_b
    move-exception v4

    .line 581
    .local v4, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_14
    const-string v14, "WebServiceBinder"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 585
    if-eqz v6, :cond_2

    .line 586
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_3

    .line 587
    :catch_c
    move-exception v14

    goto/16 :goto_3

    .line 584
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 585
    :goto_a
    if-eqz v6, :cond_8

    .line 586
    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 588
    :cond_8
    :goto_b
    throw v14

    .line 587
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_d
    move-exception v14

    goto/16 :goto_3

    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_e
    move-exception v15

    goto :goto_b

    .line 584
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_a

    .line 580
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v4

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_9

    .line 577
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_10
    move-exception v4

    goto :goto_8

    .line 574
    :catch_11
    move-exception v4

    goto/16 :goto_6

    .line 571
    :catch_12
    move-exception v4

    goto/16 :goto_4

    .line 568
    :catch_13
    move-exception v4

    goto/16 :goto_2
.end method

.method private tryStartQuery()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 405
    .local v0, "time":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 406
    iput-wide v6, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 408
    :cond_0
    iget-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_2

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 409
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    .line 411
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 381
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 359
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    .line 360
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    .line 361
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 368
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 369
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    .line 372
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_2

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 374
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    .line 376
    :cond_2
    return-void
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 482
    new-instance v0, Lmiui/maml/data/WebServiceBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$VariableArray;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$VariableArray;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$VariableArray;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 487
    new-instance v0, Lmiui/maml/data/WebServiceBinder$VariableArray;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$VariableArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 385
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 386
    return-void
.end method

.method public processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V
    .locals 6
    .param p1, "response"    # Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    const-string v4, "WebServiceBinder"

    const-string v5, "response null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 650
    const-string v4, "WebServiceBinder"

    const-string v5, "no image element var"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {p1}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 656
    .local v2, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/WebServiceBinder$Variable;

    .line 658
    .local v3, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "cacheDir":Ljava/lang/String;
    # invokes: Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    invoke-virtual {v3, v2, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->saveCache(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    .line 680
    :goto_1
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 667
    :cond_2
    const/4 v0, 0x0

    .line 668
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 669
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 670
    if-nez v0, :cond_3

    .line 671
    const-string v4, "WebServiceBinder"

    const-string v5, "decoded bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_3
    :goto_2
    invoke-virtual {v3, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->setValue(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 674
    :cond_4
    const-string v4, "WebServiceBinder"

    const-string v5, "response stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 400
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    .line 401
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 392
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    .line 395
    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 3

    .prologue
    .line 492
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 497
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 501
    :cond_1
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    .line 507
    new-instance v0, Lmiui/maml/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/maml/data/WebServiceBinder$QueryThread;-><init>(Lmiui/maml/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    .line 508
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
