.class Lmiui/maml/ActionCommand$ScreenElementMethodCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenElementMethodCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    }
.end annotation


# static fields
.field static PRIMITIVE_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;

.field private mParamTypes:[Ljava/lang/String;

.field private mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

.field private mParams:[Lmiui/maml/data/Expression;

.field private mReturnStrVar:Lmiui/maml/util/IndexedStringVariable;

.field private mReturnVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mTarget:Lmiui/maml/elements/ScreenElement;

.field private mTargetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 1361
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1383
    const-string v9, "target"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetName:Ljava/lang/String;

    .line 1384
    const-string v9, "method"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    .line 1385
    const-string v9, "params"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1386
    .local v5, "params":Ljava/lang/String;
    invoke-static {v5}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    .line 1387
    const-string v9, "paramTypes"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1388
    .local v4, "paramTypes":Ljava/lang/String;
    const-string v9, ","

    invoke-static {v4, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    .line 1389
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v9, v9

    new-array v9, v9, [Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    .line 1390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 1391
    invoke-static {}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->values()[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    move-result-object v0

    .local v0, "arr$":[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v8, v0, v2

    .line 1392
    .local v8, "t":Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1393
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aput-object v8, v9, v1

    .line 1391
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1390
    .end local v8    # "t":Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v0    # "arr$":[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    const-string v9, "return"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1398
    .local v6, "returnVar":Ljava/lang/String;
    const-string v9, "returnType"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, "returnVarType":Ljava/lang/String;
    const-string v9, "string"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1400
    new-instance v9, Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnStrVar:Lmiui/maml/util/IndexedStringVariable;

    .line 1404
    :goto_2
    return-void

    .line 1402
    :cond_3
    new-instance v9, Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_2
.end method

.method private final varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1407
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1409
    .local v1, "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p1, :cond_0

    .line 1411
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1413
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1423
    :cond_0
    :goto_1
    return-object v1

    .line 1415
    :catch_0
    move-exception v2

    .line 1416
    .local v2, "ne":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1417
    goto :goto_0

    .line 1419
    .end local v2    # "ne":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActionCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    .line 1455
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 1456
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v4, v4

    new-array v2, v4, [Ljava/lang/Object;

    .line 1457
    .local v2, "paramValues":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1458
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 1459
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1457
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    :cond_0
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1464
    :pswitch_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1

    .line 1468
    :pswitch_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1

    .line 1471
    :pswitch_2
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1

    .line 1474
    :pswitch_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1

    .line 1477
    :pswitch_4
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1

    .line 1480
    :pswitch_5
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v1

    goto/16 :goto_1

    .line 1483
    :pswitch_6
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v1

    goto/16 :goto_1

    .line 1488
    :cond_1
    :try_start_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTarget:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1489
    .local v3, "returnVal":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 1490
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnStrVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v4, :cond_3

    .line 1491
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnStrVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 1504
    .end local v1    # "i":I
    .end local v2    # "paramValues":[Ljava/lang/Object;
    .end local v3    # "returnVal":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 1493
    .restart local v1    # "i":I
    .restart local v2    # "paramValues":[Ljava/lang/Object;
    .restart local v3    # "returnVal":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnVar:Lmiui/maml/util/IndexedNumberVariable;

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/Number;

    .end local v3    # "returnVal":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    :goto_3
    invoke-virtual {v6, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "ActionCommand"

    const-string v5, "illegal parameter"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1493
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "returnVal":Ljava/lang/Object;
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 1498
    .end local v3    # "returnVal":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "ActionCommand"

    const-string v5, "not accessible"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1500
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1501
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "ActionCommand"

    const-string v5, "invoke exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public init()V
    .locals 6

    .prologue
    .line 1428
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v3, v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 1429
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTarget:Lmiui/maml/elements/ScreenElement;

    .line 1430
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTarget:Lmiui/maml/elements/ScreenElement;

    if-eqz v3, :cond_1

    .line 1432
    :try_start_0
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Class;

    .line 1433
    .local v2, "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1434
    sget-object v3, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    sget-object v3, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 1433
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1437
    :cond_0
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1446
    .end local v1    # "i":I
    .end local v2    # "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "ActionCommand"

    const-string v4, "illegal paramTypes"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 1437
    .restart local v1    # "i":I
    .restart local v2    # "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1441
    :cond_3
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTarget:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 1442
    iget-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1443
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 1444
    const-string v3, "ActionCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not accessible."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
