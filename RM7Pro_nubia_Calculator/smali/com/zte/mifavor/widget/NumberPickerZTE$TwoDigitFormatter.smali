.class Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field mZeroDigit:C


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 2393
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 2398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2399
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 1

    .line 2423
    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .locals 0

    .line 2403
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    iget-char p0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    return p0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1

    .line 2407
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 2408
    invoke-static {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result p1

    iput-char p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mZeroDigit:C

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .line 2412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2413
    iget-char v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2414
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2417
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2418
    iget-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v0, "%02d"

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2419
    iget-object p0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
