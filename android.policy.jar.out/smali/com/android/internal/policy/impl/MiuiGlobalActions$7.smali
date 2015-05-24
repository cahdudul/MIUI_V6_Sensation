.class Lcom/android/internal/policy/impl/MiuiGlobalActions$7;
.super Landroid/os/Handler;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->dismiss()V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/MiuiGlobalActions;->updateVariables()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
