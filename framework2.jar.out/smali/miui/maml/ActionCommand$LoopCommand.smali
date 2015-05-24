.class Lmiui/maml/ActionCommand$LoopCommand;
.super Lmiui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lmiui/maml/data/Expression;

.field private mConditionExp:Lmiui/maml/data/Expression;

.field private mCountExp:Lmiui/maml/data/Expression;

.field private mEndExp:Lmiui/maml/data/Expression;

.field private mIndexVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1576
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1578
    const-string v1, "indexName"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "indexName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1580
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 1582
    :cond_0
    const-string v1, "begin"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    .line 1583
    const-string v1, "count"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    .line 1584
    iget-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_1

    .line 1585
    const-string v1, "end"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    .line 1587
    :cond_1
    const-string v1, "loopCondition"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    .line 1588
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x2710

    const/4 v6, 0x0

    .line 1592
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    .line 1593
    .local v5, "vars":Lmiui/maml/data/Variables;
    iget-object v7, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    if-nez v7, :cond_2

    move v0, v6

    .line 1594
    .local v0, "begin":I
    :goto_0
    iget-object v7, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_3

    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    invoke-virtual {v6, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v0

    add-int/lit8 v2, v6, -0x1

    .line 1596
    .local v2, "end":I
    :goto_1
    sub-int v6, v2, v0

    int-to-long v6, v6

    cmp-long v6, v6, v9

    if-lez v6, :cond_0

    .line 1597
    const-string v6, "ActionCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count is too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", exceeds WARNING "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    move v4, v0

    .local v4, "idx":I
    :goto_2
    if-gt v4, v2, :cond_1

    .line 1600
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v6, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_5

    .line 1610
    :cond_1
    return-void

    .line 1593
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v4    # "idx":I
    :cond_2
    iget-object v7, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    invoke-virtual {v7, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    double-to-int v0, v7

    goto :goto_0

    .line 1594
    .restart local v0    # "begin":I
    :cond_3
    iget-object v7, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    if-nez v7, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    invoke-virtual {v6, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v6

    double-to-int v2, v6

    goto :goto_1

    .line 1603
    .restart local v2    # "end":I
    .restart local v4    # "idx":I
    :cond_5
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v6, :cond_6

    .line 1604
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v4

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1606
    :cond_6
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    .line 1607
    .local v1, "command":Lmiui/maml/ActionCommand;
    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->doPerform()V

    goto :goto_3

    .line 1599
    .end local v1    # "command":Lmiui/maml/ActionCommand;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
