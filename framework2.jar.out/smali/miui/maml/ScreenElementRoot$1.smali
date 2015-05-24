.class Lmiui/maml/ScreenElementRoot$1;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/elements/ScreenElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ScreenElementRoot;->traverseElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$1;->this$0:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/elements/ScreenElement;)V
    .locals 2
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 644
    instance-of v1, p1, Lmiui/maml/elements/FramerateController;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 647
    .local v0, "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_0

    move-object v1, p1

    .line 648
    check-cast v1, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v0, v1}, Lmiui/maml/RendererController;->addFramerateController(Lmiui/maml/elements/FramerateController;)V

    .line 653
    .end local v0    # "c":Lmiui/maml/RendererController;
    :cond_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getSelfRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 654
    .restart local v0    # "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_1

    .line 655
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$1;->this$0:Lmiui/maml/ScreenElementRoot;

    # getter for: Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/maml/ScreenElementRoot;->access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_1
    return-void
.end method
