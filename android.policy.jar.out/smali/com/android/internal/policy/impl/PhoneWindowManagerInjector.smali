.class Lcom/android/internal/policy/impl/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 4
    .param p0, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 12
    .local v0, "down":Z
    :goto_0
    sget-boolean v2, Lmiui/util/HapticFeedbackUtil;->IS_IMMERSION_ENABLED:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 14
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 16
    :cond_0
    return-void

    .end local v0    # "down":Z
    :cond_1
    move v0, v1

    .line 11
    goto :goto_0
.end method
