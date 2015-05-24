.class Lmiui/maml/util/TextFormatter$ExpressioPara;
.super Lmiui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;)V
    .locals 1
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>(Lmiui/maml/util/TextFormatter$1;)V

    .line 205
    iput-object p1, p0, Lmiui/maml/util/TextFormatter$ExpressioPara;->mExp:Lmiui/maml/data/Expression;

    .line 206
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/maml/data/Variables;)Ljava/lang/Object;
    .locals 2
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/maml/util/TextFormatter$ExpressioPara;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
