.class public Lmiui/maml/data/FileBinder;
.super Lmiui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mDirFormatter:Lmiui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0, p1}, Lmiui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 60
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v2, "FileBinder"

    const-string v3, "FileBinder node is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v2, "filter"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "filter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 93
    const-string v2, "dirExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 94
    .local v0, "dirExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string v3, "dir"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    .line 95
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mName:Ljava/lang/String;

    const-string v4, "count"

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 92
    .end local v0    # "dirExp":Lmiui/maml/data/Expression;
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateVariables()V
    .locals 7

    .prologue
    .line 112
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 113
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/FileBinder$Variable;

    .line 114
    .local v3, "v":Lmiui/maml/data/FileBinder$Variable;
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, v3, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v2, v4

    .line 117
    .local v2, "index":I
    iget-object v5, v3, Lmiui/maml/data/FileBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v0    # "count":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_1
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v4

    goto :goto_0

    .line 117
    .restart local v0    # "count":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int v6, v2, v0

    aget-object v4, v4, v6

    goto :goto_2

    .line 119
    .end local v2    # "index":I
    .end local v3    # "v":Lmiui/maml/data/FileBinder$Variable;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVariable(Lmiui/maml/data/FileBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/FileBinder$Variable;

    .prologue
    .line 108
    iget-object v0, p0, Lmiui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 64
    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->refresh()V

    .line 65
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 104
    new-instance v0, Lmiui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "x0"    # Lorg/w3c/dom/Element;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lmiui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/FileBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 75
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mDirFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/data/FileBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "dir":Ljava/io/File;
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mCountVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 81
    :cond_0
    const-string v2, "FileBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 84
    return-void

    .line 76
    .end local v0    # "count":I
    :cond_1
    new-instance v2, Lmiui/maml/util/FilenameExtFilter;

    iget-object v3, p0, Lmiui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lmiui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->tick()V

    .line 69
    invoke-direct {p0}, Lmiui/maml/data/FileBinder;->updateVariables()V

    .line 70
    return-void
.end method
