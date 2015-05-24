.class Lmiui/maml/ActionCommand$DelayCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Lmiui/maml/ActionCommand;J)V
    .locals 1
    .param p1, "command"    # Lmiui/maml/ActionCommand;
    .param p2, "delay"    # J

    .prologue
    .line 1184
    invoke-virtual {p1}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1185
    iput-object p1, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    .line 1186
    iput-wide p2, p0, Lmiui/maml/ActionCommand$DelayCommand;->mDelay:J

    .line 1187
    return-void
.end method

.method static synthetic access$400(Lmiui/maml/ActionCommand$DelayCommand;)Lmiui/maml/ActionCommand;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ActionCommand$DelayCommand;

    .prologue
    .line 1179
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 1196
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$DelayCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    new-instance v1, Lmiui/maml/ActionCommand$DelayCommand$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$DelayCommand$1;-><init>(Lmiui/maml/ActionCommand$DelayCommand;)V

    iget-wide v2, p0, Lmiui/maml/ActionCommand$DelayCommand;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/ScreenElementRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1202
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    .line 1192
    return-void
.end method
