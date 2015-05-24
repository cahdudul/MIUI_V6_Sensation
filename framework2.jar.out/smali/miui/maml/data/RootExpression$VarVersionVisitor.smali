.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;

.field private mVar:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/data/RootExpression;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 45
    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    .line 46
    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    .line 47
    iput-object p2, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    .line 48
    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression$FunctionExpression;)V
    .locals 3
    .param p1, "exp"    # Lmiui/maml/data/Expression$FunctionExpression;

    .prologue
    .line 65
    invoke-virtual {p1}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "func":Ljava/lang/String;
    const-string v1, "rand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "eval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "preciseeval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    iget-object v1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v2, 0x1

    # setter for: Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z
    invoke-static {v1, v2}, Lmiui/maml/data/RootExpression;->access$002(Lmiui/maml/data/RootExpression;Z)Z

    .line 69
    :cond_1
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$NumberVariableExpression;)V
    .locals 5
    .param p1, "exp"    # Lmiui/maml/data/Expression$NumberVariableExpression;

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression$NumberVariableExpression;->evaluate(Lmiui/maml/data/Variables;)D

    .line 54
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v1, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Lmiui/maml/data/Expression$NumberVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lmiui/maml/data/Expression$NumberVariableExpression;->getVersion()I

    move-result v3

    sget-object v4, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IILmiui/maml/data/RootExpression$VarVersion$Type;)V

    invoke-virtual {v0, v1}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .line 55
    return-void
.end method

.method public visit(Lmiui/maml/data/Expression$StringVariableExpression;)V
    .locals 5
    .param p1, "exp"    # Lmiui/maml/data/Expression$StringVariableExpression;

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mVar:Lmiui/maml/data/Variables;

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression$StringVariableExpression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v1, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Lmiui/maml/data/Expression$StringVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lmiui/maml/data/Expression$StringVariableExpression;->getVersion()I

    move-result v3

    sget-object v4, Lmiui/maml/data/RootExpression$VarVersion$Type;->STR:Lmiui/maml/data/RootExpression$VarVersion$Type;

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IILmiui/maml/data/RootExpression$VarVersion$Type;)V

    invoke-virtual {v0, v1}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .line 61
    return-void
.end method
