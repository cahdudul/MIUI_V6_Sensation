.class public Lcom/android/server/am/MiuiErrorReport;
.super Ljava/lang/Object;
.source "MiuiErrorReport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAnrErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "mandatory"    # Z

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/ErrorReport;->sendAnrReport(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "mandatory"    # Z

    .prologue
    .line 15
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    .line 16
    .local v0, "flag":I
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, p2, v0}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_1
    return-void

    .line 15
    .end local v0    # "flag":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 17
    .restart local v0    # "flag":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
