.class public Lmiui/maml/elements/ListScreenElement$ColumnInfo;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;
    }
.end annotation


# instance fields
.field public mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List: invalid item data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 186
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "type":Ljava/lang/String;
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_1
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 191
    :cond_2
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    :cond_3
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 193
    :cond_4
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 195
    :cond_5
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 197
    :cond_6
    # getter for: Lmiui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 200
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List: invalid item data type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    const/4 v5, 0x0

    .line 233
    :cond_0
    return-object v5

    .line 228
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "items":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 231
    .local v2, "item":Ljava/lang/String;
    new-instance v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    invoke-direct {v6, v2}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 208
    :cond_0
    sget-object v0, Lmiui/maml/elements/ListScreenElement$1;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :pswitch_0
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 212
    :pswitch_1
    instance-of v0, p1, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 214
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 216
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 218
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 220
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
