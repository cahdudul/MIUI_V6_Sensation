.class Lmiui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 74
    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 75
    if-eqz p2, :cond_0

    .line 76
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 77
    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 78
    const-string v0, "const"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 80
    iget-object v0, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v1, :cond_1

    .line 81
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-virtual {v3}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 104
    .local v2, "var":Lmiui/maml/data/Variables;
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 105
    .local v0, "index":I
    if-ltz v0, :cond_2

    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    # getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 107
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v3, v3, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v3, v4, :cond_3

    .line 108
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v3, v5}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v3, v3, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v3, v4, :cond_0

    .line 110
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v3, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 115
    :cond_4
    iget v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v3, :cond_0

    .line 120
    :cond_5
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    # getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/VariableArrayElement$Item;

    .line 121
    .local v1, "item":Lmiui/maml/elements/VariableArrayElement$Item;
    iget v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v3, v0, :cond_6

    .line 122
    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 123
    invoke-virtual {v1}, Lmiui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 126
    :cond_6
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v3, v3, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v3, v4, :cond_7

    .line 127
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_7
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v3, v3, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v3, v4, :cond_0

    .line 129
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 96
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 97
    return-void
.end method

.method public tick()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 92
    :cond_0
    return-void
.end method
