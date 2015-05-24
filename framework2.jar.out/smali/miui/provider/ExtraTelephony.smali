.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$QuietModeEnableListener;,
        Lmiui/provider/ExtraTelephony$Hms;,
        Lmiui/provider/ExtraTelephony$AntiSpamAccount;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$AntiSpamSim;,
        Lmiui/provider/ExtraTelephony$AntiSpamMode;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Phonelist;,
        Lmiui/provider/ExtraTelephony$Whitelist;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$ServiceCategory;,
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$MxType;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;,
        Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;
    }
.end annotation


# static fields
.field public static final BANK_CATEGORY_NUMBER_PREFIX_106:Ljava/lang/String; = "106"

.field public static final BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

.field public static final BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

.field public static final BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field private static CONTACT_INFO_PTN:Ljava/util/regex/Pattern; = null

.field public static final DEFAULT_THREADS_LIST_TYPE_SP:I = 0x1

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final INTERCEPT_STATE_ALL:I = 0x0

.field public static final INTERCEPT_STATE_CALL:I = 0x2

.field public static final INTERCEPT_STATE_SMS:I = 0x1

.field public static final LOCAL_PRIVATE_ADDRESS_SYNC:Ljava/lang/String; = "local.priaddr.sync"

.field public static final LOCAL_SMS_SYNC:Ljava/lang/String; = "local.sms.sync"

.field public static final LOCAL_STICKY_THREAD_SYNC:Ljava/lang/String; = "local.stkthrd.sync"

.field public static final LOCAL_SYNC_NAME:Ljava/lang/String; = "localName"

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "antispam"

.field public static final PrefixCode:Ljava/lang/String; = "***"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final THREADS_LIST_TYPE_COMPOSITE:I = 0x0

.field public static final TYPE_INTERCEPT_ADDRESS:I = 0x2

.field public static final TYPE_INTERCEPT_NUMBER:I = 0x1

.field public static final TYPE_INTERCEPT_NUMBER_FRAGMENT:I = 0x3

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x3

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static context:Landroid/content/Context;

.field private static mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

.field private static quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "((\\[[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\])|(\\\u3010[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\\u3011))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "\\[(.+?)\\]((.|\n)*?);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2450
    return-void
.end method

.method static synthetic access$000()Lmiui/provider/ExtraTelephony$QuietModeEnableListener;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/provider/ExtraTelephony;->quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/provider/ExtraTelephony;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .prologue
    .line 1903
    if-nez p2, :cond_1

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1905
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1906
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getCallBlockType(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1155
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1156
    const/4 v0, 0x0

    .line 1160
    .local v0, "blockType":I
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1248
    :cond_0
    :goto_0
    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    .line 1254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_f

    .line 1255
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, v4}, Lmiui/provider/ExtraTelephony;->isVipOfDndm(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1258
    :cond_1
    const/4 v0, 0x1

    .line 1288
    :cond_2
    :goto_1
    return v0

    .line 1165
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1166
    const-string v2, "empty_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1167
    const/4 v0, 0x4

    goto :goto_0

    .line 1173
    :cond_4
    const-string v2, "7"

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1178
    const-string v2, "6"

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1179
    const/16 v0, 0x10

    .line 1180
    goto :goto_0

    .line 1184
    :cond_5
    const-string v2, "white_list_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-static {p0, p1, v3}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    :cond_6
    const-string v2, "black_list_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_7

    invoke-static {p0, p1, v3}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1192
    const/4 v0, 0x3

    .line 1193
    goto :goto_0

    .line 1197
    :cond_7
    const-string v2, "contact_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-static {p0, p1, v3}, Lmiui/provider/ExtraTelephony;->isInHidingWhite(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1203
    :cond_8
    const-string v2, "black_list_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_9

    invoke-static {p0, p1, v3}, Lmiui/provider/ExtraTelephony;->isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1205
    const/4 v0, 0x6

    .line 1206
    goto/16 :goto_0

    .line 1210
    :cond_9
    if-eqz p2, :cond_a

    .line 1211
    const-string v2, "contact_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1214
    const-string v2, "contact_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 1215
    const/4 v0, 0x7

    .line 1216
    goto/16 :goto_0

    .line 1221
    :cond_a
    const-string v2, "black_list_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_b

    invoke-static {p0, p1, v3}, Lmiui/provider/ExtraTelephony;->isAddressInBlack(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1223
    const/16 v0, 0xd

    .line 1224
    goto/16 :goto_0

    .line 1228
    :cond_b
    const-string v2, "stranger_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_c

    const-string v2, "5"

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1234
    :cond_c
    const-string v2, "4"

    invoke-static {p0, p1, v3, v2}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1235
    const/16 v0, 0x10

    .line 1236
    goto/16 :goto_0

    .line 1240
    :cond_d
    const-string v2, "stranger_call_mode"

    invoke-static {p0, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_e

    .line 1241
    const/16 v0, 0x64

    goto/16 :goto_0

    .line 1243
    :cond_e
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1261
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1262
    invoke-static {}, Lmiui/provider/ExtraTelephony;->getZenModeConfig()Ljava/lang/Object;

    move-result-object v1

    .line 1263
    .local v1, "zConfig":Ljava/lang/Object;
    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->getZenModeConfigAllwCalls(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1264
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1267
    :cond_10
    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->getZenModeConfigAllwFrom(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1274
    :pswitch_0
    if-nez p2, :cond_2

    .line 1275
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1269
    :pswitch_1
    invoke-static {p0, p1, p2, v4}, Lmiui/provider/ExtraTelephony;->isVipOfDndm(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1270
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1279
    :pswitch_2
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isContactStar(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1280
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v8, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1726
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1727
    const/4 v0, 0x0

    .line 1728
    .local v0, "blockType":I
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1729
    .local v2, "isContact":Z
    const-string v4, "mode_choose_antispam"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1733
    .local v1, "index":I
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1874
    :cond_0
    :goto_0
    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    if-eq v0, v8, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/16 v4, 0x10

    if-eq v0, v4, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    .line 1881
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 1882
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1883
    const/4 v0, 0x1

    .line 1887
    :cond_1
    return v0

    .line 1738
    :cond_2
    const-string v4, "7"

    invoke-static {p0, p1, v6, v4}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1743
    const-string v4, "6"

    invoke-static {p0, p1, v6, v4}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1744
    const/16 v0, 0x10

    .line 1745
    const/16 v4, 0x10

    invoke-static {p0, p1, v4, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto :goto_0

    .line 1750
    :cond_3
    const-string v4, "white_list_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    invoke-static {p0, p1, v6}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1756
    :cond_4
    const-string v4, "black_list_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_5

    invoke-static {p0, p1, v6}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1758
    const/4 v0, 0x3

    .line 1759
    const/4 v4, 0x3

    invoke-static {p0, p1, v4, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto :goto_0

    .line 1764
    :cond_5
    const-string v4, "contact_sms_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_6

    invoke-static {p0, p1, v6}, Lmiui/provider/ExtraTelephony;->isInHidingWhite(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1770
    :cond_6
    const-string v4, "black_list_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_7

    invoke-static {p0, p1, v6}, Lmiui/provider/ExtraTelephony;->isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1772
    const/4 v0, 0x6

    .line 1773
    const/4 v4, 0x6

    invoke-static {p0, p1, v4, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto :goto_0

    .line 1778
    :cond_7
    if-eqz v2, :cond_8

    .line 1779
    const-string v4, "contact_sms_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1780
    const/4 v0, 0x7

    .line 1781
    invoke-static {p0, p1, v8, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1787
    :cond_8
    const-string v4, "black_list_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_9

    invoke-static {p0, p1, v6}, Lmiui/provider/ExtraTelephony;->isAddressInBlack(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1789
    const/16 v0, 0xd

    .line 1790
    const/16 v4, 0xd

    invoke-static {p0, p1, v4, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1795
    :cond_9
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_d

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1796
    const-string v4, "service_sms_mode"

    invoke-static {p0, v4, v6}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1798
    .local v3, "smsMode":I
    if-nez v3, :cond_a

    .line 1799
    const/4 v0, 0x7

    .line 1800
    invoke-static {p0, p1, v8, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1801
    :cond_a
    if-ne v3, v6, :cond_c

    .line 1802
    invoke-static {p0, p2, v6}, Lmiui/provider/ExtraTelephony;->isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1803
    const/16 v0, 0xc

    .line 1804
    invoke-static {p0, p1, v10, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1805
    :cond_b
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1806
    const/4 v0, 0x4

    .line 1807
    invoke-static {p0, p1, v9, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1809
    :cond_c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1810
    invoke-static {p0, p2, v6}, Lmiui/provider/ExtraTelephony;->isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1811
    const/16 v0, 0xc

    .line 1812
    invoke-static {p0, p1, v10, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1820
    .end local v3    # "smsMode":I
    :cond_d
    const-string v4, "stranger_sms_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    .line 1821
    const/4 v0, 0x7

    .line 1822
    invoke-static {p0, p1, v8, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1828
    :cond_e
    invoke-static {p0, p2, v6}, Lmiui/provider/ExtraTelephony;->isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1829
    const/16 v0, 0xc

    .line 1830
    invoke-static {p0, p1, v10, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1835
    :cond_f
    const/4 v4, 0x2

    const-string v5, "5"

    invoke-static {p0, p1, v4, v5}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1841
    const-string v4, "4"

    invoke-static {p0, p1, v6, v4}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1842
    const/16 v0, 0x10

    .line 1843
    const/16 v4, 0x10

    invoke-static {p0, p1, v4, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1848
    :cond_10
    const/4 v4, 0x3

    invoke-static {p0, p2, v4}, Lmiui/provider/ExtraTelephony;->isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1853
    const/4 v4, 0x2

    invoke-static {p0, p2, v4}, Lmiui/provider/ExtraTelephony;->isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1854
    const/4 v0, 0x4

    .line 1855
    invoke-static {p0, p1, v9, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1860
    :cond_11
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_0

    const-string v4, "stranger_sms_mode"

    invoke-static {p0, v4}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraTelephony;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1863
    if-eqz v1, :cond_12

    .line 1864
    const/4 v0, 0x7

    .line 1865
    invoke-static {p0, p1, v8, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0

    .line 1867
    :cond_12
    const/4 v0, 0x4

    .line 1868
    invoke-static {p0, p1, v9, v1, v7}, Lmiui/provider/ExtraTelephony;->updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;

    goto/16 :goto_0
.end method

.method private static getZenModeConfig()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 1982
    :try_start_0
    const-string v6, "android.app.INotificationManager$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1984
    .local v4, "iNotificationManagerStubClass":Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1985
    .local v5, "instance":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1987
    .local v3, "iNotificationManagerClass":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getZenModeConfig"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1990
    .local v2, "getZenModeConfig":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2003
    .end local v2    # "getZenModeConfig":Ljava/lang/reflect/Method;
    .end local v3    # "iNotificationManagerClass":Ljava/lang/Object;
    .end local v5    # "instance":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ExtraTelephony"

    const-string v7, "Error calling NoMan"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1994
    :try_start_1
    const-string v6, "android.service.notification.ZenModeConfig"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    goto :goto_0

    .line 1995
    :catch_1
    move-exception v1

    .line 1996
    .local v1, "e1":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 2003
    .end local v1    # "e1":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1997
    :catch_2
    move-exception v1

    .line 1998
    .local v1, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1999
    .end local v1    # "e1":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 2000
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getZenModeConfigAllwCalls(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "zenModeConfig"    # Ljava/lang/Object;

    .prologue
    .line 2008
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "allowCalls"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 2016
    :goto_0
    return v1

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 2016
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2011
    :catch_1
    move-exception v0

    .line 2012
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 2013
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2014
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getZenModeConfigAllwFrom(Ljava/lang/Object;)I
    .locals 3
    .param p0, "zenModeConfig"    # Ljava/lang/Object;

    .prologue
    .line 2021
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "allowFrom"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 2029
    :goto_0
    return v1

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 2029
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 2024
    :catch_1
    move-exception v0

    .line 2025
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 2026
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2027
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isAddressInBlack(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1025
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "***"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "1"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1035
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1037
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1039
    .local v8, "states":I
    if-nez v8, :cond_0

    .line 1048
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1051
    .end local v8    # "states":I
    :goto_0
    return v0

    .line 1041
    .restart local v8    # "states":I
    :cond_0
    if-ne v8, p2, :cond_1

    .line 1048
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    .end local v8    # "states":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v10

    .line 1051
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v7

    .line 1046
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v9

    .line 733
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 740
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 744
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    .line 740
    goto :goto_1

    .line 741
    :catch_0
    move-exception v7

    .line 742
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    const-string v1, "Cursor exception in isContact()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isContactStar(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2040
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2041
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2043
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2045
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2046
    const-string v0, "starred"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2056
    :goto_0
    return v0

    .line 2053
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2056
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2050
    :catch_0
    move-exception v7

    .line 2051
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v9

    .line 758
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "1"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 768
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 770
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 774
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    .line 770
    goto :goto_1

    .line 771
    :catch_0
    move-exception v7

    .line 772
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInBlacklist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 1512
    :goto_0
    return v0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "1"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1498
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1500
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1501
    .local v7, "state":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1502
    if-nez v7, :cond_1

    move v0, v9

    .line 1503
    goto :goto_0

    .line 1504
    :cond_1
    if-ne v7, p2, :cond_3

    move v0, v9

    .line 1505
    goto :goto_0

    .line 1508
    .end local v7    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 1512
    goto :goto_0
.end method

.method public static isInHidingWhite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number = ? and isdisplay = ? and type = ? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v10, "2"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1365
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1367
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 1373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1376
    :goto_0
    return v0

    .line 1373
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v9

    .line 1376
    goto :goto_0

    .line 1370
    :catch_0
    move-exception v7

    .line 1371
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1373
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInHidingWhite(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 1348
    :goto_0
    return v0

    .line 1325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number= ? and isdisplay = ? and type= ? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string v10, "2"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1335
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1338
    .local v7, "state":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1339
    if-nez v7, :cond_1

    move v0, v9

    .line 1340
    goto :goto_0

    .line 1341
    :cond_1
    if-ne v7, p2, :cond_3

    move v0, v9

    .line 1342
    goto :goto_0

    .line 1345
    .end local v7    # "state":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 1348
    goto :goto_0
.end method

.method private static isInKeywords(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type = ? "

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1296
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1298
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1300
    .local v8, "keyword":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1312
    .end local v8    # "keyword":Ljava/lang/String;
    :goto_0
    return v0

    .line 1309
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v9

    .line 1312
    goto :goto_0

    .line 1306
    :catch_0
    move-exception v7

    .line 1307
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    const-string v1, "Cursor exception in shouldFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "states"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x0

    .line 1145
    :goto_0
    return v0

    .line 1067
    :cond_0
    const-string v10, ""

    .line 1068
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1070
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1078
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1080
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    const/4 v0, 0x1

    .line 1090
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1083
    :cond_2
    :try_start_1
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1084
    const/4 v0, 0x1

    .line 1090
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1068
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1087
    :catch_0
    move-exception v7

    .line 1088
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1096
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number = ? and type = ? and sync_dirty <> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1105
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1107
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1108
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    .line 1109
    .local v9, "state":I
    if-nez v9, :cond_6

    .line 1110
    const/4 v0, 0x1

    .line 1118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1111
    :cond_6
    if-ne v9, p2, :cond_7

    .line 1112
    const/4 v0, 0x1

    .line 1118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "state":I
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1123
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number= ? and type= ? and sync_dirty <> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1131
    if-eqz v6, :cond_b

    .line 1132
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1133
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1134
    .restart local v9    # "state":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1135
    if-nez v9, :cond_9

    .line 1136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1115
    .end local v9    # "state":I
    :catch_1
    move-exception v7

    .line 1116
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1137
    .restart local v9    # "state":I
    :cond_9
    if-ne v9, p2, :cond_b

    .line 1138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1141
    .end local v9    # "state":I
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1145
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 1416
    :goto_0
    return v0

    .line 1391
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1395
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1397
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1398
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1405
    .local v6, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v6    # "antispamNumber":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v9

    .line 1416
    goto :goto_0

    .line 1410
    :catch_0
    move-exception v8

    .line 1411
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInViplist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 964
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    :goto_0
    return v9

    .line 968
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "3"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 977
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 979
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 983
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    .line 979
    goto :goto_1

    .line 980
    :catch_0
    move-exception v7

    .line 981
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v9

    .line 939
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "2"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 948
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 950
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 954
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    .line 950
    goto :goto_1

    .line 951
    :catch_0
    move-exception v7

    .line 952
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    .line 1563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    const/4 v0, 0x0

    .line 1650
    :goto_0
    return v0

    .line 1568
    :cond_0
    const-string v10, ""

    .line 1569
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type= ? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1580
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1582
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1583
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1584
    const/4 v0, 0x1

    .line 1591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1585
    :cond_2
    :try_start_1
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1586
    const/4 v0, 0x1

    .line 1591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1569
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1588
    :catch_0
    move-exception v7

    .line 1589
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1597
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1607
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1609
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1610
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    .line 1611
    .local v9, "state":I
    if-nez v9, :cond_6

    .line 1612
    const/4 v0, 0x1

    .line 1620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1613
    :cond_6
    if-ne v9, p2, :cond_7

    .line 1614
    const/4 v0, 0x1

    .line 1620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "state":I
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1626
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and isdisplay =?  and type=? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1636
    if-eqz v6, :cond_b

    .line 1637
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1638
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1639
    .restart local v9    # "state":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1640
    if-nez v9, :cond_9

    .line 1641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v9    # "state":I
    :catch_1
    move-exception v7

    .line 1618
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1642
    .restart local v9    # "state":I
    :cond_9
    if-ne v9, p2, :cond_b

    .line 1643
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1646
    .end local v9    # "state":I
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1650
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static isInWhitelist(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "type"    # I

    .prologue
    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const/4 v0, 0x0

    .line 928
    :goto_0
    return v0

    .line 842
    :cond_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 843
    const/4 v9, -0x1

    .line 844
    .local v9, "states":I
    packed-switch p3, :pswitch_data_0

    .line 922
    :cond_1
    :goto_1
    if-nez v9, :cond_6

    .line 923
    const/4 v0, 0x1

    goto :goto_0

    .line 847
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and isdisplay =? and type=? and sync_dirty<> ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 856
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 858
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 864
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 861
    :catch_0
    move-exception v7

    .line 862
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 870
    .end local v6    # "c":Landroid/database/Cursor;
    :pswitch_1
    const-string v10, ""

    .line 871
    .local v10, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 873
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 881
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 883
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 890
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 887
    :catch_1
    move-exception v7

    .line 888
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 897
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "i":I
    .end local v10    # "tmp":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "2"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 907
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 909
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 910
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v9

    .line 915
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 912
    :catch_2
    move-exception v7

    .line 913
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 915
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 924
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    if-ne v9, p2, :cond_7

    .line 925
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 928
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isMarkedNumberAntispam(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1892
    invoke-static {p2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p2

    .line 1893
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, v3}, Lmiui/provider/ExtraTelephony;->isInWhitelist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7"

    invoke-static {p0, p2, v3, v0}, Lmiui/provider/ExtraTelephony;->isInPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getWhich_Mode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1453
    .local v0, "ContactTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x8090013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1455
    .local v1, "contactEntries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v1

    if-ge v3, v10, :cond_0

    .line 1456
    aget-object v10, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1458
    :cond_0
    sget-object v10, Lmiui/provider/ExtraTelephony;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1459
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 1460
    .local v7, "successiveType":I
    const/4 v4, 0x0

    .line 1461
    .local v4, "lastEnd":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1462
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 1463
    .local v6, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1464
    .local v2, "end":I
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1465
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v10, v4, 0x1

    if-eq v6, v10, :cond_1

    if-nez v7, :cond_2

    .line 1466
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 1468
    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 1476
    .end local v2    # "end":I
    .end local v6    # "start":I
    .end local v8    # "type":Ljava/lang/String;
    :goto_2
    return v9

    .line 1472
    .restart local v2    # "end":I
    .restart local v6    # "start":I
    .restart local v8    # "type":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 1474
    :cond_3
    move v4, v2

    .line 1475
    goto :goto_1

    .line 1476
    .end local v2    # "end":I
    .end local v6    # "start":I
    .end local v8    # "type":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "SMSorPhone"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 1554
    :goto_0
    return v0

    .line 1525
    :cond_0
    const-string v9, ""

    .line 1526
    .local v9, "tmp":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "number=? and type=? and sync_dirty<> ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "*"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "1"

    aput-object v5, v4, v11

    const/4 v5, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1537
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1539
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 1542
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1526
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1546
    :catch_0
    move-exception v7

    .line 1547
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor exception in isInWhitelist(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    move v0, v10

    .line 1554
    goto/16 :goto_0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1911
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 1912
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1920
    :cond_0
    :goto_0
    return v0

    .line 1916
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    .line 1920
    goto :goto_0
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2325
    :cond_0
    :goto_0
    return v1

    .line 2319
    :cond_1
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 2320
    .local v0, "phoneNumber":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2321
    goto :goto_0

    .line 2322
    :cond_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "106"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2323
    goto :goto_0
.end method

.method public static isVipOfDndm(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z
    .param p3, "needCheckContact"    # Z

    .prologue
    .line 1001
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    const/4 v0, 0x0

    .line 1021
    :goto_0
    return v0

    .line 1004
    :cond_0
    const/4 v0, 0x0

    .line 1006
    .local v0, "isVip":Z
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 1007
    .local v1, "list":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1016
    :pswitch_0
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInViplist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1017
    goto :goto_0

    .line 1009
    :pswitch_1
    if-nez p3, :cond_1

    .line 1010
    move v0, p2

    goto :goto_0

    .line 1012
    :cond_1
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1014
    goto :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1957
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1958
    const-string v5, ""

    .line 1977
    :goto_0
    return-object v5

    .line 1961
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1962
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1963
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1964
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1967
    .local v0, "c":C
    invoke-static {v4, v0, v2}, Lmiui/provider/ExtraTelephony;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 1968
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1969
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1970
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1963
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1971
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1972
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1973
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1974
    :cond_5
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1977
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .prologue
    const/4 v3, 0x0

    .line 1924
    sput-object p1, Lmiui/provider/ExtraTelephony;->quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1925
    sput-object p0, Lmiui/provider/ExtraTelephony;->context:Landroid/content/Context;

    .line 1926
    sget-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    if-nez v0, :cond_0

    .line 1927
    new-instance v0, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    .line 1929
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 1930
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1938
    :goto_0
    return-void

    .line 1935
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static removeBlacklist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    const-wide/16 v9, -0x1

    .line 789
    .local v9, "id":J
    const/4 v11, 0x0

    .line 790
    .local v11, "syncStatus":I
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type= ? and sync_dirty<> ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "1"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 798
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 800
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 802
    const-string v0, "sync_dirty"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 807
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_3
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 812
    const/4 v0, 0x3

    if-eq v11, v0, :cond_4

    const/4 v0, 0x2

    if-ne v11, v0, :cond_5

    .line 815
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 816
    .local v6, "Values":Landroid/content/ContentValues;
    const-string v0, "sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 804
    .end local v6    # "Values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 805
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in removeBlacklist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 822
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return v0

    .line 1431
    :cond_1
    invoke-static {p0, p2}, Lmiui/provider/ExtraTelephony;->isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1436
    invoke-static {p0, p1}, Lmiui/provider/ExtraTelephony;->isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1441
    invoke-static {p0, p1, p2}, Lmiui/provider/ExtraGuard;->checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static unRegisterQuietModeEnableListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1941
    sput-object v2, Lmiui/provider/ExtraTelephony;->quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1942
    sget-object v0, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    if-eqz v0, :cond_0

    .line 1943
    sget-object v0, Lmiui/provider/ExtraTelephony;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1945
    :cond_0
    sput-object v2, Lmiui/provider/ExtraTelephony;->mDoNotDisturbModeObserver:Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;

    .line 1946
    return-void
.end method

.method public static updatasms(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/content/ContentProviderOperation;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "Blocktype"    # I
    .param p3, "mode"    # I
    .param p4, "isOps"    # Z

    .prologue
    .line 1663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type = 2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1666
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1667
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1668
    if-eqz p4, :cond_0

    .line 1669
    new-instance v13, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1670
    .local v13, "values":Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v13, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1673
    const-string v0, "reason"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    const-string v0, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1675
    sget-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1713
    .end local v13    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    .line 1677
    :cond_0
    new-instance v12, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "antispam"

    invoke-direct {v12, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1679
    .local v12, "mBatchOperations":Lmiui/provider/BatchOperation;
    sget-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1681
    .local v7, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v0, "number"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1682
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1683
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1684
    const-string v0, "reason"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1685
    const-string v0, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1686
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v12, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 1687
    invoke-virtual {v12}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 1689
    const/4 v0, 0x0

    goto :goto_0

    .line 1692
    .end local v7    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "mBatchOperations":Lmiui/provider/BatchOperation;
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1693
    .local v10, "id":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1694
    .local v6, "Values":Landroid/content/ContentValues;
    const-string v0, "reason"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const-string v0, "mode"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    if-eqz p4, :cond_2

    .line 1697
    sget-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1702
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    const/4 v0, 0x0

    .line 1711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1708
    .end local v6    # "Values":Landroid/content/ContentValues;
    .end local v10    # "id":J
    :catch_0
    move-exception v9

    .line 1709
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ExtraTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor exception in isInBlacklist(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1713
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1711
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
