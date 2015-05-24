.class public Lmiui/maml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Token"
.end annotation


# instance fields
.field public op:Lmiui/maml/data/Expression$Ope;

.field final synthetic this$0:Lmiui/maml/data/Expression$Tokenizer;

.field public token:Ljava/lang/String;

.field public type:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1
    .param p2, "t"    # Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->this$0:Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 86
    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 87
    iput-object p3, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V
    .locals 1
    .param p2, "t"    # Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "o"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 90
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->this$0:Lmiui/maml/data/Expression$Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 91
    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 92
    iput-object p3, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    .line 94
    return-void
.end method
