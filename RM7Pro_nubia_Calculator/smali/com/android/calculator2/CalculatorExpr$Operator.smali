.class Lcom/android/calculator2/CalculatorExpr$Operator;
.super Lcom/android/calculator2/CalculatorExpr$Token;
.source "CalculatorExpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operator"
.end annotation


# instance fields
.field public final id:I


# direct methods
.method constructor <init>(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    .line 120
    invoke-static {p1}, Lcom/android/calculator2/KeyMaps;->fromByte(B)I

    move-result p1

    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorExpr$Token;-><init>(Lcom/android/calculator2/CalculatorExpr$1;)V

    .line 117
    iput p1, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    return-void
.end method


# virtual methods
.method kind()Lcom/android/calculator2/CalculatorExpr$TokenKind;
    .locals 0

    .line 139
    sget-object p0, Lcom/android/calculator2/CalculatorExpr$TokenKind;->OPERATOR:Lcom/android/calculator2/CalculatorExpr$TokenKind;

    return-object p0
.end method

.method public toCharSequence(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 128
    iget v0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {p1, v0}, Lcom/android/calculator2/KeyMaps;->toDescriptiveString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Landroid/text/SpannableString;

    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {p1, p0}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    new-instance p0, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    const/4 p1, 0x0

    .line 132
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-virtual {v1, p0, p1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    .line 135
    :cond_0
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {p1, p0}, Lcom/android/calculator2/KeyMaps;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget p0, p0, Lcom/android/calculator2/CalculatorExpr$Operator;->id:I

    invoke-static {p0}, Lcom/android/calculator2/KeyMaps;->toByte(I)B

    move-result p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
