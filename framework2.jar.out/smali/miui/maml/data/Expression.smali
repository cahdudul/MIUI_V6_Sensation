.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$1;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$Ope;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static mOpePriority:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/Expression;->mOpePriority:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/maml/data/Expression;->parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 643
    .local v0, "ex":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .param p0, "token"    # Lmiui/maml/data/Expression$Tokenizer$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p1, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 736
    iget-object v2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 737
    .local v1, "newExps":[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 754
    :goto_0
    return-object v2

    .line 743
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 744
    new-instance v4, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>([Lmiui/maml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 745
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 746
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    const-string v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 754
    goto :goto_0
.end method

.method private static buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 15
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 647
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v1, v12

    .line 732
    :cond_0
    :goto_0
    return-object v1

    .line 654
    :cond_1
    new-instance v9, Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {v9, p0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 655
    .local v9, "tk":Lmiui/maml/data/Expression$Tokenizer;
    const/4 v10, 0x0

    .line 656
    .local v10, "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v8, 0x0

    .line 657
    .local v8, "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 658
    .local v7, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 659
    .local v3, "expStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    const/4 v4, 0x0

    .line 660
    .local v4, "minus":Z
    :goto_1
    invoke-virtual {v9}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 664
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 719
    :goto_2
    move-object v8, v10

    goto :goto_1

    .line 670
    :pswitch_0
    const/4 v5, 0x0

    .line 671
    .local v5, "newExp":Lmiui/maml/data/Expression;
    sget-object v11, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_1

    :cond_2
    move-object v6, v5

    .line 692
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    .local v6, "newExp":Lmiui/maml/data/Expression;
    :goto_3
    if-eqz v4, :cond_a

    .line 693
    new-instance v5, Lmiui/maml/data/Expression$UnaryExpression;

    const-string v11, "-"

    invoke-direct {v5, v6, v11}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .line 695
    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 673
    :pswitch_1
    new-instance v5, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 674
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    .restart local v6    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 676
    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_2
    new-instance v5, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 677
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    .restart local v6    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 679
    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_3
    new-instance v5, Lmiui/maml/data/Expression$NumberExpression;

    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const-string v11, "-"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 680
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    const/4 v4, 0x0

    move-object v6, v5

    .line 681
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    .restart local v6    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 679
    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    :cond_3
    const-string v11, ""

    goto :goto_5

    .line 683
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_4
    new-instance v5, Lmiui/maml/data/Expression$StringExpression;

    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v5, v11}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    move-object v6, v5

    .line 684
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    .restart local v6    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 686
    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_5
    invoke-static {v10, v7}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 687
    if-nez v5, :cond_2

    move-object v1, v12

    .line 688
    goto/16 :goto_0

    .line 698
    .end local v5    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_6
    iget-object v11, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v8, :cond_4

    iget-object v11, v8, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v13, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v11, v13, :cond_6

    .line 700
    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    .line 707
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 708
    .local v1, "exp2":Lmiui/maml/data/Expression;
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 709
    .local v0, "exp1":Lmiui/maml/data/Expression;
    new-instance v13, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v13, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .end local v0    # "exp1":Lmiui/maml/data/Expression;
    .end local v1    # "exp2":Lmiui/maml/data/Expression;
    :cond_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v13, v10, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-static {v13, v11}, Lmiui/maml/data/Expression;->cmpOpePri(Lmiui/maml/data/Expression$Ope;Lmiui/maml/data/Expression$Ope;)I

    move-result v11

    if-gtz v11, :cond_7

    .line 703
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    const/4 v13, 0x2

    if-ge v11, v13, :cond_5

    .line 704
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid operation position:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 705
    goto/16 :goto_0

    .line 711
    :cond_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const/4 v4, 0x0

    .line 714
    goto/16 :goto_2

    .line 716
    :pswitch_7
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 722
    :cond_8
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-eq v11, v13, :cond_9

    .line 723
    const-string v11, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to buid: invalid expression:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    .line 724
    goto/16 :goto_0

    .line 727
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Expression;

    .line 728
    .restart local v1    # "exp2":Lmiui/maml/data/Expression;
    :goto_6
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 729
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression;

    .line 730
    .restart local v0    # "exp1":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v11, v11, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v11}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V

    .end local v1    # "exp2":Lmiui/maml/data/Expression;
    .local v2, "exp2":Lmiui/maml/data/Expression;
    move-object v1, v2

    .line 731
    .end local v2    # "exp2":Lmiui/maml/data/Expression;
    .restart local v1    # "exp2":Lmiui/maml/data/Expression;
    goto :goto_6

    .end local v0    # "exp1":Lmiui/maml/data/Expression;
    .end local v1    # "exp2":Lmiui/maml/data/Expression;
    .restart local v6    # "newExp":Lmiui/maml/data/Expression;
    :cond_a
    move-object v5, v6

    .end local v6    # "newExp":Lmiui/maml/data/Expression;
    .restart local v5    # "newExp":Lmiui/maml/data/Expression;
    goto/16 :goto_4

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 671
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 5
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    .line 605
    invoke-static {p0}, Lmiui/maml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    .line 606
    .local v0, "exps":[Lmiui/maml/data/Expression;
    array-length v3, v0

    new-array v2, v3, [Lmiui/maml/data/RootExpression;

    .line 607
    .local v2, "roots":[Lmiui/maml/data/RootExpression;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 608
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v2, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    new-instance v3, Lmiui/maml/data/RootExpression;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Expression;)V

    goto :goto_1

    .line 610
    :cond_1
    return-object v2
.end method

.method private static buildMultipleInner(Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "bracketCount":I
    const/4 v4, 0x0

    .line 616
    .local v4, "inApostrophe":Z
    const/4 v6, 0x0

    .line 617
    .local v6, "start":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, "exps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 619
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 620
    .local v1, "c":C
    if-nez v4, :cond_0

    .line 621
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 622
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v6, v3, 0x1

    .line 630
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 631
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 618
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 627
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 631
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 634
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 635
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/Expression;->buildInner(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 638
    .local v5, "ret":[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .param p0, "params"    # [Lmiui/maml/data/Expression;

    .prologue
    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 759
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 760
    const/4 v1, 0x0

    .line 762
    :goto_1
    return v1

    .line 758
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static cmpOpePri(Lmiui/maml/data/Expression$Ope;Lmiui/maml/data/Expression$Ope;)I
    .locals 3
    .param p0, "op1"    # Lmiui/maml/data/Expression$Ope;
    .param p1, "op2"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 60
    sget-object v0, Lmiui/maml/data/Expression;->mOpePriority:[I

    invoke-virtual {p0}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sget-object v1, Lmiui/maml/data/Expression;->mOpePriority:[I

    invoke-virtual {p1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 596
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 600
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 592
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    .locals 1
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    .line 56
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    goto :goto_0

    .line 56
    :cond_4
    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Lmiui/maml/data/ExpressionVisitor;)V
.end method

.method public abstract evaluate(Lmiui/maml/data/Variables;)D
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 781
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    .line 770
    .local v1, "value":D
    :try_start_0
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 772
    :goto_0
    return-object v3

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method
