.class public Lmiui/telephony/SimInfoManager;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SimInfoManager$1;,
        Lmiui/telephony/SimInfoManager$SimInfoWrapper;,
        Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;,
        Lmiui/telephony/SimInfoManager$SimInfoRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "SimInfoManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getActiveSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getActiveSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lmiui/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "insertedSimInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "activeSimInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SimInfoManager$SimInfoRecord;

    .line 76
    .local v3, "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    iget-boolean v4, v3, Lmiui/telephony/SimInfoManager$SimInfoRecord;->mIsActivte:Z

    if-eqz v4, :cond_0

    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "simInfoRecord":Lmiui/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-object v0
.end method

.method public static getAllSimCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getAllSimCount()I

    move-result v0

    return v0
.end method

.method public static getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getAllSimInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInsertedSimCount()I

    move-result v0

    return v0
.end method

.method public static getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIdBySlotId(Landroid/content/Context;I)J
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 157
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimIdBySlotId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimInfoByIccId(Ljava/lang/String;)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getSimInfoBySimInfoId(Landroid/content/Context;J)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simInfoId"    # J

    .prologue
    .line 110
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimInfoBySimId(J)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getSimInfoBySlotId(Landroid/content/Context;I)Lmiui/telephony/SimInfoManager$SimInfoRecord;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 120
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSimInfoBySlotId(I)Lmiui/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotIdBySimInfoId(Landroid/content/Context;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simInfoId"    # J

    .prologue
    .line 153
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getSlotIdBySimId(J)I

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 212
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 218
    return-void
.end method

.method public static registerChangeListener(Landroid/content/Context;Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 165
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->registerChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V

    .line 166
    return-void
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "simInfoId"    # J

    .prologue
    .line 204
    const-string v0, "setDataRoaming not supported"

    invoke-static {v0}, Lmiui/telephony/SimInfoManager;->loge(Ljava/lang/String;)V

    .line 205
    const/4 v0, -0x1

    return v0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "simInfoId"    # J

    .prologue
    .line 180
    const-string v0, "setDisplayName not supported"

    invoke-static {v0}, Lmiui/telephony/SimInfoManager;->loge(Ljava/lang/String;)V

    .line 181
    const/4 v0, -0x1

    return v0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simInfoId"    # J

    .prologue
    .line 192
    const-string v0, "setNumber not supported"

    invoke-static {v0}, Lmiui/telephony/SimInfoManager;->loge(Ljava/lang/String;)V

    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method public static unregisterChangeListener(Landroid/content/Context;Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .prologue
    .line 169
    invoke-static {p0}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInstance(Landroid/content/Context;)Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->unregisterChangeListener(Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;)V

    .line 170
    return-void
.end method
