.class public Lmiui/maml/data/BaseFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BaseFunctions$1;,
        Lmiui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lmiui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmiui/maml/data/BaseFunctions$Fun;I)V
    .locals 0
    .param p1, "f"    # Lmiui/maml/data/BaseFunctions$Fun;
    .param p2, "i"    # I

    .prologue
    .line 106
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 107
    iput-object p1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    .line 108
    return-void
.end method

.method private digit(II)I
    .locals 3
    .param p1, "number"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v1, -0x1

    .line 295
    if-gtz p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 298
    const/4 v1, 0x0

    goto :goto_0

    .line 299
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lez p1, :cond_3

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_3

    .line 300
    div-int/lit8 p1, p1, 0xa

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_3
    if-lez p1, :cond_0

    rem-int/lit8 v1, p1, 0xa

    goto :goto_0
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 65
    const-string v0, "rand"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 66
    const-string v0, "sin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 67
    const-string v0, "cos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 68
    const-string v0, "tan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 69
    const-string v0, "asin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 70
    const-string v0, "acos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 71
    const-string v0, "atan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 72
    const-string v0, "sinh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 73
    const-string v0, "cosh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 74
    const-string v0, "sqrt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 75
    const-string v0, "abs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 76
    const-string v0, "len"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 77
    const-string v0, "eval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 78
    const-string v0, "preciseeval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 79
    const-string v0, "round"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 80
    const-string v0, "int"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 82
    const-string v0, "isnull"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 83
    const-string v0, "not"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 85
    const-string v0, "min"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 86
    const-string v0, "max"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 87
    const-string v0, "pow"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 88
    const-string v0, "digit"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 90
    const-string v0, "eq"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 91
    const-string v0, "ne"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 92
    const-string v0, "ge"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 93
    const-string v0, "gt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 94
    const-string v0, "le"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 95
    const-string v0, "lt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 96
    const-string v0, "ifelse"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 98
    const-string v0, "and"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 99
    const-string v0, "or"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 101
    const-string v0, "eqs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 102
    const-string v0, "substr"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 103
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 15
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 113
    sget-object v11, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v12, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v12}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 118
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    .line 119
    .local v9, "value0":D
    sget-object v11, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v12, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v12}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    .line 239
    const-string v11, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-wide/16 v11, 0x0

    .end local v9    # "value0":D
    :goto_0
    return-wide v11

    .line 115
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    goto :goto_0

    .line 121
    .restart local v9    # "value0":D
    :pswitch_1
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    goto :goto_0

    .line 129
    :pswitch_5
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    goto :goto_0

    .line 133
    :pswitch_7
    invoke-static {v9, v10}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v11

    goto :goto_0

    .line 135
    :pswitch_8
    invoke-static {v9, v10}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v11

    goto :goto_0

    .line 137
    :pswitch_9
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    goto :goto_0

    .line 139
    :pswitch_a
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    goto :goto_0

    .line 141
    :pswitch_b
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "str":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 143
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    int-to-double v11, v11

    goto :goto_0

    .line 147
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_c
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "expStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 149
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 152
    iput-object v1, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 153
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {v11}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    iput-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 155
    :cond_2
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v11, :cond_3

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    goto :goto_0

    .line 157
    .end local v1    # "expStr":Ljava/lang/String;
    :pswitch_d
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "pexpStr":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 159
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 162
    iput-object v4, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 163
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {v11}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    iput-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 165
    :cond_5
    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 166
    .local v5, "result":Ljava/math/BigDecimal;
    :goto_1
    if-eqz v5, :cond_8

    .line 167
    invoke-virtual {v5}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    .line 168
    .local v6, "scale":I
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-int v7, v11

    .line 171
    .local v7, "setScale":I
    if-lez v7, :cond_6

    if-le v6, v7, :cond_6

    .line 172
    const/4 v11, 0x4

    invoke-virtual {v5, v7, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 174
    :cond_6
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    goto/16 :goto_0

    .line 165
    .end local v5    # "result":Ljava/math/BigDecimal;
    .end local v6    # "scale":I
    .end local v7    # "setScale":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 176
    .restart local v5    # "result":Ljava/math/BigDecimal;
    :cond_8
    const-wide/high16 v11, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 178
    .end local v4    # "pexpStr":Ljava/lang/String;
    .end local v5    # "result":Ljava/math/BigDecimal;
    :pswitch_e
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    goto/16 :goto_0

    .line 180
    :pswitch_f
    double-to-int v11, v9

    int-to-double v11, v11

    goto/16 :goto_0

    .line 182
    :pswitch_10
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_9
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 184
    :pswitch_11
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-lez v11, :cond_a

    const-wide/16 v11, 0x0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 186
    :pswitch_12
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    goto/16 :goto_0

    .line 188
    :pswitch_13
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    goto/16 :goto_0

    .line 190
    :pswitch_14
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    goto/16 :goto_0

    .line 192
    :pswitch_15
    double-to-int v11, v9

    const/4 v12, 0x1

    aget-object v12, p1, v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-direct {p0, v11, v12}, Lmiui/maml/data/BaseFunctions;->digit(II)I

    move-result v11

    int-to-double v11, v11

    goto/16 :goto_0

    .line 194
    :pswitch_16
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpl-double v11, v9, v11

    if-nez v11, :cond_b

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_b
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 196
    :pswitch_17
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpl-double v11, v9, v11

    if-eqz v11, :cond_c

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_c
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 198
    :pswitch_18
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpl-double v11, v9, v11

    if-ltz v11, :cond_d

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_d
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 200
    :pswitch_19
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpl-double v11, v9, v11

    if-lez v11, :cond_e

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_e
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 202
    :pswitch_1a
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpg-double v11, v9, v11

    if-gtz v11, :cond_f

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_f
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 204
    :pswitch_1b
    const/4 v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    cmpg-double v11, v9, v11

    if-gez v11, :cond_10

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_10
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 206
    :pswitch_1c
    move-object/from16 v0, p1

    array-length v3, v0

    .line 207
    .local v3, "len":I
    rem-int/lit8 v11, v3, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_11

    .line 208
    const-string v11, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "function parameter number should be 2*n+1: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 211
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    add-int/lit8 v11, v3, -0x1

    div-int/lit8 v11, v11, 0x2

    if-ge v2, v11, :cond_13

    .line 212
    mul-int/lit8 v11, v2, 0x2

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_12

    .line 213
    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    goto/16 :goto_0

    .line 211
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    :cond_13
    add-int/lit8 v11, v3, -0x1

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    goto/16 :goto_0

    .line 218
    .end local v2    # "i":I
    .end local v3    # "len":I
    :pswitch_1d
    move-object/from16 v0, p1

    array-length v3, v0

    .line 219
    .restart local v3    # "len":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v3, :cond_15

    .line 220
    aget-object v11, p1, v2

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_14

    .line 221
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 219
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 223
    :cond_15
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 226
    .end local v2    # "i":I
    .end local v3    # "len":I
    :pswitch_1e
    move-object/from16 v0, p1

    array-length v3, v0

    .line 227
    .restart local v3    # "len":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v3, :cond_17

    .line 228
    aget-object v11, p1, v2

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_16

    .line 229
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 227
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 231
    :cond_17
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 234
    .end local v2    # "i":I
    .end local v3    # "len":I
    :pswitch_1f
    const/4 v11, 0x0

    aget-object v11, p1, v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, p1, v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_18
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 236
    :pswitch_20
    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v11

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 119
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 12
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 245
    sget-object v8, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v9, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v9}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 290
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/BaseFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v7

    invoke-static {v7, v8}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    .line 247
    :sswitch_0
    array-length v2, p1

    .line 248
    .local v2, "len":I
    rem-int/lit8 v8, v2, 0x2

    if-eq v8, v11, :cond_1

    .line 249
    const-string v8, "Expression"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "function parameter number should be 2*n+1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v10}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, v2, -0x1

    div-int/lit8 v7, v7, 0x2

    if-ge v1, v7, :cond_3

    .line 253
    mul-int/lit8 v7, v1, 0x2

    aget-object v7, p1, v7

    invoke-virtual {v7, p2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 254
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v7, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_3
    add-int/lit8 v7, v2, -0x1

    aget-object v7, p1, v7

    invoke-virtual {v7, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    .end local v2    # "len":I
    :sswitch_1
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 262
    array-length v3, p1

    .line 263
    .local v3, "size":I
    aget-object v8, p1, v11

    invoke-virtual {v8, p2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    double-to-int v4, v8

    .line 265
    .local v4, "start":I
    const/4 v8, 0x3

    if-lt v3, v8, :cond_5

    .line 266
    const/4 v8, 0x2

    :try_start_0
    aget-object v8, p1, v8

    invoke-virtual {v8, p2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    double-to-int v2, v8

    .line 267
    .restart local v2    # "len":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 268
    .local v6, "strlen":I
    if-le v2, v6, :cond_4

    .line 269
    move v2, v6

    .line 271
    :cond_4
    add-int v8, v4, v2

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 273
    .end local v2    # "len":I
    .end local v6    # "strlen":I
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 279
    .end local v3    # "size":I
    .end local v4    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :sswitch_2
    aget-object v8, p1, v10

    invoke-virtual {v8, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "expStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 283
    iget-object v8, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 284
    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 285
    iget-object v8, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {v8}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 287
    :cond_6
    iget-object v8, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    iget-object v7, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v7, p2}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 274
    .end local v0    # "expStr":Ljava/lang/String;
    .restart local v3    # "size":I
    .restart local v4    # "start":I
    .restart local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x1d -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch
.end method
