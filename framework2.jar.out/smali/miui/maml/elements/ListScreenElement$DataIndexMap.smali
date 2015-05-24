.class Lmiui/maml/elements/ListScreenElement$DataIndexMap;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataIndexMap"
.end annotation


# instance fields
.field public mData:[Ljava/lang/Object;

.field public mElementIndex:I

.field public mNeedRebind:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 154
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;I)V

    .line 155
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "elementIndex"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 149
    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 150
    iput p2, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 151
    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 159
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 162
    :cond_0
    return-void
.end method
