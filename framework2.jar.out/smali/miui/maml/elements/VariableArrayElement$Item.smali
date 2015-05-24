.class Lmiui/maml/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lmiui/maml/data/Expression;

.field public mValue:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    .line 157
    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 139
    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    if-eqz p2, :cond_0

    .line 141
    const-string v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    .line 142
    const-string v1, "value"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "valueStr":Ljava/lang/String;
    iget-object v1, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v2, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v1, v2, :cond_1

    .line 145
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "valueStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v0    # "valueStr":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Double;
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v1, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 164
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpression()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
