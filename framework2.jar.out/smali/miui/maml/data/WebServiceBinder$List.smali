.class Lmiui/maml/data/WebServiceBinder$List;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field public mXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mXPath:Ljava/lang/String;

    .line 292
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/WebServiceBinder$List;

    .prologue
    .line 284
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fill(Lorg/w3c/dom/NodeList;)V
    .locals 12
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 297
    if-nez p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v9, :cond_2

    .line 301
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v9

    check-cast v9, Lmiui/maml/elements/ListScreenElement;

    iput-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 302
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v9, :cond_2

    .line 303
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to find list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_2
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v9}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 308
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v9}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 309
    .local v2, "columnsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 310
    .local v7, "size":I
    new-array v6, v7, [Ljava/lang/Object;

    .line 312
    .local v6, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 313
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 314
    .local v3, "ele":Lorg/w3c/dom/Element;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 315
    const/4 v9, 0x0

    aput-object v9, v6, v5

    .line 316
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .line 317
    .local v1, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    iget-object v9, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-static {v3, v9}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 318
    .local v0, "child":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_3

    .line 319
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "textValue":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 322
    :try_start_0
    sget-object v9, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v10, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 314
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 324
    .restart local v8    # "textValue":Ljava/lang/String;
    :pswitch_0
    aput-object v8, v6, v5

    goto :goto_3

    .line 341
    :catch_0
    move-exception v9

    goto :goto_3

    .line 327
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_3

    .line 330
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_3

    .line 333
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_3

    .line 336
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 346
    .end local v0    # "child":Lorg/w3c/dom/Element;
    .end local v1    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v9, v6}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 322
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
