.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
.super Landroid/os/Handler;
.source "MiuiAdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x5

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ADN_SIZE_LOAD_DONE:I = 0x2

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x4

.field static final EVENT_EXT_SIZE_LOAD_DONE:I = 0x3

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x7

.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mRecordSizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    .line 70
    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 73
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 74
    const-string v0, "3F007F10"

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveRecordSize(ILandroid/os/AsyncResult;)[I
    .locals 4
    .param p1, "efid"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 355
    :goto_0
    return-object v0

    .line 343
    :cond_0
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 349
    .local v0, "recordSize":[I
    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 350
    new-instance v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 351
    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sendErrorResponse(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 335
    :cond_1
    :goto_1
    return-void

    .line 167
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 168
    .local v7, "ar":Landroid/os/AsyncResult;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 170
    .local v11, "recordSize":[I
    if-eqz v11, :cond_1

    .line 174
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 181
    :goto_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recordSize":[I
    check-cast v11, [I

    .line 178
    .restart local v11    # "recordSize":[I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v4, 0x2

    aget v4, v11, v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    goto :goto_2

    .line 185
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "recordSize":[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 186
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 187
    .restart local v11    # "recordSize":[I
    if-eqz v11, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recordSize":[I
    check-cast v11, [I

    .line 192
    .restart local v11    # "recordSize":[I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v4, 0x2

    aget v4, v11, v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 198
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "recordSize":[I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 199
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 201
    .local v6, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->saveRecordSize(ILandroid/os/AsyncResult;)[I

    move-result-object v11

    .line 202
    .restart local v11    # "recordSize":[I
    if-eqz v11, :cond_1

    .line 206
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    const/4 v1, 0x2

    aget v1, v11, v1

    if-le v0, v1, :cond_3

    .line 207
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 211
    :cond_3
    const/4 v0, 0x0

    aget v0, v11, v0

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)[B

    move-result-object v3

    .line 212
    .local v3, "data":[B
    if-nez v3, :cond_4

    .line 213
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 217
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 222
    .end local v3    # "data":[B
    .end local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "recordSize":[I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 223
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 227
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 232
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 233
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 235
    .restart local v3    # "data":[B
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 240
    :cond_6
    if-nez v3, :cond_7

    .line 241
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 245
    :cond_7
    new-instance v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    invoke-direct {v6, v0, v1, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 246
    .restart local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iput-object v6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 248
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    iget v2, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 260
    .end local v3    # "data":[B
    .end local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 261
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 262
    .restart local v3    # "data":[B
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 264
    .restart local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 269
    :cond_8
    if-nez v3, :cond_9

    .line 270
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 274
    :cond_9
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->appendExtRecord([B)V

    .line 275
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 281
    .end local v3    # "data":[B
    .end local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    check-cast v7, Landroid/os/AsyncResult;

    .line 282
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    .line 284
    .local v8, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 285
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 289
    :cond_a
    if-nez v8, :cond_b

    .line 290
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 294
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 298
    const/4 v9, 0x0

    .line 299
    .local v9, "extensionRecordSize":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    .line 300
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    if-lez v0, :cond_c

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 302
    .local v13, "sizes":[I
    if-eqz v13, :cond_c

    .line 303
    const/4 v0, 0x0

    aget v9, v13, v0

    .line 308
    .end local v13    # "sizes":[I
    :cond_c
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "s":I
    :goto_3
    if-ge v10, v12, :cond_0

    .line 309
    new-instance v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v6, v1, v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 310
    .restart local v6    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 316
    iget v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 318
    if-lez v9, :cond_e

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    iget v2, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v9, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 308
    :cond_d
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 322
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    iget v2, v6, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_4

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 5
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 108
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 109
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 110
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 113
    .local v0, "recordSize":[I
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 85
    iput p1, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 86
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 87
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    .line 88
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 90
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 138
    iput p2, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mEf:I

    .line 139
    iput p3, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mExtensionEF:I

    .line 140
    iput p4, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordNumber:I

    .line 141
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 142
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mRecordSizes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)[B

    move-result-object v3

    .line 148
    .local v3, "data":[B
    if-nez v3, :cond_1

    .line 149
    new-instance v0, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v1, -0x3e9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->sendErrorResponse(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mPendingExtLoads:I

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p2

    move v2, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
