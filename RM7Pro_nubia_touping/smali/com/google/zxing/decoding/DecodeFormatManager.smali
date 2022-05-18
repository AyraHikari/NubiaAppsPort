.class final Lcom/google/zxing/decoding/DecodeFormatManager;
.super Ljava/lang/Object;
.source "DecodeFormatManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field static final DATA_MATRIX_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final ONE_D_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final PRODUCT_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final QR_CODE_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 18
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    .line 85
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    .line 90
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 91
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    .line 96
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    .line 98
    sget-object v0, Lcom/google/zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Vector;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "scanFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "SCAN_FORMATS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "scanFormatsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 31
    sget-object v2, Lcom/google/zxing/decoding/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 34
    :cond_0
    const-string v2, "SCAN_MODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/zxing/decoding/DecodeFormatManager;->parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    return-object v2
.end method

.method static parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Vector;
    .locals 4
    .param p0, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    const-string v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v2, Lcom/google/zxing/decoding/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    :cond_0
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/decoding/DecodeFormatManager;->parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    return-object v1
.end method

.method private static parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "decodeMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "scanFormats":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 48
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 51
    .local v1, "formats":Ljava/util/Vector;
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "var3":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "var3":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 63
    .end local v1    # "formats":Ljava/util/Vector;
    :cond_0
    if-eqz p1, :cond_5

    .line 64
    const-string v3, "PRODUCT_MODE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    .line 81
    :cond_1
    :goto_1
    return-object v1

    .line 68
    :cond_2
    const-string v3, "QR_CODE_MODE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 72
    :cond_3
    const-string v3, "DATA_MATRIX_MODE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 76
    :cond_4
    const-string v3, "ONE_D_MODE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    sget-object v1, Lcom/google/zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 81
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method
