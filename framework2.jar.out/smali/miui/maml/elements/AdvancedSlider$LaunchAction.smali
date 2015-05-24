.class Lmiui/maml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTask:Lmiui/maml/util/Task;

.field public mTrigger:Lmiui/maml/CommandTrigger;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/AdvancedSlider;
    .param p2, "x1"    # Lmiui/maml/elements/AdvancedSlider$1;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 623
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 660
    :goto_0
    return-object v1

    .line 626
    :cond_0
    const/4 v1, 0x0

    .line 627
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    if-nez v3, :cond_2

    .line 628
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v3, v3, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v4, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 632
    .local v0, "configTask":Lmiui/maml/util/Task;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    .line 635
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 638
    .end local v0    # "configTask":Lmiui/maml/util/Task;
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 639
    goto :goto_0

    .line 642
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 644
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 646
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :cond_5
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 648
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 650
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 651
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    :cond_7
    :goto_1
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 653
    :cond_8
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    .line 666
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 668
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 669
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    .line 674
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 676
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    .line 681
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 683
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTask:Lmiui/maml/util/Task;

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 619
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    .line 688
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 690
    :cond_1
    return-void
.end method
