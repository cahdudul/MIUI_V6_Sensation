.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$Extra;,
        Lmiui/maml/ActionCommand$IntentCommand$Type;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand$IntentCommand$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mIntent:Landroid/content/Intent;

.field private mIsBroadcast:Z

.field private mTask:Lmiui/maml/util/Task;

.field private mUri:Landroid/net/Uri;

.field private mUriExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 871
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    .line 971
    invoke-static {p2}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    .line 972
    const-string v2, "broadcast"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    .line 974
    const-string v2, "uri"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    .line 978
    :cond_0
    const-string v2, "uriExp"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    .line 980
    invoke-direct {p0, p2}, Lmiui/maml/ActionCommand$IntentCommand;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 983
    const-string v2, "Fallback"

    invoke-static {p2, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 984
    .local v0, "node":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    .line 985
    new-instance v2, Lmiui/maml/CommandTrigger;

    invoke-direct {v2, v0, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    .line 987
    :cond_1
    return-void
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 961
    const-string v0, "Extra"

    new-instance v1, Lmiui/maml/ActionCommand$IntentCommand$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$IntentCommand$1;-><init>(Lmiui/maml/ActionCommand$IntentCommand;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 967
    return-void
.end method


# virtual methods
.method protected addExtra(Lmiui/maml/ActionCommand$IntentCommand$Extra;)V
    .locals 1
    .param p1, "e"    # Lmiui/maml/ActionCommand$IntentCommand$Extra;

    .prologue
    .line 957
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method protected doPerform()V
    .locals 11

    .prologue
    .line 1051
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 1052
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 1053
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 1054
    .local v3, "uriStr":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 1055
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1058
    .end local v3    # "uriStr":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1059
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mExtraList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand$IntentCommand$Extra;

    .line 1060
    .local v1, "extra":Lmiui/maml/ActionCommand$IntentCommand$Extra;
    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->isConditionTrue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1061
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    iget-object v5, v1, Lmiui/maml/ActionCommand$IntentCommand$Extra;->mType:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1063
    :pswitch_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1053
    .end local v1    # "extra":Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUriExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1066
    .restart local v1    # "extra":Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1069
    :pswitch_2
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 1072
    :pswitch_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_1

    .line 1075
    :pswitch_4
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_1

    .line 1078
    :pswitch_5
    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getDouble()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1084
    :cond_3
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Extra;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1089
    .end local v1    # "extra":Lmiui/maml/ActionCommand$IntentCommand$Extra;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_0
    iget-boolean v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-eqz v4, :cond_6

    .line 1090
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1102
    :cond_5
    :goto_3
    return-void

    .line 1092
    :cond_6
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_7

    .line 1095
    const-string v4, "ActionCommand"

    const-string v5, "fail to send Intent, fallback..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_3

    .line 1098
    :cond_7
    const-string v4, "ActionCommand"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 1033
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 991
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 994
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    .line 998
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 1003
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1004
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    :cond_3
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1006
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    :cond_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1008
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    :cond_5
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1010
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1011
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIsBroadcast:Z

    if-nez v1, :cond_7

    .line 1018
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1020
    :cond_7
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 1021
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1023
    :cond_8
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    goto/16 :goto_0

    .line 1013
    :cond_9
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 1040
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 1047
    :cond_0
    return-void
.end method
