.class public Lmiui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mActionStrings:[Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lmiui/maml/data/Expression;

.field private mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

.field private mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "parent"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/maml/CommandTrigger;

    invoke-direct {v0, p0, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    goto :goto_0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 45
    const-string v0, "Trigger"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 15
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 53
    move-object/from16 v0, p2

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 55
    const-string v13, "target"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "target":Ljava/lang/String;
    const-string v13, "property"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "property":Ljava/lang/String;
    const-string v13, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 60
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13, v12}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v13

    iput-object v13, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    .line 63
    :cond_0
    const-string v13, "action"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "action":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v10, v2, v6

    .line 67
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    .end local v10    # "s":Ljava/lang/String;
    :cond_1
    const-string v13, "condition"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v13

    iput-object v13, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    .line 73
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 74
    .local v3, "children":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 75
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 76
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 77
    .local v7, "item":Lorg/w3c/dom/Element;
    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v4

    .line 78
    .local v4, "command":Lmiui/maml/ActionCommand;
    if-eqz v4, :cond_2

    .line 79
    iget-object v13, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v4    # "command":Lmiui/maml/ActionCommand;
    .end local v7    # "item":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82
    :cond_3
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 109
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->finish()V

    .line 112
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 113
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_0

    .line 115
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->init()V

    .line 103
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 104
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_0

    .line 106
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 137
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {p0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 142
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 136
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->pause()V

    .line 121
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 122
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_0

    .line 124
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public perform()V
    .locals 6

    .prologue
    .line 86
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 97
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->perform()V

    .line 94
    :cond_2
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 95
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->resume()V

    .line 130
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 131
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_0

    .line 133
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method
