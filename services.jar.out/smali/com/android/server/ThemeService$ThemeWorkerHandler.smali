.class Lcom/android/server/ThemeService$ThemeWorkerHandler;
.super Landroid/os/Handler;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_APPLY_DEFAULT_THEME:I = 0x2

.field private static final MESSAGE_BUILD_ICON_CACHE:I = 0x3

.field private static final MESSAGE_CHANGE_THEME:I = 0x1

.field private static final MESSAGE_DEQUEUE_AND_PROCESS_THEME:I = 0x5

.field private static final MESSAGE_QUEUE_THEME_FOR_PROCESSING:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 189
    # getter for: Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThemeService;->access$900()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 138
    .local v0, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->doApplyTheme(Ljava/util/Map;)V
    invoke-static {v6, v0}, Lcom/android/server/ThemeService;->access$000(Lcom/android/server/ThemeService;Ljava/util/Map;)V

    goto :goto_0

    .line 141
    .end local v0    # "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->doApplyDefaultTheme()V
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$100(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->doBuildIconCache()V
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$200(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 148
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 149
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 153
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    .line 156
    :cond_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 159
    .end local v4    # "pkgName":Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 160
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    .restart local v4    # "pkgName":Ljava/lang/String;
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    if-eqz v4, :cond_0

    .line 166
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 167
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->getThemeName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/server/ThemeService;->access$500(Lcom/android/server/ThemeService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 171
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .local v2, "name":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_3

    .line 172
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->processThemeResources(Ljava/lang/String;)I

    move-result v5

    .line 173
    .local v5, "result":I
    if-gez v5, :cond_2

    .line 174
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->postFailedThemeInstallNotification(Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/server/ThemeService;->access$600(Lcom/android/server/ThemeService;Ljava/lang/String;)V

    .line 176
    :cond_2
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->sendThemeResourcesCachedBroadcast(Ljava/lang/String;I)V
    invoke-static {v6, v4, v5}, Lcom/android/server/ThemeService;->access$700(Lcom/android/server/ThemeService;Ljava/lang/String;I)V

    .line 178
    .end local v5    # "result":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 179
    :try_start_3
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 182
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    .line 184
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    iget-object v6, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->postFinishedProcessing(Ljava/lang/String;)V
    invoke-static {v6, v4}, Lcom/android/server/ThemeService;->access$800(Lcom/android/server/ThemeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 168
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
