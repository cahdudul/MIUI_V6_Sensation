.class Lmiui/maml/elements/ImageScreenElement$Mask;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mask"
.end annotation


# instance fields
.field private mAlignAbsolute:Z

.field final synthetic this$0:Lmiui/maml/elements/ImageScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 107
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->this$0:Lmiui/maml/elements/ImageScreenElement;

    .line 108
    invoke-direct {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 109
    const-string v1, "align"

    invoke-virtual {p0, p2, v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "align":Ljava/lang/String;
    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    return-void
.end method

.method public final isAlignAbsolute()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    return v0
.end method
