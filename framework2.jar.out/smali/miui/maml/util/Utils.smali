.class public Lmiui/maml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/Utils$XmlTraverseListener;,
        Lmiui/maml/util/Utils$Point;,
        Lmiui/maml/util/Utils$GetChildWrapper;
    }
.end annotation


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 272
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D
    .locals 8
    .param p0, "a"    # Lmiui/maml/util/Utils$Point;
    .param p1, "b"    # Lmiui/maml/util/Utils$Point;
    .param p2, "sqr"    # Z

    .prologue
    .line 115
    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->x:D

    sub-double v0, v4, v6

    .line 116
    .local v0, "x":D
    iget-wide v4, p0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/maml/util/Utils$Point;->y:D

    sub-double v2, v4, v6

    .line 117
    .local v2, "y":D
    if-eqz p2, :cond_0

    .line 118
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 120
    :goto_0
    return-wide v4

    :cond_0
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "_"

    invoke-static {p0, v0, p1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 147
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 148
    .local v0, "dot":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static asserts(Z)V
    .locals 1
    .param p0, "t"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "assert error"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .param p0, "t"    # Z
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .prologue
    .line 158
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "str":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 55
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 57
    .end local p2    # "def":F
    :goto_0
    return p2

    .line 56
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 30
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 32
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 31
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 43
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 45
    .end local p2    # "def":J
    :goto_0
    return-wide p2

    .line 44
    .restart local p2    # "def":J
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 2
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    if-nez p0, :cond_0

    move-object v1, v3

    .line 93
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 87
    .local v2, "nl":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 88
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 89
    .local v1, "item":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v3

    .line 93
    goto :goto_0
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 7
    .param p0, "modeNum"    # I

    .prologue
    .line 251
    const-class v6, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, [Landroid/graphics/PorterDuff$Mode;

    .line 253
    .local v5, "modes":[Landroid/graphics/PorterDuff$Mode;
    if-gez p0, :cond_2

    .line 254
    const/4 p0, 0x0

    .line 259
    :cond_0
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 260
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v0, v5

    .local v0, "arr$":[Landroid/graphics/PorterDuff$Mode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 261
    .local v3, "m":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v6

    if-ne v6, p0, :cond_3

    .line 262
    move-object v4, v3

    .line 266
    .end local v3    # "m":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-object v4

    .line 255
    .end local v0    # "arr$":[Landroid/graphics/PorterDuff$Mode;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_2
    array-length v6, v5

    if-lt p0, v6, :cond_0

    .line 256
    array-length v6, v5

    add-int/lit8 p0, v6, -0x1

    goto :goto_0

    .line 260
    .restart local v0    # "arr$":[Landroid/graphics/PorterDuff$Mode;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "m":Landroid/graphics/PorterDuff$Mode;
    .restart local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 6
    .param p0, "strMode"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 247
    :cond_0
    :goto_0
    return-object v4

    .line 240
    :cond_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 241
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .local v0, "arr$":[Landroid/graphics/PorterDuff$Mode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 242
    .local v3, "m":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    move-object v4, v3

    .line 244
    goto :goto_0

    .line 241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)D
    .locals 4
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 230
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    invoke-direct {v1, p0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 231
    .local v1, "tmp":Lmiui/maml/util/IndexedNumberVariable;
    invoke-virtual {v1}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 232
    .local v0, "d":Ljava/lang/Double;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public static getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 221
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 222
    .local v0, "tmp":Lmiui/maml/util/IndexedStringVariable;
    invoke-virtual {v0}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmiui/maml/util/Utils;->getVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 311
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static mixAlpha(II)I
    .locals 2
    .param p0, "a1"    # I
    .param p1, "a2"    # I

    .prologue
    const/16 v0, 0xff

    .line 188
    if-lt p0, v0, :cond_0

    .line 193
    .end local p1    # "a2":I
    :goto_0
    return p1

    .line 190
    .restart local p1    # "a2":I
    :cond_0
    if-lt p1, v0, :cond_1

    move p1, p0

    .line 191
    goto :goto_0

    .line 193
    :cond_1
    mul-int v0, p0, p1

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0
.end method

.method public static pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;
    .locals 11
    .param p0, "a"    # Lmiui/maml/util/Utils$Point;
    .param p1, "b"    # Lmiui/maml/util/Utils$Point;
    .param p2, "c"    # Lmiui/maml/util/Utils$Point;
    .param p3, "nearestEnd"    # Z

    .prologue
    .line 131
    invoke-virtual {p1, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    .line 132
    .local v0, "AB":Lmiui/maml/util/Utils$Point;
    invoke-virtual {p2, p0}, Lmiui/maml/util/Utils$Point;->minus(Lmiui/maml/util/Utils$Point;)Lmiui/maml/util/Utils$Point;

    move-result-object v1

    .line 133
    .local v1, "AC":Lmiui/maml/util/Utils$Point;
    iget-wide v5, v0, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v7, v1, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v5, v7

    iget-wide v7, v0, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v9, v1, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v7, v9

    add-double v3, v5, v7

    .line 134
    .local v3, "r":D
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v5

    div-double/2addr v3, v5

    .line 135
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    .line 136
    :cond_0
    if-nez p3, :cond_2

    const/4 p0, 0x0

    .end local p0    # "a":Lmiui/maml/util/Utils$Point;
    :cond_1
    :goto_0
    move-object v2, p0

    .line 142
    :goto_1
    return-object v2

    .line 136
    .restart local p0    # "a":Lmiui/maml/util/Utils$Point;
    :cond_2
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 138
    :cond_3
    move-object v2, v0

    .line 139
    .local v2, "D":Lmiui/maml/util/Utils$Point;
    iget-wide v5, v2, Lmiui/maml/util/Utils$Point;->x:D

    mul-double/2addr v5, v3

    iput-wide v5, v2, Lmiui/maml/util/Utils$Point;->x:D

    .line 140
    iget-wide v5, v2, Lmiui/maml/util/Utils$Point;->y:D

    mul-double/2addr v5, v3

    iput-wide v5, v2, Lmiui/maml/util/Utils$Point;->y:D

    .line 141
    invoke-virtual {v2, p0}, Lmiui/maml/util/Utils$Point;->Offset(Lmiui/maml/util/Utils$Point;)V

    goto :goto_1
.end method

.method public static putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;
    .param p3, "value"    # Ljava/lang/Double;

    .prologue
    .line 212
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 213
    .local v0, "tmp":Lmiui/maml/util/IndexedNumberVariable;
    invoke-virtual {v0, p3}, Lmiui/maml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 214
    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 209
    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    invoke-direct {v0, p0, p1, p2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 204
    .local v0, "tmp":Lmiui/maml/util/IndexedStringVariable;
    invoke-virtual {v0, p3}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # D

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 168
    .end local p1    # "def":D
    :goto_0
    return-wide p1

    .line 166
    .restart local p1    # "def":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    .locals 5
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/util/Utils$XmlTraverseListener;

    .prologue
    .line 177
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 178
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 179
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 180
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2, v2}, Lmiui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method
