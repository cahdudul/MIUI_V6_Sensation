.class public Lmiui/maml/elements/VariableArrayElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/VariableArrayElement$Item;,
        Lmiui/maml/elements/VariableArrayElement$Var;,
        Lmiui/maml/elements/VariableArrayElement$VarObserver;,
        Lmiui/maml/elements/VariableArrayElement$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field mData:[Ljava/lang/Object;

.field private mItemCount:I

.field private mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field mType:Lmiui/maml/elements/VariableArrayElement$Type;

.field mVarObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/maml/elements/VariableArrayElement$VarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 46
    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "typeStr":Ljava/lang/String;
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    .line 189
    :goto_0
    const-string v1, "Vars"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Var"

    new-instance v3, Lmiui/maml/elements/VariableArrayElement$1;

    invoke-direct {v3, p0}, Lmiui/maml/elements/VariableArrayElement$1;-><init>(Lmiui/maml/elements/VariableArrayElement;)V

    invoke-static {v1, v2, v3}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 196
    const-string v1, "Items"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Item"

    new-instance v3, Lmiui/maml/elements/VariableArrayElement$2;

    invoke-direct {v3, p0}, Lmiui/maml/elements/VariableArrayElement$2;-><init>(Lmiui/maml/elements/VariableArrayElement;)V

    invoke-static {v1, v2, v3}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 202
    iget-boolean v1, p0, Lmiui/maml/elements/VariableArrayElement;->mHasName:Z

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mName:Ljava/lang/String;

    const-string v3, "count"

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 206
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 183
    .restart local v0    # "typeStr":Ljava/lang/String;
    :cond_1
    const-string v1, "bitmap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->BITMAP:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    goto :goto_0

    .line 186
    :cond_2
    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/VariableArrayElement;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/VariableArrayElement;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 211
    return-void
.end method

.method protected doTick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 215
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 216
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 217
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->tick()V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public getItemSize()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    return v0
.end method

.method public getItemValues()[D
    .locals 4

    .prologue
    .line 283
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [D

    .line 284
    .local v1, "values":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 285
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Item;

    invoke-virtual {p0}, Lmiui/maml/elements/VariableArrayElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-object v1
.end method

.method public init()V
    .locals 5

    .prologue
    .line 223
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 225
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->init()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 228
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v3, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 231
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 232
    iget v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 233
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    if-ge v1, v2, :cond_2

    .line 234
    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Item;

    iget-object v2, v2, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_2
    return-void
.end method

.method public registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .locals 1
    .param p1, "observer"    # Lmiui/maml/elements/VariableArrayElement$VarObserver;
    .param p2, "reg"    # Z

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    .line 275
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setItems([Ljava/lang/Object;)V
    .locals 9
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 240
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 241
    if-nez p1, :cond_3

    .line 242
    const/4 v6, 0x0

    iput v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 249
    :goto_0
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v6, :cond_0

    .line 250
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v7, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 253
    :cond_0
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    array-length v6, v6

    iget v7, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    if-eq v6, v7, :cond_2

    .line 254
    :cond_1
    iget v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 257
    :cond_2
    iget v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 259
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/VariableArrayElement$Var;

    .line 260
    .local v5, "v":Lmiui/maml/elements/VariableArrayElement$Var;
    invoke-virtual {v5}, Lmiui/maml/elements/VariableArrayElement$Var;->init()V

    goto :goto_1

    .line 244
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "v":Lmiui/maml/elements/VariableArrayElement$Var;
    :cond_3
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 245
    .local v3, "object":Ljava/lang/Object;
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/VariableArrayElement$Item;

    invoke-direct {v7, p0, v3}, Lmiui/maml/elements/VariableArrayElement$Item;-><init>(Lmiui/maml/elements/VariableArrayElement;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v3    # "object":Ljava/lang/Object;
    :cond_4
    array-length v6, p1

    iput v6, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    goto :goto_0

    .line 263
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/VariableArrayElement$VarObserver;

    .line 264
    .local v4, "observer":Lmiui/maml/elements/VariableArrayElement$VarObserver;
    if-eqz v4, :cond_6

    .line 265
    iget-object v6, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    invoke-interface {v4, v6}, Lmiui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    goto :goto_3

    .line 268
    .end local v4    # "observer":Lmiui/maml/elements/VariableArrayElement$VarObserver;
    :cond_7
    return-void
.end method
