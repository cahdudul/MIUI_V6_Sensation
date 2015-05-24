.class public Lmiui/maml/data/VariableBinder$VariableArray;
.super Lmiui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableArray"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableArray"


# instance fields
.field public mRoot:Lmiui/maml/ScreenElementRoot;

.field public mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-object p3, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    .line 238
    iput-object p2, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 239
    return-void
.end method


# virtual methods
.method public fillData([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 251
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 253
    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    instance-of v1, v0, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_1

    .line 254
    check-cast v0, Lmiui/maml/elements/VariableArrayElement;

    .end local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;

    .line 260
    :cond_0
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/VariableArrayElement;->setItems([Ljava/lang/Object;)V

    .line 261
    :goto_0
    return-void

    .line 256
    .restart local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    :cond_1
    const-string v1, "VariableArray"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to find VarArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 244
    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    instance-of v1, v0, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_0

    .line 245
    check-cast v0, Lmiui/maml/elements/VariableArrayElement;

    .end local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/data/VariableBinder$VariableArray;->mVariableArrayElement:Lmiui/maml/elements/VariableArrayElement;

    .line 248
    :cond_0
    return-void
.end method
