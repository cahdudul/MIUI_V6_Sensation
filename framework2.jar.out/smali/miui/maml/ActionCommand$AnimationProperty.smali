.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "targetObj"    # Lmiui/maml/util/Variable;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1289
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1290
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1291
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1294
    :cond_2
    const-string v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1296
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1297
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1298
    const/4 v0, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1299
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1300
    const-string v0, "ActionCommand"

    const-string v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1303
    :cond_4
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 1309
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationProperty;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    .line 1310
    .local v7, "variables":Lmiui/maml/data/Variables;
    sget-object v8, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    iget-object v9, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v9}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1342
    :goto_0
    return-void

    .line 1312
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1315
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1318
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1321
    :pswitch_3
    const-wide/16 v1, 0x0

    .line 1322
    .local v1, "startTime":J
    const-wide/16 v3, -0x1

    .line 1323
    .local v3, "endTime":J
    const/4 v5, 0x0

    .line 1324
    .local v5, "isLoop":Z
    const/4 v6, 0x0

    .line 1325
    .local v6, "isDelay":Z
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-lez v8, :cond_0

    .line 1326
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v0

    if-nez v8, :cond_4

    move-wide v8, v10

    :goto_1
    double-to-long v1, v8

    .line 1328
    :cond_0
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v12, :cond_1

    .line 1329
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v12

    if-nez v8, :cond_5

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    :goto_2
    double-to-long v3, v8

    .line 1332
    :cond_1
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v13, :cond_2

    .line 1333
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v13

    if-nez v8, :cond_6

    move v5, v0

    .line 1335
    :cond_2
    :goto_3
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v8, v8

    if-le v8, v14, :cond_3

    .line 1336
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v14

    if-nez v8, :cond_8

    move v6, v0

    .line 1338
    :cond_3
    :goto_4
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1326
    :cond_4
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v0

    invoke-virtual {v8, v7}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    goto :goto_1

    .line 1329
    :cond_5
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v12

    invoke-virtual {v8, v7}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    goto :goto_2

    .line 1333
    :cond_6
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v13

    invoke-virtual {v8, v7}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    move v5, v12

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_3

    .line 1336
    :cond_8
    iget-object v8, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v8, v8, v14

    invoke-virtual {v8, v7}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_9

    move v6, v12

    goto :goto_4

    :cond_9
    move v6, v0

    goto :goto_4

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
