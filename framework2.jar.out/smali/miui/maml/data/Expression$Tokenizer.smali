.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# instance fields
.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    .line 100
    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x27

    const/16 v10, 0x23

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "bracketCount":I
    const/4 v1, -0x1

    .line 109
    .local v1, "bracketStart":I
    iget v4, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_15

    .line 110
    iget-object v9, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    .local v2, "c":C
    if-nez v0, :cond_11

    .line 113
    if-eq v2, v10, :cond_0

    const/16 v9, 0x40

    if-ne v2, v9, :cond_6

    .line 116
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_1
    iget-object v9, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 117
    iget-object v9, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    # invokes: Lmiui/maml/data/Expression;->isVariableChar(C)Z
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$000(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    :cond_1
    add-int/lit8 v9, v4, 0x1

    if-ne v5, v9, :cond_4

    .line 121
    const-string v9, "Expression"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid variable name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "c":C
    .end local v5    # "j":I
    :cond_2
    :goto_2
    return-object v8

    .line 116
    .restart local v2    # "c":C
    .restart local v5    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_4
    iput v5, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 125
    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    if-ne v2, v10, :cond_5

    sget-object v8, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_3
    iget-object v10, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, v8, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_2

    :cond_5
    sget-object v8, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VARSTR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_3

    .line 126
    .end local v5    # "j":I
    :cond_6
    # invokes: Lmiui/maml/data/Expression;->isDigitChar(C)Z
    invoke-static {v2}, Lmiui/maml/data/Expression;->access$100(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 129
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "j":I
    :goto_4
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 130
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    # invokes: Lmiui/maml/data/Expression;->isDigitChar(C)Z
    invoke-static {v8}, Lmiui/maml/data/Expression;->access$100(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 133
    :cond_7
    iput v5, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 134
    new-instance v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 135
    .end local v5    # "j":I
    :cond_9
    # invokes: Lmiui/maml/data/Expression;->isFunctionChar(C)Z
    invoke-static {v2}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 138
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "j":I
    :goto_5
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 139
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    # invokes: Lmiui/maml/data/Expression;->isFunctionChar(C)Z
    invoke-static {v8}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v8

    if-nez v8, :cond_b

    .line 142
    :cond_a
    iput v5, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 143
    new-instance v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 144
    .end local v5    # "j":I
    :cond_c
    if-ne v2, v11, :cond_10

    .line 147
    const/4 v7, 0x0

    .line 148
    .local v7, "slash":Z
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "j":I
    :goto_6
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_d

    .line 149
    iget-object v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 150
    .local v3, "cc":C
    if-nez v7, :cond_e

    if-ne v3, v11, :cond_e

    .line 154
    .end local v3    # "cc":C
    :cond_d
    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 155
    new-instance v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\\'"

    const-string v12, "\'"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 152
    .restart local v3    # "cc":C
    :cond_e
    const/16 v8, 0x5c

    if-ne v3, v8, :cond_f

    const/4 v7, 0x1

    .line 148
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 152
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 156
    .end local v3    # "cc":C
    .end local v5    # "j":I
    .end local v7    # "slash":Z
    :cond_10
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    # invokes: Lmiui/maml/data/Expression;->parseOperator(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$300(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;

    move-result-object v6

    .local v6, "operator":Lmiui/maml/data/Expression$Ope;
    sget-object v9, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v6, v9, :cond_11

    .line 158
    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 159
    new-instance v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10, v6}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    goto/16 :goto_2

    .line 163
    .end local v6    # "operator":Lmiui/maml/data/Expression$Ope;
    :cond_11
    const/16 v9, 0x28

    if-ne v2, v9, :cond_14

    .line 164
    if-nez v0, :cond_12

    .line 165
    add-int/lit8 v1, v4, 0x1

    .line 166
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 167
    :cond_14
    const/16 v9, 0x29

    if-ne v2, v9, :cond_13

    .line 168
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_13

    .line 169
    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 170
    new-instance v8, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v9, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    .end local v2    # "c":C
    :cond_15
    if-eqz v0, :cond_2

    .line 176
    const-string v9, "Expression"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mismatched bracket:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 104
    return-void
.end method
