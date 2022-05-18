.class Lcom/android/calculator2/CalculatorExpr$PreEval;
.super Lcom/android/calculator2/CalculatorExpr$Token;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreEval"
.end annotation


# instance fields
.field public final mIndex:J

.field private final mShortRep:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 746
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    .line 747
    iput-wide p1, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    .line 748
    iput-object p3, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mShortRep:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 763
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    .line 764
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    .line 765
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mShortRep:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasEllipsis()Z
    .locals 1

    .line 776
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mShortRep:Ljava/lang/String;

    const-string v0, "\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kind()Lcom/android/calculator2/CalculatorExpr$TokenKind;
    .locals 0

    .line 773
    sget-object p0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-object p0
.end method

.method public toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mShortRep:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->translateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    sget-object v0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->PRE_EVAL:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorExpr$TokenKind;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 756
    iget-wide v0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 760
    iget-wide v0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mIndex:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 761
    iget-object p0, p0, Lcom/android/calculator2/CalculatorExpr$PreEval;->mShortRep:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void

    .line 758
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Expression index too big"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
