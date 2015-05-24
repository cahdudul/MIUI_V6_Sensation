.class Lmiui/maml/data/Variables$VarBucket;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$ValueInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mNextIndex:I

.field private mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mObjects:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Variables$VarBucket;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/data/Variables$1;

    .prologue
    .line 31
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    invoke-direct {p0}, Lmiui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method

.method private static final getIndex(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nextIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 90
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v1, 0x0

    .line 63
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 66
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;

    .line 67
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVer(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v1, -0x1

    .line 71
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 74
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;

    .line 75
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-eqz v0, :cond_0

    iget v1, v0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    if-gez p1, :cond_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 50
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 53
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ValueInfo;

    .line 54
    .local v0, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lmiui/maml/data/Variables$ValueInfo;

    .end local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lmiui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    .line 56
    .restart local v0    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, p2}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized registerVariable(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$VarBucket;->mObjects:Ljava/util/HashMap;

    iget v2, p0, Lmiui/maml/data/Variables$VarBucket;->mNextIndex:I

    invoke-static {v1, p1, v2}, Lmiui/maml/data/Variables$VarBucket;->getIndex(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, "index":I
    iget v1, p0, Lmiui/maml/data/Variables$VarBucket;->mNextIndex:I

    if-ne v0, v1, :cond_0

    .line 39
    iget v1, p0, Lmiui/maml/data/Variables$VarBucket;->mNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/data/Variables$VarBucket;->mNextIndex:I

    .line 40
    :cond_0
    # getter for: Lmiui/maml/data/Variables;->DBG:Z
    invoke-static {}, Lmiui/maml/data/Variables;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "Variables"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerVariable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    monitor-exit p0

    return v0

    .line 37
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 79
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "M":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
