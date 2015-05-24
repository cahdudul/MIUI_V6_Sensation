.class public Lmiui/maml/animation/SourcesAnimation$Source;
.super Lmiui/maml/animation/BaseAnimation$AnimationItem;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/SourcesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Source"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Source"


# instance fields
.field public mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .locals 0
    .param p1, "attrs"    # [Ljava/lang/String;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 16
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 23
    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    .line 24
    invoke-super {p0, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    return-object v0
.end method
