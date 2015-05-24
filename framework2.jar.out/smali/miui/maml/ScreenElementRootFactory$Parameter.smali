.class public Lmiui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRootFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lmiui/maml/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setHandler(Landroid/os/Handler;)Lmiui/maml/ScreenElementRootFactory$Parameter;
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mHandler:Landroid/os/Handler;

    .line 31
    return-object p0
.end method
