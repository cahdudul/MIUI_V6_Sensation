.class Lmiui/maml/component/MamlView$2;
.super Lmiui/maml/RenderUpdater;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0, p2, p3}, Lmiui/maml/RenderUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected doRenderImp()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/maml/component/MamlView$2;->this$0:Lmiui/maml/component/MamlView;

    invoke-virtual {v0}, Lmiui/maml/component/MamlView;->postInvalidate()V

    .line 63
    return-void
.end method
