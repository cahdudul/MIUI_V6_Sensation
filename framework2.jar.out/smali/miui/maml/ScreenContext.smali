.class public Lmiui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final MAML_PREFERENCES:Ljava/lang/String; = "MamlPreferences"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lmiui/maml/data/ContextVariables;

.field public final mFactory:Lmiui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mResourceManager:Lmiui/maml/ResourceManager;

.field public final mVariables:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;
    .param p3, "h"    # Landroid/os/Handler;

    .prologue
    .line 41
    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    new-instance v1, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v1}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;
    .param p4, "h"    # Landroid/os/Handler;

    .prologue
    .line 49
    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;

    .prologue
    .line 29
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "h"    # Landroid/os/Handler;

    .prologue
    .line 33
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;

    .prologue
    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;
    .param p4, "h"    # Landroid/os/Handler;

    .prologue
    .line 57
    new-instance v5, Lmiui/maml/data/Variables;

    invoke-direct {v5}, Lmiui/maml/data/Variables;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;Lmiui/maml/data/Variables;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceMgr"    # Lmiui/maml/ResourceManager;
    .param p3, "factory"    # Lmiui/maml/elements/ScreenElementFactory;
    .param p4, "h"    # Landroid/os/Handler;
    .param p5, "v"    # Lmiui/maml/data/Variables;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "rawContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0    # "rawContext":Landroid/content/Context;
    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 65
    iput-object p3, p0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    .line 66
    iput-object p4, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p5, p0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 68
    new-instance v1, Lmiui/maml/data/ContextVariables;

    invoke-direct {v1}, Lmiui/maml/data/ContextVariables;-><init>()V

    iput-object v1, p0, Lmiui/maml/ScreenContext;->mContextVariables:Lmiui/maml/data/ContextVariables;

    .line 69
    return-void

    .restart local v0    # "rawContext":Landroid/content/Context;
    :cond_0
    move-object v0, p1

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiui/maml/ObjectFactory;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 116
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 116
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f"    # Lmiui/maml/ObjectFactory;

    .prologue
    .line 85
    monitor-enter p0

    if-nez p2, :cond_1

    .line 86
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lmiui/maml/ObjectFactory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ObjectFactory name mismatchs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 94
    :cond_2
    :try_start_2
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 98
    :cond_3
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory;

    .line 100
    .local v0, "old":Lmiui/maml/ObjectFactory;
    move-object v1, v0

    .line 101
    .local v1, "tmp":Lmiui/maml/ObjectFactory;
    :goto_1
    if-eqz v1, :cond_4

    .line 102
    if-eq v1, p2, :cond_0

    .line 104
    invoke-virtual {v1}, Lmiui/maml/ObjectFactory;->getOld()Lmiui/maml/ObjectFactory;

    move-result-object v1

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p2, v0}, Lmiui/maml/ObjectFactory;->setOld(Lmiui/maml/ObjectFactory;)V

    .line 108
    iget-object v2, p0, Lmiui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
