.class public Lmiui/maml/util/IndexedStringVariable;
.super Ljava/lang/Object;
.source "IndexedStringVariable.java"


# instance fields
.field private final mIndex:I

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .end local p2    # "property":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3, p2}, Lmiui/maml/data/Variables;->registerStringVariable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    .line 17
    iput-object p3, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    .line 18
    return-void

    .line 16
    .restart local p2    # "property":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    return v0
.end method

.method public final getVersion()I
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/maml/util/IndexedStringVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putStr(ILjava/lang/String;)V

    .line 22
    return-void
.end method
