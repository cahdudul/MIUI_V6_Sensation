.class final enum Lmiui/maml/data/Expression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/Expression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Expression$Ope;

.field public static final enum ADD:Lmiui/maml/data/Expression$Ope;

.field public static final enum DIV:Lmiui/maml/data/Expression$Ope;

.field public static final enum INVALID:Lmiui/maml/data/Expression$Ope;

.field public static final enum MIN:Lmiui/maml/data/Expression$Ope;

.field public static final enum MOD:Lmiui/maml/data/Expression$Ope;

.field public static final enum MUL:Lmiui/maml/data/Expression$Ope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    .line 36
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    .line 37
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    .line 38
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MUL"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    .line 39
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "DIV"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    .line 40
    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MOD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/Expression$Ope;->$VALUES:[Lmiui/maml/data/Expression$Ope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lmiui/maml/data/Expression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$Ope;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Expression$Ope;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/maml/data/Expression$Ope;->$VALUES:[Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v0}, [Lmiui/maml/data/Expression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/Expression$Ope;

    return-object v0
.end method
