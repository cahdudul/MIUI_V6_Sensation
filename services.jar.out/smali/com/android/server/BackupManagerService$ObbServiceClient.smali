.class abstract Lcom/android/server/BackupManagerService$ObbServiceClient;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbServiceClient"
.end annotation


# instance fields
.field public mObbService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ObbServiceClient;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setObbBinder(Lcom/android/internal/backup/IObbBackupService;)V
    .locals 0
    .param p1, "binder"    # Lcom/android/internal/backup/IObbBackupService;

    .prologue
    .line 2535
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ObbServiceClient;->mObbService:Lcom/android/internal/backup/IObbBackupService;

    .line 2536
    return-void
.end method
