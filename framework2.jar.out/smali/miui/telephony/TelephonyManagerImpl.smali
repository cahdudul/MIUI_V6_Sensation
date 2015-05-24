.class public Lmiui/telephony/TelephonyManagerImpl;
.super Ljava/lang/Object;
.source "TelephonyManagerImpl.java"

# interfaces
.implements Lmiui/telephony/TelephonyManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiTelephonyManager"


# instance fields
.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    .line 37
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    return-void
.end method

.method private getCurrentSlotId()I
    .locals 2

    .prologue
    .line 889
    iget v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 890
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v0

    .line 892
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    goto :goto_0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 1105
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1107
    :cond_0
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method


# virtual methods
.method public addCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/CallStateListener;

    .prologue
    .line 872
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "addCallStateListener not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->answerRingingCall()V

    .line 735
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 716
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 779
    return-void
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 1066
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "checkCarrierPrivilegesForPackage not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 712
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->dial(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 843
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "disableApnType not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates()V

    .line 110
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 838
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "enableApnType not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates()V

    .line 98
    return-void
.end method

.method public enableSimplifiedNetworkSettings(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1094
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "enableSimplifiedNetworkSettings not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method public endCall()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->endCall()Z

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getCarrierPackageNamesForIntent not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1054
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getCdmaMdn not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getCdmaMin not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataEnabled()Z
    .locals 2

    .prologue
    .line 1088
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getDataEnabled not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1007
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getIccSimChallengeResponse not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getIsimChallengeResponse not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 2

    .prologue
    .line 989
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getIsimIst not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 995
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getIsimPcscf not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaModeStatic()I
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    return v0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkClass(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 298
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    const-string v0, "gsm.operator.numeric"

    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getCurrentSlotId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lmiui/telephony/TelephonyManagerImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerImpl;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerImpl;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 313
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1013
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getPcscfAddress not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerImpl;->getCurrentPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "networkMode"    # I

    .prologue
    .line 166
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    const-string v0, "gsm.sim.operator.numeric"

    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getCurrentSlotId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lmiui/telephony/TelephonyManagerImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSimplifiedNetworkSettingsEnabled()Z
    .locals 2

    .prologue
    .line 1099
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "getSimplifiedNetworkSettingsEnabled not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 241
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "values":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 243
    aget-object v1, v2, p2

    .line 246
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p3, v1

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPrivileges()I
    .locals 2

    .prologue
    .line 1036
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setGlobalPreferredNetworkType not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 933
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "iccCloseLogicalChannel not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 2
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 953
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "iccExchangeSimIO not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 2
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "IccOpenLogicalChannelResponse not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 947
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "iccTransmitApduBasicChannel not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 940
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "iccTransmitApduLogicalChannel not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 2
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 1048
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "invokeOemRilRequestRaw not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isOffhook()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 594
    return-void
.end method

.method public merge()V
    .locals 2

    .prologue
    .line 742
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "merge not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 750
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "mute not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public networkTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 910
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "networkTypeToString not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "itemID"    # I

    .prologue
    .line 965
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "nvReadItem not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public nvResetConfig(I)Z
    .locals 2
    .param p1, "resetType"    # I

    .prologue
    .line 983
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "nvResetConfig not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 2
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 977
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "nvWriteCdmaPrl not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 2
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 971
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "nvWriteItem not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method public playDtmfTone(CZ)V
    .locals 2
    .param p1, "digit"    # C
    .param p2, "timedShortCode"    # Z

    .prologue
    .line 864
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "playDtmfTone not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method public removeCallStateListener(Landroid/telephony/CallStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/CallStateListener;

    .prologue
    .line 876
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "removeCallStateListener not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 959
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "sendEnvelopeWithStatus not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 695
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 900
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setContext(Landroid/content/Context;)V

    .line 901
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1078
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setDataEnabled not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method public setDataEnabledUsingSubId(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1083
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setDataEnabledUsingSubId not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void
.end method

.method public setDefaultDataSlotId()Z
    .locals 2

    .prologue
    .line 884
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setDefaultDataSlotId not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultVoiceSlotId()V
    .locals 2

    .prologue
    .line 880
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setDefaultVoiceSlotId not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-void
.end method

.method public setGlobalPreferredNetworkType()Z
    .locals 2

    .prologue
    .line 1030
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setGlobalPreferredNetworkType not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v0, 0x0

    return v0
.end method

.method public setImsRegistrationState(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .prologue
    .line 1019
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setImsRegistrationState not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 922
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setLine1NumberForDisplay not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 1042
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setOperatorBrandOverride not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredNetworkType(I)Z
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1024
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "setPreferredNetworkType not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    return v0
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 826
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setRadio(Z)Z

    move-result v0

    return v0
.end method

.method public setRadioPower(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 830
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    move-result v0

    return v0
.end method

.method public showCallScreen()Z
    .locals 2

    .prologue
    .line 720
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "showCallScreen not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 725
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "showCallScreenWithDialpad not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->silenceRinger()V

    .line 755
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 868
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "stopDtmfTone not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 783
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    :goto_0
    return v1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiTelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 801
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 805
    :goto_0
    return-object v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiTelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 792
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 796
    :goto_0
    return v1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiTelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 810
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 814
    :goto_0
    return-object v1

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiTelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public swap()V
    .locals 2

    .prologue
    .line 746
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "swap not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method public toggleHold()V
    .locals 2

    .prologue
    .line 738
    const-string v0, "MiuiTelephonyManager"

    const-string v1, "toggleHold not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public toggleRadioOnOff()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff()V

    .line 823
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lmiui/telephony/TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->updateServiceLocation()V

    .line 835
    return-void
.end method
