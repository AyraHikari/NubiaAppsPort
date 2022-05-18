.class public Lcom/android/setting/b;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/setting/b;->a:I

    const-string v0, "InputLengthFilter"

    .line 17
    iput-object v0, p0, Lcom/android/setting/b;->b:Ljava/lang/String;

    .line 21
    iput p1, p0, Lcom/android/setting/b;->a:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_5

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 45
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 46
    invoke-static {v4}, Lcom/android/setting/g;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-le v3, p2, :cond_3

    if-nez v2, :cond_2

    return-object v0

    .line 55
    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    invoke-static {p4}, Lcom/android/setting/g;->a(Ljava/lang/CharSequence;)I

    move-result p2

    .line 27
    invoke-static {p1}, Lcom/android/setting/g;->a(Ljava/lang/CharSequence;)I

    move-result p3

    .line 28
    iget p4, p0, Lcom/android/setting/b;->a:I

    sub-int/2addr p4, p2

    if-gtz p4, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-lt p4, p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/setting/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
