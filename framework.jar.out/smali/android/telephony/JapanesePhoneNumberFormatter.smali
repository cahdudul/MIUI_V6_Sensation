.class Landroid/telephony/JapanesePhoneNumberFormatter;
.super Ljava/lang/Object;
.source "JapanesePhoneNumberFormatter.java"


# static fields
.field private static FORMAT_MAP:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x4ba

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    return-void

    :array_0
    .array-data 2
        -0x64s
        0xas
        0xdcs
        -0xfs
        0x19as
        0x212s
        0x4b0s
        0x29es
        0x30cs
        0x424s
        -0x64s
        -0x19s
        0x14s
        0x28s
        0x46s
        0x64s
        0x96s
        0xbes
        0xc8s
        0xd2s
        -0x24s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x1es
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x32s
        -0x23s
        0x3cs
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x50s
        0x5as
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x6es
        0x78s
        0x82s
        -0x23s
        0x8cs
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        0xa0s
        0xaas
        0xb4s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x2ds
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x64s
        -0x64s
        0xe6s
        0xfas
        0x104s
        0x10es
        0x140s
        0x154s
        0x168s
        0x186s
        -0x23s
        -0x19s
        -0x19s
        0xf0s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        0x118s
        0x122s
        0x12cs
        0x136s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        0x14as
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x15es
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        0x172s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x17cs
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        0x190s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0xfs
        -0xfs
        0x1a4s
        0x1ccs
        -0x19s
        -0x19s
        0x1d6s
        0x1e0s
        0x1f4s
        0x1fes
        -0xfs
        -0x19s
        0x1aes
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        0x1b8s
        0x1c2s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0xfs
        -0x19s
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0x19s
        -0x19s
        -0xfs
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        0x1eas
        -0xfs
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0xfs
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0xfs
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        0x208s
        -0x64s
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x1as
        -0x64s
        -0x19s
        0x21cs
        0x244s
        0x24es
        0x258s
        0x262s
        0x276s
        0x280s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x226s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        0x230s
        0x23as
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x24s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x26cs
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x28as
        -0x23s
        0x294s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x1as
        -0x64s
        0x2a8s
        0x2b2s
        0x2bcs
        -0x19s
        0x2d0s
        0x2das
        -0x19s
        0x2e4s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x2c6s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        0x2ees
        0x2f8s
        0x302s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x316s
        -0x64s
        0x320s
        0x352s
        0x384s
        0x398s
        0x3acs
        0x406s
        0x410s
        0x41as
        -0x24s
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        0x32as
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        0x334s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        0x33es
        -0x23s
        0x348s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x64s
        -0x19s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x35cs
        -0x23s
        0x366s
        0x370s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        0x37as
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x2ds
        -0x2ds
        -0x19s
        -0x2ds
        -0x2ds
        -0x19s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x38es
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        0x3a2s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x19s
        0x3b6s
        -0x19s
        0x3cas
        0x3des
        -0x23s
        0x3e8s
        0x3f2s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x3c0s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x3d4s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x3fcs
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x1as
        -0x64s
        0x42es
        0x438s
        0x442s
        0x456s
        0x460s
        0x46as
        0x474s
        0x488s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x44cs
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x47es
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x492s
        -0x19s
        -0x23s
        0x49cs
        -0x23s
        0x4a6s
        -0x23s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x2ds
        -0x2ds
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x1as
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 13
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 161
    const/4 v6, 0x1

    .line 162
    .local v6, "rootIndex":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    .line 163
    .local v5, "length":I
    if-le v5, v12, :cond_1

    invoke-interface {p0, v11, v12}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+81"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 165
    const/4 v6, 0x3

    .line 170
    :cond_0
    invoke-interface {p0, v11, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 173
    .local v7, "saved":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 174
    .local v4, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 175
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    .line 176
    add-int/lit8 v9, v4, 0x1

    invoke-interface {p0, v4, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 166
    .end local v4    # "i":I
    .end local v7    # "saved":Ljava/lang/CharSequence;
    :cond_1
    const/4 v9, 0x1

    if-lt v5, v9, :cond_2

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-eq v9, v10, :cond_0

    .line 217
    :cond_2
    :goto_1
    return-void

    .line 178
    .restart local v4    # "i":I
    .restart local v7    # "saved":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_4
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    .line 185
    move v4, v6

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "base":I
    :goto_2
    if-ge v4, v5, :cond_8

    .line 188
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 189
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    .line 190
    invoke-interface {p0, v11, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 193
    :cond_5
    sget-object v9, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    add-int v10, v0, v1

    add-int/lit8 v10, v10, -0x30

    aget-short v8, v9, v10

    .line 194
    .local v8, "value":S
    if-gez v8, :cond_9

    .line 195
    const/16 v9, -0x64

    if-gt v8, v9, :cond_6

    .line 196
    invoke-interface {p0, v11, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 199
    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    add-int v3, v6, v9

    .line 200
    .local v3, "dashPos2":I
    if-le v5, v3, :cond_7

    .line 201
    const-string v9, "-"

    invoke-interface {p0, v3, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 203
    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    add-int v2, v6, v9

    .line 204
    .local v2, "dashPos1":I
    if-le v5, v2, :cond_8

    .line 205
    const-string v9, "-"

    invoke-interface {p0, v2, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 214
    .end local v1    # "ch":C
    .end local v2    # "dashPos1":I
    .end local v3    # "dashPos2":I
    .end local v8    # "value":S
    :cond_8
    if-le v5, v12, :cond_2

    if-ne v6, v12, :cond_2

    .line 215
    const-string v9, "-"

    invoke-interface {p0, v6, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 209
    .restart local v1    # "ch":C
    .restart local v8    # "value":S
    :cond_9
    move v0, v8

    .line 210
    add-int/lit8 v4, v4, 0x1

    .line 212
    goto :goto_2
.end method
