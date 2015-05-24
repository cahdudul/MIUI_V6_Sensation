.class Lmiui/maml/data/Expression$StringExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringExpression"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 328
    iput-object p1, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 348
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression$StringExpression;)V

    .line 349
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 3
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 335
    .local v0, "value":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 338
    .end local v0    # "value":Ljava/lang/Double;
    :goto_0
    return-wide v1

    .line 336
    :catch_0
    move-exception v1

    .line 338
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 343
    iget-object v0, p0, Lmiui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    return-object v0
.end method
