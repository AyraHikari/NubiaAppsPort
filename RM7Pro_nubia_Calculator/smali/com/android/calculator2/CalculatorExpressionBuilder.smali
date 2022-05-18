.class public Lcom/android/calculator2/CalculatorExpressionBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "CalculatorExpressionBuilder.java"


# instance fields
.field private mIsEdited:Z

.field private final mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorExpressionTokenizer;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    iput-object p2, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    .line 32
    iput-boolean p3, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mIsEdited:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 22
    invoke-virtual/range {p0 .. p5}, Lcom/android/calculator2/CalculatorExpressionBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 38
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorExpressionBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorExpressionBuilder;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    .line 44
    invoke-interface {p3, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/calculator2/CalculatorExpressionTokenizer;->getNormalizedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 p5, 0x0

    if-ne p4, v1, :cond_4

    .line 46
    iget-object p4, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorExpressionBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/calculator2/CalculatorExpressionTokenizer;->getNormalizedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 47
    invoke-virtual {p3, p5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/16 v0, 0x2e

    .line 50
    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    add-int/2addr v0, v1

    .line 52
    :try_start_0
    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p4

    goto :goto_1

    :catch_0
    move-exception p4

    .line 56
    invoke-virtual {p4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    if-nez p1, :cond_1

    const-string p3, ""

    goto :goto_1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    const-string v0, "+-*/"

    add-int/lit8 v3, p1, -0x1

    .line 69
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :pswitch_3
    if-lez p1, :cond_3

    const-string v0, "+-"

    add-int/lit8 v3, p1, -0x1

    .line 75
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    if-eq p4, v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 80
    :cond_3
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mIsEdited:Z

    .line 88
    :cond_4
    :goto_1
    iget-boolean p4, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mIsEdited:Z

    if-nez p4, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_5

    .line 90
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mIsEdited:Z

    move v3, p5

    goto :goto_2

    :cond_5
    move v3, p1

    .line 93
    :goto_2
    iget-object p1, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mTokenizer:Lcom/android/calculator2/CalculatorExpressionTokenizer;

    invoke-virtual {p1, p3}, Lcom/android/calculator2/CalculatorExpressionTokenizer;->getLocalizedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p0

    move v4, p2

    invoke-super/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 39
    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorExpressionBuilder;->mIsEdited:Z

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
