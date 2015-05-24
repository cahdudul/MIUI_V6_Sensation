.class Lmiui/maml/ActionCommand$IntentCommand$Extra;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$IntentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

.field final synthetic this$0:Lmiui/maml/ActionCommand$IntentCommand;


# direct methods
.method public constructor <init>(Lmiui/maml/ActionCommand$IntentCommand;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p2, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 898
    iput-object p1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$Type;->DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 899
    invoke-direct {p0, p2}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->load(Lorg/w3c/dom/Element;)V

    .line 900
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 903
    if-nez p1, :cond_0

    .line 904
    const-string v1, "ActionCommand"

    const-string v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 908
    :cond_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mName:Ljava/lang/String;

    .line 910
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "type":Ljava/lang/String;
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 912
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->STRING:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    .line 925
    :cond_1
    :goto_1
    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    .line 926
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v1, :cond_2

    .line 927
    const-string v1, "ActionCommand"

    const-string v2, "invalid expression in IntentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_2
    const-string v1, "condition"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mCondition:Lmiui/maml/data/Expression;

    goto :goto_0

    .line 913
    :cond_3
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 914
    :cond_4
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->INT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    goto :goto_1

    .line 915
    :cond_5
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 916
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->LONG:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    goto :goto_1

    .line 917
    :cond_6
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 918
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->FLOAT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    goto :goto_1

    .line 919
    :cond_7
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 920
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    goto :goto_1

    .line 921
    :cond_8
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->BOOLEAN:Lmiui/maml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    goto :goto_1
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 941
    const-wide/16 v0, 0x0

    .line 942
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x0

    .line 936
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isConditionTrue()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 950
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mCondition:Lmiui/maml/data/Expression;

    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mCondition:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand$Extra;->this$0:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
