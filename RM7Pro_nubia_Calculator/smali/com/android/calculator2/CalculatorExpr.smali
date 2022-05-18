.class Lcom/android/calculator2/CalculatorExpr;
.super Ljava/lang/Object;
.source "CalculatorExpr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorExpr$TokenString;,
        Lcom/android/calculator2/CalculatorExpr$SyntaxException;,
        Lcom/android/calculator2/CalculatorExpr$EvalContext;,
        Lcom/android/calculator2/CalculatorExpr$EvalRet;,
        Lcom/android/calculator2/CalculatorExpr$PreEval;,
        Lcom/android/calculator2/CalculatorExpr$Constant;,
        Lcom/android/calculator2/CalculatorExpr$Operator;,
        Lcom/android/calculator2/CalculatorExpr$Token;,
        Lcom/android/calculator2/CalculatorExpr$TokenKind;,
        Lcom/android/calculator2/CalculatorExpr$ExprResolver;
    }
.end annotation


# static fields
.field private static final BIG_BILLION:Ljava/math/BigInteger;

.field private static final BIG_MILLION:Ljava/math/BigInteger;

.field private static final ONE_HUNDREDTH:Lcom/android/calculator2/UnifiedReal;

.field private static final TAG:Ljava/lang/String; = "CalculatorExpr"

.field private static tokenKindValues:[Lcom/android/calculator2/CalculatorExpr$TokenKind;


# instance fields
.field private mExpr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/CalculatorExpr$Token;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/CalculatorExpr$TokenString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->values()[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorExpr;->tokenKindValues:[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    const-wide/32 v0, 0xf4240

    .line 88
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorExpr;->BIG_MILLION:Ljava/math/BigInteger;

    const-wide/32 v0, 0x3b9aca00

    .line 89
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorExpr;->BIG_BILLION:Ljava/math/BigInteger;

    .line 2177
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/calculator2/UnifiedReal;->inverse()Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorExpr;->ONE_HUNDREDTH:Lcom/android/calculator2/UnifiedReal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    .line 822
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 824
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorExpr;->newToken(Ljava/io/DataInput;)Lcom/android/calculator2/CalculatorExpr$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/CalculatorExpr$Token;",
            ">;)V"
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    .line 814
    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    return-void
.end method

.method private addReferencedExprs(Ljava/util/ArrayList;Lcom/android/calculator2/CalculatorExpr$ExprResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/calculator2/CalculatorExpr$ExprResolver;",
            ")V"
        }
    .end annotation

    .line 2385
    :try_start_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2386
    instance-of v1, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    if-eqz v1, :cond_0

    .line 2387
    check-cast v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    iget-wide v0, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2388
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->getResult(J)Lcom/android/calculator2/UnifiedReal;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2389
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private canStartFactor(I)Z
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 2224
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2225
    instance-of p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 2226
    :cond_1
    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    .line 2227
    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const p1, 0x7f0a0151

    if-eq p0, p1, :cond_3

    const p1, 0x7f0a0196

    if-eq p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2304
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalTerm(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2306
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2307
    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    :goto_0
    const v1, 0x7f0a014f

    .line 2308
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v1

    if-nez v1, :cond_1

    const v2, 0x7f0a0158

    .line 2309
    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2323
    :cond_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 2310
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr;->isPercent(I)Z

    move-result v2

    if-eqz v2, :cond_2

    xor-int/lit8 v1, v1, 0x1

    .line 2311
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->getPercentFactor(IZLcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object v0

    .line 2312
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_2

    .line 2314
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->evalTerm(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object v0

    if-eqz v1, :cond_3

    .line 2316
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/UnifiedReal;->add(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_2

    .line 2318
    :cond_3
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/UnifiedReal;->subtract(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    .line 2321
    :goto_2
    iget v0, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    goto :goto_0
.end method

.method private evalFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2202
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalSuffix(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2203
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2204
    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    const v1, 0x7f0a0154

    .line 2205
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2206
    invoke-direct {p0, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->evalSignedFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2207
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2208
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/UnifiedReal;->pow(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    .line 2210
    :cond_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0
.end method

.method private evalSignedFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    const v0, 0x7f0a0158

    .line 2214
    invoke-direct {p0, p1, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2216
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2217
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    if-eqz v0, :cond_1

    .line 2218
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    .line 2219
    :goto_0
    new-instance p2, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    invoke-direct {p2, p1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p2
.end method

.method private evalSuffix(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2180
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalUnary(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2181
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2182
    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0a0151

    .line 2186
    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v2

    if-nez v2, :cond_1

    const v1, 0x7f0a0155

    .line 2187
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v1

    if-nez v1, :cond_1

    const v3, 0x7f0a0153

    .line 2188
    invoke-direct {p0, v0, v3, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2198
    :cond_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2190
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->fact()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 2192
    invoke-virtual {p1, p1}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_2

    .line 2194
    :cond_3
    sget-object v2, Lcom/android/calculator2/CalculatorExpr;->ONE_HUNDREDTH:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v2}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private evalTerm(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2238
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalSignedFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2241
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2242
    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f0a0152

    .line 2243
    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v2

    if-nez v2, :cond_1

    const v1, 0x7f0a0150

    .line 2244
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2245
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr;->canStartFactor(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2256
    :cond_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 2247
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->evalSignedFactor(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object v0

    if-eqz v1, :cond_4

    .line 2249
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    goto :goto_2

    .line 2251
    :cond_4
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, v1}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    .line 2253
    :goto_2
    iget v0, v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    goto :goto_0
.end method

.method private evalUnary(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2076
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Token;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    instance-of v1, v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-eqz v1, :cond_0

    .line 2081
    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    .line 2082
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    add-int/lit8 p1, p1, 0x1

    new-instance p2, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->toRational()Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    .line 2084
    :cond_0
    instance-of v1, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    if-eqz v1, :cond_2

    .line 2085
    check-cast v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    iget-wide v0, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    .line 2086
    iget-object v2, p2, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mExprResolver:Lcom/android/calculator2/CalculatorExpr$ExprResolver;

    invoke-interface {v2, v0, v1}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->getResult(J)Lcom/android/calculator2/UnifiedReal;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2090
    iget-object p2, p2, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mExprResolver:Lcom/android/calculator2/CalculatorExpr$ExprResolver;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->nestedEval(JLcom/android/calculator2/CalculatorExpr$ExprResolver;)Lcom/android/calculator2/UnifiedReal;

    move-result-object v2

    .line 2092
    :cond_1
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    .line 2095
    :cond_2
    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Operator;

    iget v0, v0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    const v1, 0x7f0a0113

    const v2, 0x7f0a0196

    if-eq v0, v1, :cond_e

    const v1, 0x7f0a0156

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2173
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$SyntaxException;

    const-string p1, "Unrecognized token in expression"

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$SyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 2130
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2131
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2132
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2134
    :cond_3
    iget-object v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->toRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    .line 2135
    new-instance p2, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sin()Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->cos()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p2

    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    .line 2118
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2119
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2120
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2122
    :cond_4
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget v1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->toRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sin()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object v0

    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    .line 2149
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2150
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2151
    iget p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2153
    :cond_5
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->ln()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->TEN:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {v0}, Lcom/android/calculator2/UnifiedReal;->ln()Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :pswitch_3
    add-int/lit8 p1, p1, 0x1

    .line 2137
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2138
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2139
    iget p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2141
    :cond_6
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->ln()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :pswitch_4
    add-int/lit8 p1, p1, 0x1

    .line 2143
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2144
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2145
    iget p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2147
    :cond_7
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->exp()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :pswitch_5
    add-int/lit8 p1, p1, 0x1

    .line 2124
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2125
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2126
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2128
    :cond_8
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget v1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->toRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->cos()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object v0

    :pswitch_6
    add-int/lit8 p1, p1, 0x1

    .line 2167
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2168
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2169
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2171
    :cond_9
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget v1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->atan()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->fromRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object v0

    :pswitch_7
    add-int/lit8 p1, p1, 0x1

    .line 2155
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2156
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2157
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2159
    :cond_a
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget v1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->asin()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->fromRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object v0

    :pswitch_8
    add-int/lit8 p1, p1, 0x1

    .line 2161
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2162
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2163
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2165
    :cond_b
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget v1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->acos()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->fromRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object v0

    .line 2097
    :pswitch_9
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    add-int/lit8 p1, p1, 0x1

    sget-object p2, Lcom/android/calculator2/UnifiedReal;->PI:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    .line 2099
    :pswitch_a
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    add-int/lit8 p1, p1, 0x1

    sget-object p2, Lcom/android/calculator2/UnifiedReal;->E:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    :cond_c
    add-int/lit8 v0, p1, 0x1

    const v1, 0x7f0a0158

    .line 2104
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 p1, p1, 0x2

    .line 2105
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalUnary(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2106
    new-instance p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sqrt()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p1

    .line 2108
    :cond_d
    invoke-direct {p0, v0, p2}, Lcom/android/calculator2/CalculatorExpr;->evalUnary(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2109
    new-instance p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sqrt()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    .line 2112
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p1

    .line 2113
    iget v0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    invoke-direct {p0, v0, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 2114
    iget p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    .line 2116
    :cond_f
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    iget p2, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    iget-object p1, p1, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, p2, p1}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p0

    .line 2078
    :catch_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$SyntaxException;

    const-string p1, "Unrecognized token in expression"

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$SyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a007e
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00d0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fromRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;
    .locals 0

    .line 2033
    iget-boolean p0, p2, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mDegreeMode:Z

    if-eqz p0, :cond_0

    .line 2034
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->RADIANS_PER_DEGREE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private getDistanceNoSeparator(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 880
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 884
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p3, p1, :cond_1

    .line 885
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    .line 887
    :cond_1
    invoke-virtual {p0, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CalculatorExpr"

    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getFormulaNoSeparatorSelection: headText == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ","

    const-string p2, ""

    .line 889
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private getPercentFactor(IZLcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2297
    invoke-direct {p0, p1, p3}, Lcom/android/calculator2/CalculatorExpr;->evalUnary(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 2298
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    .line 2299
    :goto_0
    sget-object p2, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    sget-object p3, Lcom/android/calculator2/CalculatorExpr;->ONE_HUNDREDTH:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, p3}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/calculator2/UnifiedReal;->add(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    .line 2300
    new-instance p2, Lcom/android/calculator2/CalculatorExpr$EvalRet;

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p2, p1, p0}, Lcom/android/calculator2/CalculatorExpr$EvalRet;-><init>(ILcom/android/calculator2/UnifiedReal;)V

    return-object p2
.end method

.method private isOperator(IILcom/android/calculator2/CalculatorExpr$EvalContext;)Z
    .locals 0

    .line 2052
    iget p3, p3, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mPrefixLength:I

    if-lt p1, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2055
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorExpr;->isOperatorUnchecked(II)Z

    move-result p0

    return p0
.end method

.method private isOperatorUnchecked(II)Z
    .locals 1

    .line 2044
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2045
    instance-of p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2048
    :cond_0
    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isPercent(I)Z
    .locals 4

    .line 2271
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    add-int/lit8 v0, p1, 0x1

    const v3, 0x7f0a0153

    invoke-direct {p0, v0, v3}, Lcom/android/calculator2/CalculatorExpr;->isOperatorUnchecked(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2275
    instance-of p1, p1, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-eqz p1, :cond_1

    return v2

    .line 2278
    :cond_1
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v1, :cond_2

    return v0

    .line 2281
    :cond_2
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez p1, :cond_3

    return v2

    .line 2284
    :cond_3
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    .line 2285
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    const v1, 0x7f0a014f

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    const v1, 0x7f0a0158

    if-eq p1, v1, :cond_5

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    const p1, 0x7f0a0196

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v2
.end method

.method public static newToken(Ljava/io/DataInput;)Lcom/android/calculator2/CalculatorExpr$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 786
    sget-object v1, Lcom/android/calculator2/CalculatorExpr;->tokenKindValues:[Lcom/android/calculator2/CalculatorExpr$TokenKind;

    aget-object v0, v1, v0

    .line 787
    sget-object v1, Lcom/android/calculator2/CalculatorExpr$1;->$SwitchMap$com$android$calculator2$CalculatorExpr$TokenKind:[I

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 802
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Bad save file format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 791
    :pswitch_0
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorExpr$PreEval;-><init>(Ljava/io/DataInput;)V

    .line 792
    iget-wide v1, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-string p0, "CalculatorExpr"

    const-string v0, "newToken   PRE_EVAL"

    .line 795
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    const v0, 0x7f0a0098

    const/4 v1, 0x0

    .line 797
    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    return-object p0

    :cond_0
    return-object v0

    .line 789
    :pswitch_1
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>(Ljava/io/DataInput;)V

    return-object v0

    .line 805
    :cond_1
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(B)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toRadians(Lcom/android/calculator2/UnifiedReal;Lcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/UnifiedReal;
    .locals 0

    .line 2025
    iget-boolean p0, p2, Lcom/android/calculator2/CalculatorExpr$EvalContext;->mDegreeMode:Z

    if-eqz p0, :cond_0

    .line 2026
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->RADIANS_PER_DEGREE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p1, p0}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private trailingBinaryOpsStart()I
    .locals 3

    .line 2330
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 2332
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2333
    instance-of v2, v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2334
    :cond_0
    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    .line 2335
    iget v1, v1, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {v1}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public abbreviate(JLjava/lang/String;)Lcom/android/calculator2/CalculatorExpr;
    .locals 1

    .line 1980
    new-instance p0, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    .line 1982
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/calculator2/CalculatorExpr$PreEval;-><init>(JLjava/lang/String;)V

    .line 1983
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method add(Landroid/content/Context;II)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 902
    iget-object v4, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "CalculatorExpr"

    .line 905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add  mExpr.size() == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CalculatorExpr"

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add  position == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    .line 907
    :goto_0
    iget-object v9, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 908
    iget-object v7, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v7}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v7

    .line 909
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v8}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v8

    if-ne v3, v7, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    if-le v3, v7, :cond_1

    if-gt v3, v8, :cond_1

    add-int/lit8 v4, v6, 0x1

    sub-int v6, v3, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    if-le v3, v8, :cond_3

    sub-int v6, v8, v7

    .line 925
    :cond_3
    invoke-direct {v1, v0, v4, v6}, Lcom/android/calculator2/CalculatorExpr;->getDistanceNoSeparator(Landroid/content/Context;II)I

    move-result v9

    const-string v10, "CalculatorExpr"

    .line 926
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add  startPos == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CalculatorExpr"

    .line 927
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add  endPos == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CalculatorExpr"

    .line 928
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add  s == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CalculatorExpr"

    .line 929
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add  distance == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->digVal(I)I

    move-result v10

    .line 931
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v11

    if-nez v4, :cond_4

    const/4 v12, 0x0

    goto :goto_3

    .line 932
    :cond_4
    iget-object v12, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 933
    :goto_3
    instance-of v13, v12, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-eqz v13, :cond_5

    check-cast v12, Lcom/android/calculator2/CalculatorExpr$Operator;

    iget v12, v12, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    goto :goto_4

    :cond_5
    move v12, v5

    :goto_4
    const v13, 0x7f0a0113

    const v14, 0x7f0a0158

    const/4 v15, 0x1

    if-eqz v11, :cond_b

    .line 936
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isPrefix(I)Z

    move-result v11

    if-nez v11, :cond_b

    if-eqz v4, :cond_a

    if-eq v12, v13, :cond_a

    .line 937
    invoke-static {v12}, Lcom/android/calculator2/KeyMaps;->isFunc(I)Z

    move-result v11

    if-nez v11, :cond_a

    .line 938
    invoke-static {v12}, Lcom/android/calculator2/KeyMaps;->isPrefix(I)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eq v12, v14, :cond_6

    goto :goto_6

    .line 942
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/calculator2/CalculatorExpr;->hasTrailingBinary(I)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v6, :cond_7

    sub-int v11, v8, v7

    if-ne v6, v11, :cond_9

    :cond_7
    :goto_5
    if-lez v4, :cond_8

    if-lez v3, :cond_8

    .line 943
    invoke-virtual {v1, v4}, Lcom/android/calculator2/CalculatorExpr;->hasTrailingBinary(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "CalculatorExpr"

    const-string v7, "(s > 0) && hasTrailingBinary(s)"

    .line 944
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/calculator2/CalculatorExpr;->delete(Landroid/content/Context;ZI)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 950
    :cond_8
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v15

    :cond_9
    add-int/lit8 v11, v4, 0x1

    .line 952
    iget-object v12, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_b

    invoke-virtual {v1, v11}, Lcom/android/calculator2/CalculatorExpr;->hasTrailingBinary(I)Z

    move-result v11

    if-eqz v11, :cond_b

    sub-int/2addr v8, v7

    if-ne v6, v8, :cond_b

    add-int/2addr v3, v15

    .line 953
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/calculator2/CalculatorExpr;->delete(Landroid/content/Context;ZI)V

    .line 954
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "CalculatorExpr"

    const-string v1, "add  000000000"

    .line 955
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_a
    :goto_6
    return v5

    :cond_b
    const/16 v7, 0xa

    const v8, 0x7f0a0098

    if-ne v10, v7, :cond_d

    if-ne v2, v8, :cond_c

    goto :goto_7

    :cond_c
    move v7, v5

    goto :goto_8

    :cond_d
    :goto_7
    move v7, v15

    .line 961
    :goto_8
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result v10

    const v11, 0x7f0a0157

    const v12, 0x7f0a00cf

    const v14, 0x7f0a007e

    if-nez v10, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isFunc(I)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isPrefix(I)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isSuffix(I)Z

    move-result v10

    if-nez v10, :cond_f

    if-eq v2, v14, :cond_f

    const v10, 0x7f0a007f

    if-eq v2, v10, :cond_f

    if-eq v2, v13, :cond_f

    const v10, 0x7f0a0196

    if-eq v2, v10, :cond_f

    const v10, 0x7f0a0155

    if-eq v2, v10, :cond_f

    if-eq v2, v12, :cond_f

    if-ne v2, v11, :cond_e

    goto :goto_9

    :cond_e
    move v10, v5

    goto :goto_a

    :cond_f
    :goto_9
    move v10, v15

    :goto_a
    const/16 v13, 0x2c

    const/16 v12, 0x30

    const v11, 0x7f0a00a3

    if-eqz v7, :cond_3d

    if-nez v4, :cond_1a

    .line 967
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    .line 968
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne v2, v8, :cond_10

    .line 970
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 972
    :cond_10
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0

    return v0

    .line 974
    :cond_11
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v3

    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v6}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v6

    sub-int/2addr v3, v6

    .line 975
    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v6, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 976
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-eqz v0, :cond_13

    .line 978
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne v2, v8, :cond_12

    .line 980
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 982
    :cond_12
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0

    return v0

    :cond_13
    if-ne v2, v8, :cond_19

    move v0, v5

    :goto_b
    if-ge v0, v3, :cond_15

    .line 987
    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_14

    return v5

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    .line 992
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 995
    :cond_15
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, 0x1

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v8}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 996
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 997
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    const-string v0, "CalculatorExpr"

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add point ssb == "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_c
    if-ge v0, v3, :cond_18

    .line 1003
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v12

    if-ltz v2, :cond_16

    const/16 v8, 0x9

    if-gt v2, v8, :cond_16

    .line 1005
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v2

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_d

    .line 1006
    :cond_16
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    if-ne v2, v13, :cond_17

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    move-object v6, v2

    :cond_17
    :goto_d
    add-int/2addr v0, v15

    goto :goto_c

    .line 1013
    :cond_18
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 1017
    :cond_19
    :try_start_1
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    const-string v0, "CalculatorExpr"

    const-string v1, "PreEval cannot be cast to com.android.calculator2.CalculatorExpr Constant"

    .line 1019
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return v15

    :cond_1a
    const-string v3, "CalculatorExpr"

    .line 1026
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add s == "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CalculatorExpr"

    .line 1027
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add mTokenPos.size() == "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v7, v4, -0x1

    if-le v3, v7, :cond_1b

    .line 1030
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v3

    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v10}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v10

    sub-int/2addr v3, v10

    goto :goto_f

    :cond_1b
    move v3, v5

    :goto_f
    const-string v10, "CalculatorExpr"

    .line 1034
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add pos11111 == "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1036
    instance-of v10, v10, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-nez v10, :cond_2d

    const-string v10, "CalculatorExpr"

    const-string v13, "add last is operator"

    .line 1037
    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v10, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    if-ge v6, v3, :cond_1d

    const-string v13, "sin("

    .line 1040
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "cos("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "cos\u9226\u5ba6\ufffd("

    .line 1041
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "tan("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "ln("

    .line 1042
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "exp("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "log("

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    :cond_1c
    return v5

    .line 1046
    :cond_1d
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v4, v10, :cond_1f

    .line 1047
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne v2, v8, :cond_1e

    .line 1049
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1051
    :cond_1e
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0

    return v0

    .line 1054
    :cond_1f
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v10, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1055
    iget-object v13, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v13, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v2, v8, :cond_29

    if-ne v6, v3, :cond_2d

    const-string v0, "sin("

    .line 1060
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "cos("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "cos\u9226\u5ba6\ufffd("

    .line 1061
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "tan("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "ln("

    .line 1062
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "exp("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "log("

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "("

    .line 1063
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_13

    :cond_20
    move v0, v5

    :goto_10
    if-ge v0, v13, :cond_22

    .line 1069
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v3

    if-ne v3, v8, :cond_21

    return v5

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1073
    :cond_22
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, 0x1

    new-instance v6, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v6}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1074
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1075
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move v0, v5

    :goto_11
    if-ge v0, v13, :cond_27

    .line 1080
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v12

    if-ltz v2, :cond_23

    const/16 v6, 0x9

    if-gt v2, v6, :cond_23

    .line 1082
    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v2

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v2, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_12

    .line 1083
    :cond_23
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    if-ne v2, v14, :cond_24

    .line 1084
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_12

    .line 1085
    :cond_24
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    const v6, 0x7f0a0158

    if-ne v2, v6, :cond_25

    .line 1086
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_12

    .line 1087
    :cond_25
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_26

    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v10, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v0, v0, -0x1

    move-object v10, v2

    :cond_26
    :goto_12
    const/4 v2, 0x1

    add-int/2addr v0, v2

    goto/16 :goto_11

    .line 1094
    :cond_27
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_14

    .line 1064
    :cond_28
    :goto_13
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1065
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v11, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1066
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_14
    const/4 v1, 0x1

    return v1

    .line 1100
    :cond_29
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v12, :cond_2a

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-le v0, v3, :cond_2b

    :cond_2a
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v0

    if-ne v0, v8, :cond_2c

    .line 1103
    :cond_2b
    :try_start_2
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move v0, v5

    :goto_15
    return v0

    .line 1108
    :cond_2c
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1112
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0

    return v0

    .line 1119
    :cond_2d
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v10, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "CalculatorExpr"

    .line 1120
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add ssb == "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CalculatorExpr"

    .line 1121
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add distance22222 == "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_3a

    if-ge v6, v3, :cond_3a

    move v9, v5

    :goto_16
    if-ge v9, v3, :cond_2f

    .line 1127
    :try_start_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1133
    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    if-ne v10, v8, :cond_2e

    return v5

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1129
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    return v5

    .line 1137
    :cond_2f
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v9}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v8, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v8, v3

    move-object v3, v0

    move v0, v5

    :goto_17
    if-ge v0, v6, :cond_34

    .line 1140
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v12

    if-ltz v9, :cond_30

    const/16 v10, 0x9

    if-gt v9, v10, :cond_30

    .line 1142
    iget-object v10, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v9

    invoke-virtual {v10, v9, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto/16 :goto_18

    .line 1143
    :cond_30
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    if-ne v9, v14, :cond_31

    .line 1144
    iget-object v9, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    invoke-virtual {v9, v10, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_18

    .line 1145
    :cond_31
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    const v10, 0x7f0a0158

    if-ne v9, v10, :cond_32

    .line 1146
    iget-object v9, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v9, v10, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_18

    .line 1147
    :cond_32
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_33

    const-string v9, "CalculatorExpr"

    .line 1148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add i111111 == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v8, -0x1

    const-string v9, "CalculatorExpr"

    .line 1153
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add ssb11111 == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_18
    const/4 v9, 0x1

    add-int/2addr v0, v9

    goto/16 :goto_17

    .line 1156
    :cond_34
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v6}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    const-string v0, "CalculatorExpr"

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add distance3333333 == "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    if-ge v6, v8, :cond_39

    const-string v0, "CalculatorExpr"

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add ssb22222 == "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CalculatorExpr"

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add i == "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v12

    if-ltz v0, :cond_35

    const/16 v2, 0x9

    if-gt v0, v2, :cond_35

    .line 1163
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v0

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v2, v0, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_1a

    .line 1164
    :cond_35
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v0

    if-ne v0, v14, :cond_36

    .line 1165
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_1a

    .line 1166
    :cond_36
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v0

    const v2, 0x7f0a0158

    if-ne v0, v2, :cond_37

    .line 1167
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_1a

    .line 1168
    :cond_37
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_38

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v8, -0x1

    move-object v3, v0

    :cond_38
    :goto_1a
    const/4 v10, 0x1

    add-int/2addr v6, v10

    goto/16 :goto_19

    :cond_39
    const/4 v10, 0x1

    .line 1175
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v10

    :cond_3a
    const/4 v10, 0x1

    if-ne v2, v11, :cond_3c

    if-ge v6, v3, :cond_3c

    move v4, v5

    :goto_1b
    if-ge v4, v3, :cond_3c

    .line 1179
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v11, 0x7f0a0158

    if-ne v8, v11, :cond_3b

    add-int/lit8 v8, v6, -0x1

    if-ne v4, v8, :cond_3b

    return v5

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    goto :goto_1b

    .line 1185
    :cond_3c
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0

    return v0

    :cond_3d
    if-eqz v10, :cond_73

    const-string v7, "CalculatorExpr"

    const-string v10, "add  isOperator == true"

    .line 1189
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0a0154

    const v10, 0x7f0a00a5

    if-nez v4, :cond_41

    const v13, 0x7f0a0157

    if-ne v2, v13, :cond_3e

    return v5

    :cond_3e
    const v0, 0x7f0a00cf

    if-ne v2, v0, :cond_3f

    .line 1194
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v2}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1195
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1196
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    const/4 v2, 0x1

    invoke-virtual {v0, v11, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1197
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/2addr v4, v2

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v7}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    .line 1200
    :cond_3f
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_40
    :goto_1c
    const/4 v3, 0x1

    goto/16 :goto_31

    :cond_41
    if-nez v6, :cond_45

    const v13, 0x7f0a0157

    if-ne v2, v13, :cond_42

    .line 1206
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v2, v7}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1207
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x1

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v6, 0x7f0a0113

    invoke-direct {v3, v6}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1208
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x2

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1209
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1210
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x3

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v2, 0x7f0a0150

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1211
    :cond_42
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isFunc(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1212
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1c

    :cond_43
    const v0, 0x7f0a00cf

    if-ne v2, v0, :cond_44

    .line 1214
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v2}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1215
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1216
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    const/4 v2, 0x1

    invoke-virtual {v0, v11, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1217
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/2addr v4, v2

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v7}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    .line 1220
    :cond_44
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1c

    .line 1225
    :cond_45
    :try_start_4
    iget-object v13, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v13}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v13

    iget-object v12, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v12}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    sub-int/2addr v13, v12

    .line 1231
    iget-object v12, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v12, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v8, "CalculatorExpr"

    .line 1232
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add  pos1 == "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v6, v13, :cond_51

    .line 1236
    invoke-static/range {p2 .. p2}, Lcom/android/calculator2/KeyMaps;->isFunc(I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1237
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1c

    :cond_46
    const v6, 0x7f0a00cf

    if-ne v2, v6, :cond_49

    const v2, 0x7f1100b6

    .line 1239
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const v2, 0x7f1100b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const v2, 0x7f1100ba

    .line 1240
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const v2, 0x7f1100bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "sin("

    .line 1241
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "cos("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "cos\u9226\u5ba6\ufffd("

    .line 1242
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "tan("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "ln("

    .line 1243
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "exp("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "log("

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "\u87fa"

    .line 1244
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "e"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_1d

    .line 1251
    :cond_47
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v3, 0x7f0a0152

    invoke-direct {v2, v3}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1252
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x1

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1253
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1254
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    const/4 v2, 0x1

    invoke-virtual {v0, v11, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1255
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/2addr v4, v7

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v3, 0x7f0a0154

    invoke-direct {v1, v3}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    .line 1245
    :cond_48
    :goto_1d
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v2}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1246
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1247
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    const/4 v2, 0x1

    invoke-virtual {v0, v11, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1248
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/2addr v4, v2

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v6, 0x7f0a0154

    invoke-direct {v1, v6}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    :cond_49
    const v6, 0x7f0a0154

    const v7, 0x7f0a0157

    if-ne v2, v7, :cond_4a

    .line 1259
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v2, v6}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1260
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x1

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v6, 0x7f0a0113

    invoke-direct {v3, v6}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1261
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v2, v4, 0x2

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v3}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1262
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1263
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x3

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v2, 0x7f0a0150

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1c

    .line 1267
    :cond_4a
    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v6, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1100b7

    .line 1271
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const v7, 0x7f0a0150

    if-eq v2, v7, :cond_4d

    :cond_4b
    const v7, 0x7f1100ba

    .line 1272
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const v7, 0x7f0a0152

    if-eq v2, v7, :cond_4d

    :cond_4c
    const v7, 0x7f1100bf

    .line 1273
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    const v7, 0x7f0a0158

    if-ne v2, v7, :cond_4f

    :cond_4d
    return v5

    :cond_4e
    const v7, 0x7f0a0158

    :cond_4f
    const v8, 0x7f1100b6

    .line 1276
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    if-ne v2, v7, :cond_50

    .line 1278
    :try_start_5
    invoke-virtual {v1, v0, v5, v3}, Lcom/android/calculator2/CalculatorExpr;->delete(Landroid/content/Context;ZI)V

    .line 1279
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1c

    :catch_4
    return v5

    :cond_50
    const-string v0, "CalculatorExpr"

    const-string v3, "add  Operator at the end"

    .line 1288
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v1, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1c

    :cond_51
    const-string v3, "sin("

    .line 1305
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "cos("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "cos\u9226\u5ba6\ufffd("

    .line 1306
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "tan("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "ln("

    .line 1307
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "exp("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "log("

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto/16 :goto_32

    :cond_52
    const-string v3, "CalculatorExpr"

    .line 1312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add  ssb == "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v6, -0x1

    .line 1316
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v14, 0x7f0a0158

    if-ne v8, v14, :cond_54

    if-lt v6, v7, :cond_54

    add-int/lit8 v7, v6, -0x2

    .line 1317
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v7

    const v8, 0x7f0a007e

    if-ne v7, v8, :cond_54

    const v0, 0x7f0a014f

    if-ne v2, v0, :cond_53

    .line 1321
    :try_start_6
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v2, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1e

    :catch_5
    move-exception v0

    .line 1323
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const-string v0, "CalculatorExpr"

    const-string v1, "Aaron: can not cast into Constant."

    .line 1324
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_1e
    return v0

    :cond_53
    return v5

    .line 1330
    :cond_54
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v3

    const v7, 0x7f0a007e

    if-ne v3, v7, :cond_55

    return v5

    :cond_55
    const v3, 0x7f0a00cf

    if-ne v2, v3, :cond_56

    .line 1337
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v7, 0x7f0a0152

    invoke-direct {v3, v7}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1338
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, 0x1

    new-instance v7, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v7}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1339
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v2, v10, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1340
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    .line 1341
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, 0x2

    new-instance v7, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v8, 0x7f0a0154

    invoke-direct {v7, v8}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x3

    goto :goto_1f

    .line 1345
    :cond_56
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v7, v2}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    add-int/2addr v4, v2

    :goto_1f
    const-string v2, "CalculatorExpr"

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mExpr.get(s - 1).toCharSequence(context).toString() == "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v7, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalculatorExpr"

    .line 1351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add  str == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 1356
    :goto_20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_58

    .line 1357
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v7

    const v8, 0x7f0a0098

    if-ne v7, v8, :cond_57

    move v7, v3

    const/4 v3, 0x1

    goto :goto_21

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_58
    move v3, v5

    move v7, v3

    .line 1363
    :goto_21
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v9}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v8, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v8, 0x1

    if-ne v3, v8, :cond_60

    move-object v3, v2

    move v2, v5

    :goto_22
    if-ge v2, v7, :cond_5c

    .line 1367
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    sub-int/2addr v8, v9

    .line 1368
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    const v10, 0x7f0a007e

    if-ne v9, v10, :cond_59

    .line 1369
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_23

    .line 1370
    :cond_59
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    const v10, 0x7f0a0158

    if-ne v9, v10, :cond_5a

    .line 1371
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v8, v10, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_23

    .line 1372
    :cond_5a
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_5b

    .line 1373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    .line 1377
    :cond_5b
    iget-object v9, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v8

    invoke-virtual {v9, v8, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_23
    const/4 v8, 0x1

    add-int/2addr v2, v8

    goto/16 :goto_22

    :cond_5c
    const/4 v8, 0x1

    .line 1380
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    const v9, 0x7f0a0098

    invoke-virtual {v2, v9, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    add-int/2addr v7, v8

    .line 1381
    :goto_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_64

    .line 1382
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v8, 0x30

    sub-int/2addr v2, v8

    .line 1383
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v9, 0x7f0a007e

    if-ne v8, v9, :cond_5d

    .line 1384
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    invoke-virtual {v2, v8, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_25

    .line 1385
    :cond_5d
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v9, 0x7f0a0158

    if-ne v8, v9, :cond_5e

    .line 1386
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v2, v9, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_25

    .line 1387
    :cond_5e
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_5f

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v7, -0x1

    move-object v3, v2

    goto :goto_25

    .line 1391
    :cond_5f
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v2

    invoke-virtual {v8, v2, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_25
    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto/16 :goto_24

    :cond_60
    move-object v3, v2

    move v2, v5

    .line 1395
    :goto_26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_64

    .line 1396
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    sub-int/2addr v7, v8

    const-string v8, "CalculatorExpr"

    .line 1397
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add  c111 == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v9, 0x7f0a007e

    if-ne v8, v9, :cond_61

    const-string v7, "CalculatorExpr"

    const-string v8, "add  c == 1111111111"

    .line 1399
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v7, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_27

    .line 1401
    :cond_61
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const v9, 0x7f0a0158

    if-ne v8, v9, :cond_62

    const-string v7, "CalculatorExpr"

    const-string v8, "add  c == 2222222222"

    .line 1402
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v7, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v7, v9, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_27

    :cond_62
    const/4 v8, -0x4

    if-ne v7, v8, :cond_63

    const-string v7, "CalculatorExpr"

    const-string v8, "add  c == 444444444"

    .line 1405
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    :cond_63
    const-string v8, "CalculatorExpr"

    const-string v9, "add  c == 3333333333"

    .line 1409
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v8, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v7

    invoke-virtual {v8, v7, v2}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_27
    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto/16 :goto_26

    .line 1416
    :cond_64
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v2, v0}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CalculatorExpr"

    .line 1417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add  strHead == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1419
    iget-object v2, v1, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v5

    .line 1422
    :goto_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 1423
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v3

    const v4, 0x7f0a0098

    if-ne v3, v4, :cond_65

    move v3, v2

    const/4 v2, 0x1

    goto :goto_29

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_66
    move v2, v5

    move v3, v2

    .line 1429
    :goto_29
    iget-object v4, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v6}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v4, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6e

    move-object v2, v0

    move v0, v5

    :goto_2a
    if-ge v0, v3, :cond_6a

    .line 1432
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    sub-int/2addr v4, v6

    .line 1433
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    const v7, 0x7f0a007e

    if-ne v6, v7, :cond_67

    .line 1434
    iget-object v4, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2b

    .line 1435
    :cond_67
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    const v7, 0x7f0a0158

    if-ne v6, v7, :cond_68

    .line 1436
    iget-object v4, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v7, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2b

    .line 1437
    :cond_68
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_69

    .line 1438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 1442
    :cond_69
    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v4

    invoke-virtual {v6, v4, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_2b
    const/4 v4, 0x1

    add-int/2addr v0, v4

    goto/16 :goto_2a

    :cond_6a
    const/4 v4, 0x1

    .line 1445
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    const v6, 0x7f0a0098

    invoke-virtual {v0, v6, v3}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_2c
    add-int/2addr v3, v4

    .line 1446
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_40

    .line 1447
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    sub-int/2addr v0, v4

    .line 1448
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v4

    const v6, 0x7f0a007e

    if-ne v4, v6, :cond_6b

    .line 1449
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_2d
    const/16 v6, 0x2c

    goto :goto_2e

    .line 1450
    :cond_6b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v4

    const v6, 0x7f0a0158

    if-ne v4, v6, :cond_6c

    .line 1451
    iget-object v0, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, v6, v3}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2d

    .line 1452
    :cond_6c
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_6d

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    move-object v2, v0

    goto :goto_2e

    .line 1456
    :cond_6d
    iget-object v4, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_2e
    const/4 v4, 0x1

    goto/16 :goto_2c

    :cond_6e
    move-object v2, v0

    move v0, v5

    .line 1460
    :goto_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_40

    .line 1461
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    sub-int/2addr v3, v4

    const-string v6, "CalculatorExpr"

    .line 1462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add  c222 == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    const v7, 0x7f0a007e

    if-ne v6, v7, :cond_6f

    const-string v3, "CalculatorExpr"

    const-string v6, "add  c222 == 111111111"

    .line 1464
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    invoke-virtual {v3, v6, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    const v8, 0x7f0a0158

    goto :goto_30

    .line 1466
    :cond_6f
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    const v8, 0x7f0a0158

    if-ne v6, v8, :cond_70

    const-string v3, "CalculatorExpr"

    const-string v6, "add  c222 == 222222222"

    .line 1467
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v3, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v3, v8, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_30

    :cond_70
    const/4 v6, -0x4

    if-ne v3, v6, :cond_71

    const-string v3, "CalculatorExpr"

    const-string v6, "add  c222 == 444444444"

    .line 1470
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_71
    const-string v6, "CalculatorExpr"

    const-string v9, "add  c222 == 333333333"

    .line 1474
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v6, v1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-static {v3}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v3

    invoke-virtual {v6, v3, v0}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_30
    const/4 v3, 0x1

    add-int/2addr v0, v3

    goto/16 :goto_2f

    :goto_31
    return v3

    :cond_72
    :goto_32
    return v5

    :catch_6
    move-exception v0

    .line 1227
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return v5

    :cond_73
    return v5
.end method

.method addExponent(I)V
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1662
    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->addExponent(I)V

    return-void
.end method

.method public append(Lcom/android/calculator2/CalculatorExpr;)V
    .locals 5

    .line 1692
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1693
    iget-object v1, p1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1697
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1698
    iget-object v3, p1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1699
    instance-of v3, v3, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez v3, :cond_0

    instance-of v0, v0, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calculator2/CalculatorExpr$Operator;

    const v4, 0x7f0a0152

    invoke-direct {v3, v4}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, "CalculatorExpr"

    const-string v1, "clear()"

    .line 1940
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1942
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1954
    new-instance v0, Lcom/android/calculator2/CalculatorExpr;

    invoke-direct {v0}, Lcom/android/calculator2/CalculatorExpr;-><init>()V

    .line 1955
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1956
    instance-of v2, v1, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-eqz v2, :cond_0

    .line 1957
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1959
    :cond_0
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public delete(Landroid/content/Context;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1715
    iget-object v3, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "CalculatorExpr"

    .line 1716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete mExpr.size() == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CalculatorExpr"

    .line 1717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete position == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1723
    :goto_0
    iget-object v8, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 1724
    iget-object v6, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v6}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v6

    .line 1725
    iget-object v7, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v7}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v7

    if-ne v2, v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    if-le v2, v6, :cond_2

    if-gt v2, v7, :cond_2

    add-int/lit8 v3, v5, 0x1

    sub-int v5, v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v5, 0x0

    :goto_2
    const-string v8, "CalculatorExpr"

    .line 1736
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete endPos == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "CalculatorExpr"

    .line 1737
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete startPos == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "CalculatorExpr"

    .line 1738
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete s == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v8, v7, v6

    .line 1740
    rem-int/lit8 v9, v8, 0x4

    const/4 v10, 0x1

    if-lez v9, :cond_4

    .line 1741
    div-int/lit8 v9, v8, 0x4

    sub-int/2addr v8, v9

    goto :goto_3

    :cond_4
    const/4 v11, 0x4

    if-le v8, v11, :cond_5

    if-nez v9, :cond_5

    .line 1743
    div-int/lit8 v9, v8, 0x4

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    return-void

    .line 1747
    :cond_6
    :goto_3
    invoke-direct {v0, v1, v3, v5}, Lcom/android/calculator2/CalculatorExpr;->getDistanceNoSeparator(Landroid/content/Context;II)I

    move-result v9

    const-string v11, "CalculatorExpr"

    .line 1748
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete pos == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v11, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v12, v3, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1750
    instance-of v13, v11, Lcom/android/calculator2/CalculatorExpr$Constant;

    const v14, 0x7f0a007e

    const v15, 0x7f0a0158

    if-eqz v13, :cond_e

    const-string v13, "CalculatorExpr"

    const-string v4, "delete last instanceof Constant"

    .line 1751
    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-virtual {v11, v1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1753
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v10

    :goto_4
    if-lez v13, :cond_d

    .line 1754
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    if-ne v10, v15, :cond_c

    add-int/lit8 v10, v13, -0x1

    .line 1755
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    if-ne v10, v14, :cond_c

    if-ne v5, v13, :cond_c

    const-string v1, "CalculatorExpr"

    const-string v8, "delete last instanceof Constant 111111111"

    .line 1757
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v6, 0x1

    if-ne v1, v2, :cond_8

    .line 1759
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v6, v15}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1760
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v8}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    add-int/2addr v5, v1

    .line 1761
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 1762
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1764
    :cond_7
    new-instance v1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-direct {v1}, Lcom/android/calculator2/CalculatorExpr$TokenString;-><init>()V

    .line 1765
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1766
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1767
    iget-object v4, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1769
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1770
    invoke-static {v1, v7}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1771
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_8
    if-ge v1, v2, :cond_b

    .line 1775
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v8}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v8, v5, -0x1

    if-ge v1, v8, :cond_9

    .line 1777
    iget-object v8, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1779
    :cond_9
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v9, v15}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1780
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, 0x2

    new-instance v10, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v10}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v1, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v5, 0x1

    .line 1781
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_a

    .line 1782
    iget-object v10, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v11

    sub-int v13, v1, v5

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v13}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1784
    :cond_a
    new-instance v1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-direct {v1}, Lcom/android/calculator2/CalculatorExpr$TokenString;-><init>()V

    const-string v4, "CalculatorExpr"

    .line 1785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "       position: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-static {v1, v6}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1787
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1788
    iget-object v4, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1791
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1792
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1793
    iget-object v3, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1795
    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1796
    invoke-static {v1, v7}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1797
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1800
    :cond_b
    :goto_8
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1801
    iget-object v0, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_c
    add-int/lit8 v13, v13, -0x1

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1805
    :cond_d
    check-cast v11, Lcom/android/calculator2/CalculatorExpr$Constant;

    .line 1806
    invoke-virtual {v11, v9, v8}, Lcom/android/calculator2/CalculatorExpr$Constant;->delete(II)V

    .line 1807
    invoke-virtual {v11}, Lcom/android/calculator2/CalculatorExpr$Constant;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    .line 1814
    :cond_e
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1815
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_2a

    .line 1818
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v3, v2, :cond_2a

    const/4 v2, 0x1

    if-le v3, v2, :cond_2a

    .line 1819
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1820
    iget-object v4, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 1821
    instance-of v2, v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-eqz v2, :cond_29

    instance-of v2, v4, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-nez v2, :cond_f

    goto/16 :goto_18

    .line 1824
    :cond_f
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1825
    iget-object v4, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v4, v1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1826
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v1, v12, v5}, Lcom/android/calculator2/CalculatorExpr;->getDistanceNoSeparator(Landroid/content/Context;II)I

    move-result v1

    const-string v5, "CalculatorExpr"

    .line 1827
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete       ssb1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CalculatorExpr"

    .line 1828
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete       ssb2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CalculatorExpr"

    .line 1829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete       ssb2LengthNoSeparator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    .line 1837
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x2e

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-lt v5, v9, :cond_11

    if-gt v5, v8, :cond_11

    if-lt v7, v9, :cond_10

    if-le v7, v8, :cond_14

    :cond_10
    if-eq v7, v6, :cond_14

    :cond_11
    if-lt v5, v9, :cond_12

    if-le v5, v8, :cond_13

    :cond_12
    if-ne v5, v6, :cond_2a

    :cond_13
    if-lt v7, v9, :cond_2a

    if-gt v7, v8, :cond_2a

    :cond_14
    const/4 v5, 0x0

    .line 1845
    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const v7, 0x7f0a0098

    if-ge v5, v6, :cond_16

    .line 1846
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v6

    if-ne v6, v7, :cond_15

    move v6, v5

    const/4 v5, 0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x0

    .line 1853
    :goto_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_18

    .line 1854
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    if-ne v10, v7, :cond_17

    const/4 v4, 0x1

    goto :goto_c

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    :goto_c
    const/16 v8, 0x2c

    const/4 v10, 0x1

    if-ne v5, v10, :cond_1f

    if-nez v4, :cond_1e

    move-object v4, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v6, :cond_1a

    .line 1865
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v8, :cond_19

    .line 1866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    :goto_e
    const/4 v5, 0x1

    goto :goto_f

    .line 1870
    :cond_19
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v10

    add-int v11, v1, v2

    invoke-virtual {v5, v10, v11}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_e

    :goto_f
    add-int/2addr v2, v5

    goto :goto_d

    :cond_1a
    const/4 v5, 0x1

    .line 1874
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v10, v1, v6

    invoke-virtual {v2, v7, v10}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    add-int/2addr v6, v5

    .line 1875
    :goto_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_28

    const-string v2, "CalculatorExpr"

    .line 1876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyMaps.keyForChar(ssb1.charAt(i))"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    if-ne v2, v14, :cond_1b

    .line 1878
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v5, v1, v6

    invoke-virtual {v2, v14, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_11

    .line 1879
    :cond_1b
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    if-ne v2, v15, :cond_1c

    .line 1880
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v5, v1, v6

    invoke-virtual {v2, v15, v5}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_11

    .line 1881
    :cond_1c
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v2

    if-ne v2, v8, :cond_1d

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, -0x1

    move-object v4, v2

    goto :goto_11

    .line 1885
    :cond_1d
    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v9

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v5

    add-int v7, v1, v6

    invoke-virtual {v2, v5, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_11
    const/4 v10, 0x1

    add-int/2addr v6, v10

    goto/16 :goto_10

    :cond_1e
    const/4 v10, 0x1

    :cond_1f
    if-nez v5, :cond_23

    if-ne v4, v10, :cond_23

    move-object v4, v2

    const/4 v2, 0x0

    .line 1891
    :goto_12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_28

    .line 1892
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v14, :cond_20

    .line 1893
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v6, v1, v2

    invoke-virtual {v5, v14, v6}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_13

    .line 1894
    :cond_20
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v15, :cond_21

    .line 1895
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v6, v1, v2

    invoke-virtual {v5, v15, v6}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_13

    .line 1896
    :cond_21
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v8, :cond_22

    .line 1897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1900
    :cond_22
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v9

    invoke-static {v6}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v6

    add-int v7, v1, v2

    invoke-virtual {v5, v6, v7}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_13
    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_12

    :cond_23
    move-object v4, v2

    const/4 v2, 0x0

    .line 1907
    :goto_14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_28

    const-string v5, "CalculatorExpr"

    .line 1908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyMaps.keyForChar(ssb1.charAt(i))"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v14, :cond_24

    .line 1910
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v6, v1, v2

    invoke-virtual {v5, v14, v6}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_15
    const/4 v6, 0x0

    goto/16 :goto_16

    .line 1911
    :cond_24
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v15, :cond_25

    .line 1912
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int v6, v1, v2

    invoke-virtual {v5, v15, v6}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_15

    .line 1913
    :cond_25
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v8, :cond_26

    .line 1914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_17

    .line 1916
    :cond_26
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v5

    if-ne v5, v7, :cond_27

    .line 1917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_27
    const/4 v6, 0x0

    .line 1920
    iget-object v5, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v10}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v10

    add-int v11, v1, v2

    invoke-virtual {v5, v10, v11}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    :goto_16
    const/4 v5, 0x1

    :goto_17
    add-int/2addr v2, v5

    goto/16 :goto_14

    .line 1925
    :cond_28
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1926
    iget-object v1, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    iget-object v2, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 1927
    iget-object v0, v0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_19

    :catch_0
    move-exception v0

    .line 1839
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    return-void

    :cond_29
    :goto_18
    return-void

    :cond_2a
    :goto_19
    return-void
.end method

.method eval(ZLcom/android/calculator2/CalculatorExpr$ExprResolver;)Lcom/android/calculator2/UnifiedReal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2449
    invoke-virtual {p0, p2}, Lcom/android/calculator2/CalculatorExpr;->getTransitivelyReferencedExprs(Lcom/android/calculator2/CalculatorExpr$ExprResolver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2450
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2451
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/calculator2/CalculatorExpr;->nestedEval(JLcom/android/calculator2/CalculatorExpr$ExprResolver;)Lcom/android/calculator2/UnifiedReal;

    goto :goto_0

    .line 2458
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr;->trailingBinaryOpsStart()I

    move-result v0

    .line 2459
    new-instance v1, Lcom/android/calculator2/CalculatorExpr$EvalContext;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/calculator2/CalculatorExpr$EvalContext;-><init>(ZILcom/android/calculator2/CalculatorExpr$ExprResolver;)V

    const/4 p1, 0x0

    .line 2460
    invoke-direct {p0, p1, v1}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2461
    iget p1, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->pos:I

    if-ne p1, v0, :cond_1

    .line 2464
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 2462
    :cond_1
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$SyntaxException;

    const-string p1, "Failed to parse full expression"

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$SyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    :catch_0
    new-instance p0, Lcom/android/calculator2/CalculatorExpr$SyntaxException;

    const-string p1, "Unexpected expression end"

    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorExpr$SyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInitIndexOfExpr(Landroid/content/Context;I)I
    .locals 4

    .line 1552
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 1555
    :goto_0
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1556
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v2

    .line 1557
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v3

    if-ne p2, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    if-le p2, v2, :cond_2

    if-gt p2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    sub-int v2, p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v3, p2, :cond_4

    return p2

    .line 1573
    :cond_4
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {p2, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sin("

    .line 1575
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "cos("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "cos\u9226\u5ba6\ufffd("

    .line 1576
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "tan("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "ln("

    .line 1577
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "exp("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "log("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 1580
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->isExponentGreaterOrLessThanZero()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1582
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->getExponentPreLength()I

    move-result p1

    if-lez p1, :cond_6

    .line 1583
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p1

    add-int/2addr p1, v2

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorExpr$Constant;->getExponentPreLength()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1584
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->setExponentPreLength(I)V

    goto :goto_2

    .line 1586
    :cond_6
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    add-int p1, p0, v2

    :goto_2
    return p1

    .line 1592
    :cond_7
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    .line 1579
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    return p0
.end method

.method public getInsertedIndexOfExpr(Landroid/content/Context;I)I
    .locals 4

    .line 1601
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 1605
    :goto_0
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1606
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v2}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v2

    .line 1607
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v3}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v3

    if-ne p2, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    if-le p2, v2, :cond_2

    if-gt p2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    sub-int v2, p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v3, p2, :cond_4

    return p2

    .line 1625
    :cond_4
    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {p2, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sin("

    .line 1627
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "sin\u9226\u5ba6\ufffd("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "cos("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "cos\u9226\u5ba6\ufffd("

    .line 1628
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "tan("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "tan\u9226\u5ba6\ufffd("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "ln("

    .line 1629
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "exp("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "log("

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 1637
    :cond_5
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->isExponentGreaterOrLessThanZero()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1639
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->getExponentAfterLength()I

    move-result p1

    if-lez p1, :cond_6

    .line 1640
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p1

    add-int/2addr p1, v2

    iget-object p2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p2}, Lcom/android/calculator2/CalculatorExpr$Constant;->getExponentAfterLength()I

    move-result p2

    add-int/2addr p1, p2

    .line 1641
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorExpr$Constant;->setExponentAfterLength(I)V

    goto :goto_2

    .line 1643
    :cond_6
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    add-int p1, p0, v2

    :goto_2
    return p1

    :cond_7
    :goto_3
    if-lez v2, :cond_8

    .line 1632
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_8

    .line 1633
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    return p0

    :cond_8
    if-nez v2, :cond_9

    .line 1635
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    return p0

    .line 1650
    :cond_9
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {p0}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public getTransitivelyReferencedExprs(Lcom/android/calculator2/CalculatorExpr$ExprResolver;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calculator2/CalculatorExpr$ExprResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2412
    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr;->addReferencedExprs(Ljava/util/ArrayList;Lcom/android/calculator2/CalculatorExpr$ExprResolver;)V

    const/4 p0, 0x0

    .line 2413
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p0, v1, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 2414
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p0

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/CalculatorExpr;->addReferencedExprs(Ljava/util/ArrayList;Lcom/android/calculator2/CalculatorExpr$ExprResolver;)V

    move p0, v1

    goto :goto_0

    .line 2416
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public hasInterestingOps()Z
    .locals 6

    .line 2345
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr;->trailingBinaryOpsStart()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const v3, 0x7f0a0158

    .line 2347
    invoke-direct {p0, v1, v3}, Lcom/android/calculator2/CalculatorExpr;->isOperatorUnchecked(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2352
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2353
    instance-of v5, v4, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez v5, :cond_2

    instance-of v5, v4, Lcom/android/calculator2/CalculatorExpr$PreEval;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/calculator2/CalculatorExpr$PreEval;

    .line 2354
    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorExpr$PreEval;->hasEllipsis()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method hasTrailingBinary(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 873
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 874
    instance-of p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-nez p1, :cond_1

    return v0

    .line 875
    :cond_1
    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Operator;

    .line 876
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->isBinary(I)Z

    move-result p0

    return p0
.end method

.method hasTrailingConstant()Z
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 863
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 864
    instance-of p0, p0, Lcom/android/calculator2/CalculatorExpr$Constant;

    return p0
.end method

.method public hasTrigFuncs()Z
    .locals 2

    .line 2365
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2366
    instance-of v1, v0, Lcom/android/calculator2/CalculatorExpr$Operator;

    if-eqz v1, :cond_0

    .line 2367
    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Operator;

    .line 2368
    iget v0, v0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->isTrigFunc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1946
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method nestedEval(JLcom/android/calculator2/CalculatorExpr$ExprResolver;)Lcom/android/calculator2/UnifiedReal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calculator2/CalculatorExpr$SyntaxException;
        }
    .end annotation

    .line 2425
    invoke-interface {p3, p1, p2}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->getExpr(J)Lcom/android/calculator2/CalculatorExpr;

    move-result-object p0

    .line 2426
    new-instance v0, Lcom/android/calculator2/CalculatorExpr$EvalContext;

    invoke-interface {p3, p1, p2}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->getDegreeMode(J)Z

    move-result v1

    .line 2427
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorExpr;->trailingBinaryOpsStart()I

    move-result v2

    invoke-direct {v0, v1, v2, p3}, Lcom/android/calculator2/CalculatorExpr$EvalContext;-><init>(ZILcom/android/calculator2/CalculatorExpr$ExprResolver;)V

    const/4 v1, 0x0

    .line 2428
    invoke-direct {p0, v1, v0}, Lcom/android/calculator2/CalculatorExpr;->evalExpr(ILcom/android/calculator2/CalculatorExpr$EvalContext;)Lcom/android/calculator2/CalculatorExpr$EvalRet;

    move-result-object p0

    .line 2429
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$EvalRet;->val:Lcom/android/calculator2/UnifiedReal;

    invoke-interface {p3, p1, p2, p0}, Lcom/android/calculator2/CalculatorExpr$ExprResolver;->putResultIfAbsent(JLcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public reformResultFormula(Landroid/content/Context;)V
    .locals 11

    .line 1494
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto/16 :goto_5

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calculator2/CalculatorExpr$PreEval;

    if-eqz v0, :cond_d

    .line 1498
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalculatorExpr"

    .line 1499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reformResultFormula  formulaStr == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v0

    const v3, 0x7f0a0158

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1505
    :goto_0
    iget-object v4, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/16 v4, 0x2c

    const/16 v5, 0x9

    const v6, 0x7f0a0098

    const v7, 0x7f0a007e

    if-eqz v0, :cond_7

    .line 1508
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Operator;

    invoke-direct {v8, v3}, Lcom/android/calculator2/CalculatorExpr$Operator;-><init>(I)V

    invoke-virtual {v0, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1509
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v8}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v0, p1

    move p1, v1

    .line 1510
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p1, v8, :cond_d

    .line 1512
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    if-ltz v8, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    if-gt v8, v5, :cond_2

    .line 1513
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v9

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto/16 :goto_2

    .line 1514
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1515
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v9

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2

    .line 1516
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 1517
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v7, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2

    .line 1518
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v3, :cond_5

    .line 1519
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v3, v9}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_2

    .line 1520
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v4, :cond_6

    .line 1521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    :cond_6
    :goto_2
    add-int/2addr p1, v1

    goto/16 :goto_1

    .line 1527
    :cond_7
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-direct {v8}, Lcom/android/calculator2/CalculatorExpr$Constant;-><init>()V

    invoke-virtual {v0, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v0, p1

    move p1, v2

    .line 1528
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p1, v8, :cond_d

    .line 1529
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    if-ltz v8, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    if-gt v8, v5, :cond_8

    .line 1530
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    invoke-static {v9}, Lcom/android/calculator2/KeyMaps;->keyForDigVal(I)I

    move-result v9

    invoke-virtual {v8, v9, p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_4

    .line 1531
    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 1532
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v8, v6, p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_4

    .line 1533
    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v7, :cond_a

    .line 1534
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v8, v7, p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_4

    .line 1535
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v3, :cond_b

    .line 1536
    iget-object v8, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calculator2/CalculatorExpr$Constant;

    invoke-virtual {v8, v3, p1}, Lcom/android/calculator2/CalculatorExpr$Constant;->add(II)Z

    goto :goto_4

    .line 1537
    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/calculator2/KeyMaps;->keyForChar(C)I

    move-result v8

    if-ne v8, v4, :cond_c

    .line 1538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    :cond_c
    :goto_4
    add-int/2addr p1, v1

    goto/16 :goto_3

    :cond_d
    return-void

    :cond_e
    :goto_5
    return-void
.end method

.method public toBytes()[B
    .locals 3

    .line 844
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 845
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 846
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorExpr;->write(Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 851
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 845
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    .line 847
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 849
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Impossible IO exception"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method toSpannableStringBuilder(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 2472
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2474
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2475
    new-instance v1, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-direct {v1}, Lcom/android/calculator2/CalculatorExpr$TokenString;-><init>()V

    .line 2476
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calculator2/CalculatorExpr$Token;

    .line 2477
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$300(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 2478
    invoke-virtual {v3, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2479
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$400(Lcom/android/calculator2/CalculatorExpr$TokenString;I)V

    .line 2480
    iget-object v3, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calculator2/CalculatorExpr$TokenString;

    invoke-static {v1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$100(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v5

    invoke-static {v1}, Lcom/android/calculator2/CalculatorExpr$TokenString;->access$200(Lcom/android/calculator2/CalculatorExpr$TokenString;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/calculator2/CalculatorExpr$TokenString;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2482
    :cond_0
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2483
    :goto_1
    iget-object v1, p0, Lcom/android/calculator2/CalculatorExpr;->mTokenPos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 833
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 835
    iget-object v2, p0, Lcom/android/calculator2/CalculatorExpr;->mExpr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/CalculatorExpr$Token;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/CalculatorExpr$Token;->write(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
