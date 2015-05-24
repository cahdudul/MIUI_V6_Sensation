.class public Lmiui/maml/data/VariableBinder$Variable;
.super Lmiui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field public mBitmapVar:Lmiui/maml/util/IndexedObjectVariable;

.field protected mDefNumberValue:D

.field protected mDefStringValue:Ljava/lang/String;

.field public mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field public mStringVar:Lmiui/maml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p3}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    .line 183
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 184
    const-string v1, "default"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 190
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_0
.end method

.method private createVar(Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "v"    # Lmiui/maml/data/Variables;

    .prologue
    .line 214
    iget v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 215
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 217
    new-instance v0, Lmiui/maml/util/IndexedObjectVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedObjectVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mBitmapVar:Lmiui/maml/util/IndexedObjectVariable;

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 199
    :cond_0
    return-void
.end method

.method public setValue(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mBitmapVar:Lmiui/maml/util/IndexedObjectVariable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mBitmapVar:Lmiui/maml/util/IndexedObjectVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/util/IndexedObjectVariable;->set(Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method
