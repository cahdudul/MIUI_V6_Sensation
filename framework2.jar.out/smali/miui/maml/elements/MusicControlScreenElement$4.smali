.class Lmiui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/4 v1, 0x0

    # setter for: Lmiui/maml/elements/MusicControlScreenElement;->mFreezeState:Z
    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$5002(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 1104
    return-void
.end method
