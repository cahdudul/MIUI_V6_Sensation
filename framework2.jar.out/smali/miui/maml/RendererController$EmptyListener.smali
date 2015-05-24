.class public abstract Lmiui/maml/RendererController$EmptyListener;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RendererController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EmptyListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 67
    return-void
.end method
