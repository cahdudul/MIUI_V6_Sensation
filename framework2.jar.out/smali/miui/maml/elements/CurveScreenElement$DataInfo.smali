.class Lmiui/maml/elements/CurveScreenElement$DataInfo;
.super Ljava/lang/Object;
.source "CurveScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/CurveScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataInfo"
.end annotation


# instance fields
.field private mCachedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mExps:[Lmiui/maml/data/Expression;

.field public mVarArray:Lmiui/maml/elements/VariableArrayElement;

.field final synthetic this$0:Lmiui/maml/elements/CurveScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/CurveScreenElement;)V
    .locals 1

    .prologue
    .line 21
    iput-object p1, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->this$0:Lmiui/maml/elements/CurveScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mCachedPoints:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public registerVarArrayObserver(Z)V
    .locals 2
    .param p1, "reg"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    iget-object v1, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->this$0:Lmiui/maml/elements/CurveScreenElement;

    invoke-virtual {v0, v1, p1}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    invoke-virtual {v0}, Lmiui/maml/elements/VariableArrayElement;->getItemSize()I

    move-result v0

    goto :goto_0
.end method

.method public toPoints(Lmiui/maml/data/Variables;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mCachedPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    if-eqz v7, :cond_1

    .line 31
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    .local v0, "arr$":[Lmiui/maml/data/Expression;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 32
    .local v1, "exp":Lmiui/maml/data/Expression;
    iget-object v8, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mCachedPoints:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    double-to-float v7, v9

    goto :goto_1

    .line 35
    .end local v0    # "arr$":[Lmiui/maml/data/Expression;
    .end local v1    # "exp":Lmiui/maml/data/Expression;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    invoke-virtual {v7}, Lmiui/maml/elements/VariableArrayElement;->getItemValues()[D

    move-result-object v6

    .line 36
    .local v6, "values":[D
    move-object v0, v6

    .local v0, "arr$":[D
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-wide v4, v0, v2

    .line 37
    .local v4, "v":D
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mCachedPoints:Ljava/util/ArrayList;

    double-to-float v8, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    .end local v0    # "arr$":[D
    .end local v4    # "v":D
    .end local v6    # "values":[D
    :cond_2
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mCachedPoints:Ljava/util/ArrayList;

    return-object v7
.end method
