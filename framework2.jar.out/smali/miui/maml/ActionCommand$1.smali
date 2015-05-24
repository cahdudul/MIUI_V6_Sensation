.class synthetic Lmiui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1462
    invoke-static {}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->values()[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    :try_start_0
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->String:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Integer:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    :try_start_2
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Int:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Long:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Double:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Float:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Byte:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    sget-object v1, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->Short:Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    .line 1310
    :goto_7
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    :try_start_8
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    .line 1061
    :goto_b
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$Type;->values()[Lmiui/maml/ActionCommand$IntentCommand$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    :try_start_c
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->STRING:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->INT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->LONG:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->FLOAT:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->DOUBLE:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$Type:[I

    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$Type;->BOOLEAN:Lmiui/maml/ActionCommand$IntentCommand$Type;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    .line 857
    :goto_11
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_12
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_12

    .line 1061
    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    .line 1310
    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_9

    :catch_a
    move-exception v0

    goto/16 :goto_8

    .line 1462
    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_1

    :catch_12
    move-exception v0

    goto/16 :goto_0
.end method
