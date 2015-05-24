.class Lmiui/maml/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lmiui/maml/data/Expression;

.field private mBaseY:Lmiui/maml/data/Expression;

.field private mX:Lmiui/maml/data/Expression;

.field private mY:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .locals 1
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "baseX"    # Lmiui/maml/data/Expression;
    .param p4, "baseY"    # Lmiui/maml/data/Expression;

    .prologue
    .line 584
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p3, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    .line 586
    iput-object p4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    .line 587
    const-string v0, "x"

    invoke-virtual {p1, p2, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    .line 588
    const-string v0, "y"

    invoke-virtual {p1, p2, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    .line 589
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 592
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    if-nez v5, :cond_1

    :goto_1
    add-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    goto :goto_1
.end method

.method public getY()F
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 597
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    if-nez v5, :cond_1

    :goto_1
    add-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    goto :goto_1
.end method
