.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mExpression:Lmiui/maml/data/Expression;

.field private mIsString:Z

.field private mName:Ljava/lang/String;

.field private mNameExpression:Lmiui/maml/data/Expression;

.field private mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mStrVariable:Lmiui/maml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 764
    const-string v3, "name"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 765
    const-string v3, "nameExp"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "nameExp":Ljava/lang/String;
    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExpression:Lmiui/maml/data/Expression;

    .line 767
    const-string v3, "persist"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 768
    const-string v3, "requestUpdate"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 770
    const-string v3, "type"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "type":Ljava/lang/String;
    const-string v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIsString:Z

    .line 772
    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExpression:Lmiui/maml/data/Expression;

    if-nez v3, :cond_0

    .line 773
    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 774
    iget-boolean v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIsString:Z

    if-eqz v3, :cond_2

    .line 775
    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    .line 783
    :cond_0
    :goto_0
    const-string v3, "expression"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "expression":Ljava/lang/String;
    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    .line 785
    iget-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v3, :cond_1

    .line 786
    const-string v3, "ActionCommand"

    const-string v4, "invalid expression in VariableAssignmentCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1
    return-void

    .line 777
    .end local v0    # "expression":Ljava/lang/String;
    :cond_2
    new-instance v3, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v4, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0

    .line 780
    :cond_3
    const-string v3, "ActionCommand"

    const-string v4, "empty name in VariableAssignmentCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    .line 792
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-nez v5, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    .line 797
    .local v1, "root":Lmiui/maml/ScreenElementRoot;
    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v4, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 798
    .local v4, "vars":Lmiui/maml/data/Variables;
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExpression:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_4

    .line 799
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNameExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5, v4}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 801
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIsString:Z

    if-eqz v5, :cond_3

    .line 802
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5, v4}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "v":Ljava/lang/String;
    invoke-virtual {v4, v0, v2}, Lmiui/maml/data/Variables;->putStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v5, :cond_2

    .line 805
    invoke-virtual {v1, v0, v2}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "v":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v5, :cond_0

    .line 825
    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 807
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    .line 808
    .local v2, "v":D
    invoke-virtual {v4, v0, v2, v3}, Lmiui/maml/data/Variables;->putNum(Ljava/lang/String;D)V

    .line 809
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v5, :cond_2

    .line 810
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 813
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "v":D
    :cond_4
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v5, :cond_5

    .line 814
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5, v4}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    .line 815
    .restart local v2    # "v":D
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v5, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 816
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v5, :cond_2

    .line 817
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 818
    .end local v2    # "v":D
    :cond_5
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v5, :cond_2

    .line 819
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v5, v4}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "v":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v5, v2}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 821
    iget-boolean v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v5, :cond_2

    .line 822
    iget-object v5, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
