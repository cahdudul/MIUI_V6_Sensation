.class public abstract Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;
.super Ljava/lang/Object;
.source "AtomicSafeInitializer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 81
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->initialize()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation
.end method
