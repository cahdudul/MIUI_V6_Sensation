.class Lmiui/maml/data/ContentProviderBinder$VariableArray;
.super Lmiui/maml/data/VariableBinder$VariableArray;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableArray"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field public mMaxCount:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$VariableArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 210
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mColumn:Ljava/lang/String;

    .line 211
    const-string v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mMaxCount:I

    .line 212
    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, "objects":[Ljava/lang/Object;
    if-eqz p1, :cond_2

    .line 233
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 234
    .local v1, "count":I
    iget v6, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mMaxCount:I

    if-le v1, v6, :cond_0

    .line 235
    iget v1, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mMaxCount:I

    .line 237
    :cond_0
    if-lez v1, :cond_2

    .line 240
    :try_start_0
    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mColumn:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 246
    .local v0, "col":I
    new-array v4, v1, [Ljava/lang/Object;

    .line 247
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 250
    iget v6, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mType:I

    sparse-switch v6, :sswitch_data_0

    .line 262
    iget v6, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 279
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "col":I
    .end local v3    # "index":I
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ContentProviderBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal column:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mColumn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return-void

    .line 252
    .restart local v0    # "col":I
    .restart local v1    # "count":I
    .restart local v3    # "index":I
    :sswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 255
    :sswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 256
    .local v5, "valueBytes":[B
    if-eqz v5, :cond_1

    .line 257
    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 264
    .end local v5    # "valueBytes":[B
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 267
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 270
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 273
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    goto :goto_1

    .line 284
    .end local v0    # "col":I
    .end local v1    # "count":I
    .end local v3    # "index":I
    :cond_2
    invoke-virtual {p0, v4}, Lmiui/maml/data/ContentProviderBinder$VariableArray;->fillData([Ljava/lang/Object;)V

    goto :goto_2

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch

    .line 262
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lmiui/maml/data/VariableBinder$VariableArray;->parseType(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "ret":I
    const-string v1, "blob.bitmap"

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$VariableArray;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/16 v0, 0x3e9

    .line 227
    :cond_0
    return v0
.end method
