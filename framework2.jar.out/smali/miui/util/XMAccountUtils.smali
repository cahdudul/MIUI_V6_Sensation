.class public Lmiui/util/XMAccountUtils;
.super Ljava/lang/Object;
.source "XMAccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isXiaomiAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    const-string v0, "@xiaomi.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isXiaomiJID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lmiui/util/XMAccountUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 36
    :goto_0
    return v1

    .line 35
    :cond_0
    invoke-static {p0}, Lmiui/util/XMAccountUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Lmiui/util/XMAccountUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const/4 p0, 0x0

    .line 67
    .end local p0    # "account":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 62
    .end local v0    # "index":I
    .restart local p0    # "account":Ljava/lang/String;
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .restart local v0    # "index":I
    if-lez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
