.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$1;,
        Lmiui/maml/data/Variables$VarBucket;,
        Lmiui/maml/data/Variables$ValueInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    .line 100
    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    .line 102
    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return v0
.end method


# virtual methods
.method public getNum(I)Ljava/lang/Double;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getNum(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerNumberVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getNum(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getNumVer(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    return v0
.end method

.method public getObj(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerObjVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getObj(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjVer(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    return v0
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerStringVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrVer(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    return v0
.end method

.method public final putNum(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 125
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 126
    return-void
.end method

.method public final putNum(ILjava/lang/Double;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerNumberVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/maml/data/Variables;->putNum(ID)V

    .line 118
    return-void
.end method

.method public final putNum(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerNumberVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 122
    return-void
.end method

.method public final putObj(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 145
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerObjVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->putObj(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public final putStr(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public putStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerStringVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->putStr(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public registerNumberVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerObjVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerStringVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/maml/data/Variables;->mStringBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    .line 187
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    .line 188
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    .line 189
    return-void
.end method
