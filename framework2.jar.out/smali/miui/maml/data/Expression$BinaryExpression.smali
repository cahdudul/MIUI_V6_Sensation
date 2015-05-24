.class Lmiui/maml/data/Expression$BinaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation


# instance fields
.field private mExp1:Lmiui/maml/data/Expression;

.field private mExp2:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Ljava/lang/String;)V
    .locals 3
    .param p1, "exp1"    # Lmiui/maml/data/Expression;
    .param p2, "exp2"    # Lmiui/maml/data/Expression;
    .param p3, "op"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 412
    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 415
    iput-object p1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    .line 416
    iput-object p2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    .line 417
    # invokes: Lmiui/maml/data/Expression;->parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    invoke-static {p3}, Lmiui/maml/data/Expression;->access$300(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 418
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_0

    .line 419
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 512
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$BinaryExpression;)V

    .line 513
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 514
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 515
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 4
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 425
    sget-object v0, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 427
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 435
    :pswitch_4
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    .line 425
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

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 5
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "str1":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v3, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "str2":Ljava/lang/String;
    sget-object v3, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v4}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 506
    const-string v3, "Expression"

    const-string v4, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 507
    .end local v1    # "str2":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 496
    .restart local v1    # "str2":Ljava/lang/String;
    :pswitch_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 497
    goto :goto_0

    .line 498
    :cond_1
    if-eqz v0, :cond_0

    .line 500
    if-nez v1, :cond_2

    move-object v1, v0

    .line 501
    goto :goto_0

    .line 503
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 4
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 477
    sget-object v2, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 480
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v5, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v4, v5, :cond_0

    .line 445
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 446
    .local v1, "num1":Ljava/math/BigDecimal;
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 447
    .local v2, "num2":Ljava/math/BigDecimal;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 448
    sget-object v4, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v5, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v5}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 471
    .end local v1    # "num1":Ljava/math/BigDecimal;
    .end local v2    # "num2":Ljava/math/BigDecimal;
    :cond_0
    const-string v4, "Expression"

    const-string v5, "fail to PRECISE evalute BinaryExpression, invalid operator"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    return-object v3

    .line 450
    .restart local v1    # "num1":Ljava/math/BigDecimal;
    .restart local v2    # "num2":Ljava/math/BigDecimal;
    :pswitch_0
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 452
    :pswitch_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 454
    :pswitch_2
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 457
    :pswitch_3
    :try_start_0
    sget-object v4, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 448
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
