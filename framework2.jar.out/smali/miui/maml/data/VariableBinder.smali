.class public abstract Lmiui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/VariableBinder$VariableArray;,
        Lmiui/maml/data/VariableBinder$Variable;,
        Lmiui/maml/data/VariableBinder$TypedValue;
    }
.end annotation


# instance fields
.field private mDependency:Ljava/lang/String;

.field protected mFinished:Z

.field protected mName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mQueryAtStart:Z

.field private mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mTrigger:Lmiui/maml/CommandTrigger;

.field protected mVariableArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableBinder$VariableArray;",
            ">;"
        }
    .end annotation
.end field

.field protected mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mVariableArrays:Ljava/util/ArrayList;

    .line 94
    iput-object p2, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 97
    const-string v1, "dependency"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    .line 98
    const-string v1, "false"

    const-string v2, "queryAtStart"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 99
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1, v0}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 101
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final accept(Lmiui/maml/data/VariableBinderVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/VariableBinderVisitor;

    .prologue
    .line 104
    invoke-virtual {p1, p0}, Lmiui/maml/data/VariableBinderVisitor;->visit(Lmiui/maml/data/VariableBinder;)V

    .line 105
    return-void
.end method

.method protected addVariable(Lmiui/maml/data/VariableBinder$Variable;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/VariableBinder$Variable;

    .prologue
    .line 280
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    .line 63
    return-void
.end method

.method protected getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iput-boolean v2, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    .line 39
    iput-boolean v2, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 41
    iget-object v2, p0, Lmiui/maml/data/VariableBinder;->mVariableArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$VariableArray;

    .line 42
    .local v1, "varArray":Lmiui/maml/data/VariableBinder$VariableArray;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lmiui/maml/data/VariableBinder$VariableArray;->init()V

    goto :goto_0

    .line 46
    .end local v1    # "varArray":Lmiui/maml/data/VariableBinder$VariableArray;
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v2}, Lmiui/maml/CommandTrigger;->init()V

    .line 50
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->startQuery()V

    .line 53
    :cond_3
    return-void
.end method

.method protected loadVariableArrays(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 295
    const-string v0, "VarArray"

    new-instance v1, Lmiui/maml/data/VariableBinder$2;

    invoke-direct {v1, p0}, Lmiui/maml/data/VariableBinder$2;-><init>(Lmiui/maml/data/VariableBinder;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 303
    return-void
.end method

.method protected loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 284
    const-string v0, "Variable"

    new-instance v1, Lmiui/maml/data/VariableBinder$1;

    invoke-direct {v1, p0}, Lmiui/maml/data/VariableBinder$1;-><init>(Lmiui/maml/data/VariableBinder;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 292
    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLoadVariableArray(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$VariableArray;
    .locals 1
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onUpdateComplete()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 273
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 277
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 70
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    .line 77
    return-void
.end method

.method public setQueryCompleteListener(Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .prologue
    .line 265
    iput-object p1, p0, Lmiui/maml/data/VariableBinder;->mQueryCompletedListener:Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 266
    return-void
.end method

.method public startQuery()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
