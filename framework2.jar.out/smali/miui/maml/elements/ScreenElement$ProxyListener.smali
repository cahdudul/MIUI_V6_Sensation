.class Lmiui/maml/elements/ScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field private mRendererController:Lmiui/maml/RendererController;

.field final synthetic this$0:Lmiui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/RendererController;)V
    .locals 0
    .param p2, "c"    # Lmiui/maml/RendererController;

    .prologue
    .line 104
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    .line 105
    iput-object p2, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mRendererController:Lmiui/maml/RendererController;

    .line 106
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getSelfRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doRender()V

    .line 116
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 117
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 111
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getSelfRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 122
    return-void
.end method
