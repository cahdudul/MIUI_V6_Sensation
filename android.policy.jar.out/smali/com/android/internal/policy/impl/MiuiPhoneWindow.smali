.class public Lcom/android/internal/policy/impl/MiuiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mMenuDownCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x52

    .line 15
    const/16 v1, 0xbb

    if-ne p2, v1, :cond_0

    .line 16
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 19
    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object p3, v0

    .line 21
    .end local v0    # "event":Landroid/view/KeyEvent;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 31
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 23
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mMenuDownCount:I

    if-nez v1, :cond_1

    .line 25
    new-instance p3, Landroid/view/KeyEvent;

    .end local p3    # "event":Landroid/view/KeyEvent;
    const/4 v1, 0x0

    invoke-direct {p3, v1, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 27
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mMenuDownCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 36
    const/16 v1, 0xbb

    if-ne p2, v1, :cond_0

    .line 37
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x52

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 40
    .end local p3    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    move-object p3, v0

    .line 42
    .end local v0    # "event":Landroid/view/KeyEvent;
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 52
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 44
    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mMenuDownCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 46
    new-instance p3, Landroid/view/KeyEvent;

    .end local p3    # "event":Landroid/view/KeyEvent;
    const/4 v1, 0x1

    const/16 v2, 0x52

    invoke-direct {p3, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 48
    .restart local p3    # "event":Landroid/view/KeyEvent;
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mMenuDownCount:I

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method
