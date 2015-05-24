.class Lmiui/maml/ActionCommand$SoundCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mVolumeExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1114
    const-string v0, "sound"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 1115
    const-string v0, "keepCur"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 1116
    const-string v0, "loop"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 1117
    const-string v0, "volume"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    .line 1118
    iget-object v0, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 1119
    const-string v0, "ActionCommand"

    const-string v1, "invalid expression in SoundCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "volume":F
    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lmiui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SoundCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v3, Lmiui/maml/SoundManager$SoundOptions;

    iget-boolean v4, p0, Lmiui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v5, p0, Lmiui/maml/ActionCommand$SoundCommand;->mLoop:Z

    invoke-direct {v3, v4, v5, v0}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 1130
    return-void
.end method