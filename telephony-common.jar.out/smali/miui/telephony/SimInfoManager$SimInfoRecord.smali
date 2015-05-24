.class public Lmiui/telephony/SimInfoManager$SimInfoRecord;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SimInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInfoRecord"
.end annotation


# instance fields
.field public mDataRoaming:I

.field public mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mIsActivte:Z

.field public mNumber:Ljava/lang/String;

.field public mSimInfoId:J

.field public mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
