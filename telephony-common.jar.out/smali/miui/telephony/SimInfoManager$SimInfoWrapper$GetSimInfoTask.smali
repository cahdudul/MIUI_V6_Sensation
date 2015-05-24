.class Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;
.super Landroid/os/AsyncTask;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SimInfoManager$SimInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSimInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;


# direct methods
.method private constructor <init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Lmiui/telephony/SimInfoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/SimInfoManager$SimInfoWrapper;
    .param p2, "x1"    # Lmiui/telephony/SimInfoManager$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;-><init>(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 345
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    # getter for: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$200(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getInsertedSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$300(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;
    invoke-static {v0, v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$102(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Ljava/util/List;)Ljava/util/List;

    .line 346
    iget-object v0, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    iget-object v1, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    # getter for: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$200(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->getAllSimInfoListFromDB(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$500(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # setter for: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mAllSimInfoList:Ljava/util/List;
    invoke-static {v0, v1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$402(Lmiui/telephony/SimInfoManager$SimInfoWrapper;Ljava/util/List;)Ljava/util/List;

    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 341
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 352
    sget-object v3, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 353
    :try_start_0
    iget-object v2, p0, Lmiui/telephony/SimInfoManager$SimInfoWrapper$GetSimInfoTask;->this$0:Lmiui/telephony/SimInfoManager$SimInfoWrapper;

    # getter for: Lmiui/telephony/SimInfoManager$SimInfoWrapper;->mChangeListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lmiui/telephony/SimInfoManager$SimInfoWrapper;->access$600(Lmiui/telephony/SimInfoManager$SimInfoWrapper;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;

    .line 354
    .local v1, "listener":Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;
    invoke-interface {v1}, Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;->onChange()V

    goto :goto_0

    .line 356
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/telephony/SimInfoManager$ISimInfoChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    return-void
.end method
