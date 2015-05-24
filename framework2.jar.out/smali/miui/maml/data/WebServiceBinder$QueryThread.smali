.class Lmiui/maml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# static fields
.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_SECURE_ACCOUNT_AUTHTOKEN_FAIL:I = 0x5

.field private static final ERROR_SECURE_ACCOUNT_NOT_LOGIN:I = 0x4

.field private static final ERROR_SECURE_CIPHER_EXCEPTION:I = 0x6

.field private static final ERROR_SECURE_INVALID_RESPONSE:I = 0x7

.field public static final ERROR_USE_NETWORK_FORBIDDEN:I = 0x3

.field private static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"


# instance fields
.field final synthetic this$0:Lmiui/maml/data/WebServiceBinder;


# direct methods
.method public constructor <init>(Lmiui/maml/data/WebServiceBinder;)V
    .locals 1

    .prologue
    .line 714
    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    .line 715
    const-string v0, "WebServiceBinder QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;
    .locals 26
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .param p3, "auth"    # Z
    .param p4, "secure"    # Z

    .prologue
    .line 742
    const-string v4, "WebServiceBinder"

    const-string v5, "doRequest"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v13, 0x0

    .line 745
    .local v13, "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_7

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 747
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v4}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v12, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 748
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 749
    .local v2, "accountManager":Landroid/accounts/AccountManager;
    const/4 v3, 0x0

    .line 750
    .local v3, "account":Landroid/accounts/Account;
    const-string v4, "com.xiaomi"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 751
    .local v9, "accounts":[Landroid/accounts/Account;
    array-length v4, v9

    if-lez v4, :cond_1

    .line 752
    const/4 v4, 0x0

    aget-object v3, v9, v4

    .line 754
    :cond_1
    if-nez v3, :cond_2

    .line 755
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setErrorCode(I)V

    .line 756
    const-string v4, "WebServiceBinder"

    const-string v5, "xiaomi account not login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/16 v23, 0x0

    .line 851
    .end local v2    # "accountManager":Landroid/accounts/AccountManager;
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v12    # "context":Landroid/content/Context;
    :goto_0
    return-object v23

    .line 759
    .restart local v2    # "accountManager":Landroid/accounts/AccountManager;
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v9    # "accounts":[Landroid/accounts/Account;
    .restart local v12    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string v5, "encrypted_user_id"

    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$800(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v16

    .line 763
    .local v16, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v11, 0x0

    .line 765
    .local v11, "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    if-eqz v16, :cond_4

    .line 766
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Bundle;

    .line 767
    .local v24, "result":Landroid/os/Bundle;
    if-eqz v24, :cond_3

    .line 768
    const-string v4, "authtoken"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, "extTokenStr":Ljava/lang/String;
    invoke-static {v15}, Lmiui/maml/data/WebServiceBinder$AuthToken;->parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 784
    .end local v15    # "extTokenStr":Ljava/lang/String;
    .end local v24    # "result":Landroid/os/Bundle;
    :goto_1
    if-nez v11, :cond_5

    .line 785
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setErrorCode(I)V

    .line 786
    const/16 v23, 0x0

    goto :goto_0

    .line 771
    .restart local v24    # "result":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v4, "WebServiceBinder"

    const-string v5, "getAuthToken: future getResult is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 776
    .end local v24    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    .line 777
    .local v14, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v14}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v14    # "e":Landroid/accounts/OperationCanceledException;
    :cond_4
    :try_start_2
    const-string v4, "WebServiceBinder"

    const-string v5, "getAuthToken: future is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 778
    :catch_1
    move-exception v14

    .line 779
    .local v14, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v14}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    .line 780
    .end local v14    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v14

    .line 781
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 788
    .end local v14    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    .line 791
    .end local v2    # "accountManager":Landroid/accounts/AccountManager;
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    .end local v12    # "context":Landroid/content/Context;
    .end local v16    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_6
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 792
    .restart local v13    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "cUserId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v4, "serviceToken"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_7
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 797
    .local v21, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$900(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v5}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v22

    .line 798
    .local v22, "paramsStr":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 799
    const-string v4, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 800
    .local v25, "strParams":[Ljava/lang/String;
    move-object/from16 v10, v25

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    aget-object v19, v10, v17

    .line 801
    .local v19, "pa":Ljava/lang/String;
    const-string v4, ":"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 802
    .local v20, "param":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    .line 800
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 804
    :cond_8
    const/4 v4, 0x0

    aget-object v4, v20, v4

    const/4 v5, 0x1

    aget-object v5, v20, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 808
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "pa":Ljava/lang/String;
    .end local v20    # "param":[Ljava/lang/String;
    .end local v25    # "strParams":[Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$400(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v4

    sget-object v5, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v4, v5, :cond_b

    .line 809
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;

    move-result-object v23

    .line 810
    .local v23, "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    if-eqz v23, :cond_a

    .line 811
    const/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lmiui/maml/util/net/CipherException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    .line 840
    .end local v23    # "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :catch_3
    move-exception v14

    .line 841
    .restart local v14    # "e":Ljava/io/IOException;
    const/16 v4, 0x12d

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V

    .line 851
    .end local v14    # "e":Ljava/io/IOException;
    :cond_a
    :goto_4
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 815
    :cond_b
    const/16 v23, 0x0

    .line 816
    .local v23, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_start_4
    sget-object v4, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$RequestMethod:[I

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 834
    :goto_5
    if-eqz v23, :cond_a

    .line 835
    const/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V

    .line 836
    invoke-virtual/range {v23 .. v23}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v24

    .local v24, "result":Ljava/lang/String;
    move-object/from16 v23, v24

    .line 837
    goto/16 :goto_0

    .line 818
    .end local v24    # "result":Ljava/lang/String;
    :pswitch_0
    if-eqz p4, :cond_c

    .line 819
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13, v4, v5}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v23

    goto :goto_5

    .line 821
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v23

    .line 823
    goto :goto_5

    .line 825
    :pswitch_1
    if-eqz p4, :cond_d

    .line 826
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13, v4, v5}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v23

    goto :goto_5

    .line 828
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lmiui/maml/util/net/CipherException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v23

    .line 830
    goto :goto_5

    .line 842
    .end local v23    # "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :catch_4
    move-exception v14

    .line 843
    .local v14, "e":Lmiui/maml/util/net/CipherException;
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setErrorCode(I)V

    goto :goto_4

    .line 844
    .end local v14    # "e":Lmiui/maml/util/net/CipherException;
    :catch_5
    move-exception v14

    .line 845
    .local v14, "e":Lmiui/maml/util/net/AccessDeniedException;
    const/16 v4, 0x193

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V

    goto :goto_4

    .line 846
    .end local v14    # "e":Lmiui/maml/util/net/AccessDeniedException;
    :catch_6
    move-exception v14

    .line 847
    .local v14, "e":Lmiui/maml/util/net/InvalidResponseException;
    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setErrorCode(I)V

    goto :goto_4

    .line 848
    .end local v14    # "e":Lmiui/maml/util/net/InvalidResponseException;
    :catch_7
    move-exception v14

    .line 849
    .local v14, "e":Lmiui/maml/util/net/AuthenticationFailureException;
    const/16 v4, 0x190

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V

    goto :goto_4

    .line 816
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setErrorCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 858
    :cond_0
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryThread error: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private setStatusCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 862
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 865
    :cond_0
    const-string v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryThread status code: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 720
    const-string v2, "WebServiceBinder"

    const-string v3, "QueryThread start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0, v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setErrorCode(I)V

    .line 722
    invoke-direct {p0, v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->setStatusCode(I)V

    .line 724
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "uriStr":Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v2, v2, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z
    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->access$200(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v3

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mSecure:Z
    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->access$300(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 726
    .local v0, "response":Ljava/lang/Object;
    sget-object v2, Lmiui/maml/data/WebServiceBinder$1;->$SwitchMap$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # getter for: Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->access$400(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 737
    .end local v0    # "response":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    # setter for: Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z
    invoke-static {v2, v5}, Lmiui/maml/data/WebServiceBinder;->access$702(Lmiui/maml/data/WebServiceBinder;Z)Z

    .line 738
    const-string v2, "WebServiceBinder"

    const-string v3, "QueryThread end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void

    .line 728
    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->access$500(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    # invokes: Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->access$600(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .end local v0    # "response":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lmiui/maml/data/WebServiceBinder;->processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
