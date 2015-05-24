.class public Lmiui/maml/data/RootExpression;
.super Lmiui/maml/data/Expression;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/RootExpression$VarVersionVisitor;,
        Lmiui/maml/data/RootExpression$VarVersion;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lmiui/maml/data/Expression;

.field private mIsNumInit:Z

.field private mIsPreciseNumInit:Z

.field private mIsStrInit:Z

.field private mPreciseDoubleValue:Ljava/math/BigDecimal;

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

.field private mVersionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/maml/data/RootExpression$VarVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mVersions:[Lmiui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;)V
    .locals 2
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 80
    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    .line 81
    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    .line 82
    iput-boolean v1, p0, Lmiui/maml/data/RootExpression;->mIsPreciseNumInit:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 90
    iput-object p1, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    .line 91
    return-void
.end method

.method static synthetic access$002(Lmiui/maml/data/RootExpression;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/RootExpression;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    return p1
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 225
    return-void
.end method

.method public addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V
    .locals 1
    .param p1, "version"    # Lmiui/maml/data/RootExpression$VarVersion;

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public evaluate(Lmiui/maml/data/Variables;)D
    .locals 6
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 99
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    if-nez v4, :cond_3

    .line 100
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    .line 101
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    .line 102
    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0, p1}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 103
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 104
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 105
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 111
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsNumInit:Z

    .line 136
    :cond_1
    :goto_1
    iget-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    return-wide v4

    .line 107
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 108
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_3
    const/4 v1, 0x0

    .line 116
    .local v1, "isChange":Z
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_6

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 118
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .line 119
    .local v3, "version":Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_4

    .line 121
    iget-object v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v5, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v4, v5, :cond_5

    .line 122
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v2

    .line 125
    .local v2, "newVersion":I
    :goto_3
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_4

    .line 126
    const/4 v1, 0x1

    .line 127
    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 117
    .end local v2    # "newVersion":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_5
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v2

    .restart local v2    # "newVersion":I
    goto :goto_3

    .line 132
    .end local v0    # "i":I
    .end local v2    # "newVersion":I
    .end local v3    # "version":Lmiui/maml/data/RootExpression$VarVersion;
    :cond_6
    if-nez v1, :cond_7

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_1

    .line 133
    :cond_7
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    iput-wide v4, p0, Lmiui/maml/data/RootExpression;->mDoubleValue:D

    goto :goto_1
.end method

.method public evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 6
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 183
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    if-nez v4, :cond_2

    .line 184
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    .line 186
    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0, p1}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 187
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 188
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 189
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 191
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsStrInit:Z

    .line 215
    :cond_1
    :goto_0
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    return-object v4

    .line 194
    :cond_2
    const/4 v1, 0x0

    .line 195
    .local v1, "isChange":Z
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_5

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 197
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .line 198
    .local v3, "version":Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_3

    .line 200
    iget-object v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v5, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v4, v5, :cond_4

    .line 201
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v2

    .line 204
    .local v2, "newVersion":I
    :goto_2
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_3

    .line 205
    const/4 v1, 0x1

    .line 206
    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 196
    .end local v2    # "newVersion":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_4
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v2

    .restart local v2    # "newVersion":I
    goto :goto_2

    .line 211
    .end local v0    # "i":I
    .end local v2    # "newVersion":I
    .end local v3    # "version":Lmiui/maml/data/RootExpression$VarVersion;
    :cond_5
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_1

    .line 212
    :cond_6
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNull(Lmiui/maml/data/Variables;)Z
    .locals 1
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 220
    iget-object v0, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->isNull(Lmiui/maml/data/Variables;)Z

    move-result v0

    return v0
.end method

.method public preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 141
    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsPreciseNumInit:Z

    if-nez v4, :cond_3

    .line 142
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mPreciseDoubleValue:Ljava/math/BigDecimal;

    .line 143
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    if-nez v4, :cond_0

    .line 144
    new-instance v4, Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-direct {v4, p0, p1}, Lmiui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lmiui/maml/data/RootExpression;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    .line 145
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVarVersionVisitor:Lmiui/maml/data/RootExpression$VarVersionVisitor;

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 146
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 147
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 153
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/maml/data/RootExpression;->mIsPreciseNumInit:Z

    .line 178
    :cond_1
    :goto_1
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mPreciseDoubleValue:Ljava/math/BigDecimal;

    return-object v4

    .line 149
    :cond_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Lmiui/maml/data/RootExpression$VarVersion;

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    .line 150
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    iget-object v5, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_3
    const/4 v1, 0x0

    .line 158
    .local v1, "isChange":Z
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v4, :cond_6

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 160
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mVersions:[Lmiui/maml/data/RootExpression$VarVersion;

    aget-object v3, v4, v0

    .line 161
    .local v3, "version":Lmiui/maml/data/RootExpression$VarVersion;
    if-eqz v3, :cond_4

    .line 163
    iget-object v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mType:Lmiui/maml/data/RootExpression$VarVersion$Type;

    sget-object v5, Lmiui/maml/data/RootExpression$VarVersion$Type;->NUM:Lmiui/maml/data/RootExpression$VarVersion$Type;

    if-ne v4, v5, :cond_5

    .line 164
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getNumVer(I)I

    move-result v2

    .line 167
    .local v2, "newVersion":I
    :goto_3
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    if-eq v4, v2, :cond_4

    .line 168
    const/4 v1, 0x1

    .line 169
    iput v2, v3, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 159
    .end local v2    # "newVersion":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_5
    iget v4, v3, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    invoke-virtual {p1, v4}, Lmiui/maml/data/Variables;->getStrVer(I)I

    move-result v2

    .restart local v2    # "newVersion":I
    goto :goto_3

    .line 174
    .end local v0    # "i":I
    .end local v2    # "newVersion":I
    .end local v3    # "version":Lmiui/maml/data/RootExpression$VarVersion;
    :cond_6
    if-nez v1, :cond_7

    iget-boolean v4, p0, Lmiui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    if-eqz v4, :cond_1

    .line 175
    :cond_7
    iget-object v4, p0, Lmiui/maml/data/RootExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->preciseEvaluate(Lmiui/maml/data/Variables;)Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/RootExpression;->mPreciseDoubleValue:Ljava/math/BigDecimal;

    goto :goto_1
.end method
