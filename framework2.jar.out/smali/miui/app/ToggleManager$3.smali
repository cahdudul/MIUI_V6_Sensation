.class Lmiui/app/ToggleManager$3;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 948
    iput-object p1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateFlightModeToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$200(Lmiui/app/ToggleManager;)V

    .line 952
    return-void
.end method
