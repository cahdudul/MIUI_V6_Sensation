.class Lmiui/maml/data/WebServiceBinder$VariableArray;
.super Lmiui/maml/data/VariableBinder$VariableArray;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableArray"
.end annotation


# instance fields
.field public mInnerXPath:Ljava/lang/String;

.field public mMaxCount:I

.field public mXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$VariableArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 215
    const-string v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mMaxCount:I

    .line 216
    const-string v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mXPath:Ljava/lang/String;

    .line 217
    const-string v0, "innerXpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mInnerXPath:Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/Object;Ljavax/xml/xpath/XPath;)V
    .locals 12
    .param p1, "doc"    # Ljava/lang/Object;
    .param p2, "xpath"    # Ljavax/xml/xpath/XPath;

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "count":I
    const/4 v6, 0x0

    .line 223
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mXPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 225
    :try_start_0
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mXPath:Ljava/lang/String;

    sget-object v10, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p2, v9, p1, v10}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/w3c/dom/NodeList;

    move-object v6, v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    if-nez v6, :cond_3

    const/4 v2, 0x0

    .line 232
    :cond_0
    :goto_1
    const/4 v7, 0x0

    .line 233
    .local v7, "objects":[Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 234
    iget v9, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mMaxCount:I

    if-le v2, v9, :cond_1

    .line 235
    iget v2, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mMaxCount:I

    .line 237
    :cond_1
    if-lez v2, :cond_4

    .line 238
    new-array v7, v2, [Ljava/lang/Object;

    .line 239
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 240
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 241
    .local v5, "node":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .line 243
    .local v1, "child":Lorg/w3c/dom/Node;
    :try_start_1
    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mInnerXPath:Ljava/lang/String;

    sget-object v10, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p2, v9, v5, v10}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_3
    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "textValue":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 252
    :try_start_2
    iget v9, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mType:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v9, :pswitch_data_0

    .line 239
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 226
    .end local v1    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "index":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "objects":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to get nodelist by xpath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mXPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v3    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    goto :goto_1

    .line 244
    .restart local v1    # "child":Lorg/w3c/dom/Node;
    .restart local v4    # "index":I
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    .restart local v7    # "objects":[Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 245
    .restart local v3    # "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to get node by innerXpath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mInnerXPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 254
    .end local v3    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .restart local v8    # "textValue":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    aput-object v8, v7, v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 271
    :catch_2
    move-exception v3

    .line 272
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v9, "WebServiceBinder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$VariableArray;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 257
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_4
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v4

    goto/16 :goto_4

    .line 260
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v4

    goto/16 :goto_4

    .line 263
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    goto/16 :goto_4

    .line 266
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 280
    .end local v1    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "index":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v7}, Lmiui/maml/data/WebServiceBinder$VariableArray;->fillData([Ljava/lang/Object;)V

    .line 281
    return-void

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
