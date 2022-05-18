.class public Lorg/joda/time/format/PeriodFormatterBuilder;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/PeriodFormatterBuilder$Composite;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Separator;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Literal;,
        Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;,
        Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;
    }
.end annotation


# static fields
.field private static final DAYS:I = 0x3

.field private static final HOURS:I = 0x4

.field private static final MAX_FIELD:I = 0x9

.field private static final MILLIS:I = 0x7

.field private static final MINUTES:I = 0x5

.field private static final MONTHS:I = 0x1

.field private static final PATTERNS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRINT_ZERO_ALWAYS:I = 0x4

.field private static final PRINT_ZERO_IF_SUPPORTED:I = 0x3

.field private static final PRINT_ZERO_NEVER:I = 0x5

.field private static final PRINT_ZERO_RARELY_FIRST:I = 0x1

.field private static final PRINT_ZERO_RARELY_LAST:I = 0x2

.field private static final SECONDS:I = 0x6

.field private static final SECONDS_MILLIS:I = 0x8

.field private static final SECONDS_OPTIONAL_MILLIS:I = 0x9

.field private static final WEEKS:I = 0x2

.field private static final YEARS:I


# instance fields
.field private iElementPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

.field private iMaxParsedDigits:I

.field private iMinPrintedDigits:I

.field private iNotParser:Z

.field private iNotPrinter:Z

.field private iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field private iPrintZeroSetting:I

.field private iRejectSignedValues:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder;->PATTERNS:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clear()V

    .line 112
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/joda/time/format/PeriodFormatterBuilder;->PATTERNS:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotPrinter:Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotPrinter:Z

    .line 885
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotParser:Z

    if-nez p2, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotParser:Z

    .line 886
    return-object p0

    :cond_0
    move v0, v2

    .line 884
    goto :goto_0

    :cond_1
    move v1, v2

    .line 885
    goto :goto_1
.end method

.method private appendField(I)V
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMinPrintedDigits:I

    invoke-direct {p0, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(II)V

    .line 586
    return-void
.end method

.method private appendField(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 589
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMaxParsedDigits:I

    iget-boolean v4, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iRejectSignedValues:Z

    iget-object v6, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget-object v7, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    move v1, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(IIIZI[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 591
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 592
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    aput-object v0, v1, p1

    .line 593
    iput-object v8, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 594
    return-void
.end method

.method private appendPrefix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    move-object p1, v0

    .line 439
    :cond_1
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 440
    return-object p0
.end method

.method private appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 9

    .prologue
    .line 826
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 830
    :cond_1
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clearPrefix()V

    .line 833
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    .line 834
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 835
    if-eqz p5, :cond_2

    if-nez p4, :cond_2

    .line 836
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    sget-object v4, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    sget-object v5, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 839
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 870
    :cond_2
    :goto_0
    return-object p0

    .line 846
    :cond_3
    const/4 v0, 0x0

    .line 847
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    .line 848
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    if-eqz v3, :cond_4

    .line 849
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 850
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    .line 857
    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 858
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two adjacent separators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 860
    :cond_5
    invoke-static {v8}, Lorg/joda/time/format/PeriodFormatterBuilder;->createComposite(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    .line 861
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 862
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    const/4 v2, 0x0

    aget-object v4, v1, v2

    check-cast v4, Lorg/joda/time/format/PeriodPrinter;

    const/4 v2, 0x1

    aget-object v5, v1, v2

    check-cast v5, Lorg/joda/time/format/PeriodParser;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 866
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v8, v1

    goto :goto_2
.end method

.method private appendSuffix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 687
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 688
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 689
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 695
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    instance-of v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    if-nez v1, :cond_2

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No field to apply suffix to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    .line 692
    goto :goto_0

    .line 701
    :cond_2
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clearPrefix()V

    .line 702
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-direct {v1, v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 703
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->getFieldType()I

    move-result v2

    aput-object v1, v0, v2

    .line 707
    return-object p0
.end method

.method private clearPrefix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prefix not followed by field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 879
    return-void
.end method

.method private static createComposite(Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 914
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 920
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    invoke-direct {v1, p0}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    .line 921
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    .line 916
    :pswitch_0
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    aput-object v1, v0, v3

    goto :goto_0

    .line 918
    :pswitch_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toFormatter(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lorg/joda/time/format/PeriodFormatter;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 891
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has created neither a printer nor a parser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 895
    if-lt v1, v3, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    if-eqz v0, :cond_1

    .line 896
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 897
    invoke-static {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->access$000(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->access$100(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 898
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v2

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatter;->getParser()Lorg/joda/time/format/PeriodParser;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->finish(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    move-result-object v1

    .line 900
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    invoke-direct {v0, v1, v1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 909
    :goto_0
    return-object v0

    .line 903
    :cond_1
    invoke-static {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->createComposite(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    .line 904
    if-eqz p1, :cond_2

    .line 905
    new-instance v1, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v5

    check-cast v0, Lorg/joda/time/format/PeriodParser;

    invoke-direct {v1, v6, v0}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v1

    goto :goto_0

    .line 906
    :cond_2
    if-eqz p2, :cond_3

    .line 907
    new-instance v1, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/format/PeriodPrinter;

    invoke-direct {v1, v0, v6}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v1

    goto :goto_0

    .line 909
    :cond_3
    new-instance v2, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/format/PeriodPrinter;

    aget-object v1, v3, v5

    check-cast v1, Lorg/joda/time/format/PeriodParser;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clearPrefix()V

    .line 210
    invoke-virtual {p1}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/format/PeriodFormatter;->getParser()Lorg/joda/time/format/PeriodParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 211
    return-object p0
.end method

.method public append(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 226
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No printer or parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clearPrefix()V

    .line 230
    invoke-direct {p0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder;->append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 231
    return-object p0
.end method

.method public appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 493
    return-object p0
.end method

.method public appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 506
    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->clearPrefix()V

    .line 246
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->append0(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 248
    return-object p0
.end method

.method public appendMillis()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 569
    return-object p0
.end method

.method public appendMillis3Digit()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x7

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(II)V

    .line 581
    return-object p0
.end method

.method public appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 519
    return-object p0
.end method

.method public appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 467
    return-object p0
.end method

.method public appendPrefix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 360
    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;

    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendPrefix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPrefix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 377
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 380
    :cond_1
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendPrefix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPrefix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 417
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 421
    :cond_1
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendPrefix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeconds()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 532
    return-object p0
.end method

.method public appendSecondsWithMillis()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 543
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 544
    return-object p0
.end method

.method public appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 555
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 556
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 728
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 793
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 820
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .prologue
    .line 748
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparatorIfFieldsBefore(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .prologue
    .line 768
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 610
    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;

    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSuffix(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 628
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 631
    :cond_1
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSuffix([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .prologue
    .line 668
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 672
    :cond_1
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 480
    return-object p0
.end method

.method public appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendField(I)V

    .line 454
    return-object p0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x1

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMinPrintedDigits:I

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 187
    iput v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMaxParsedDigits:I

    .line 188
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iRejectSignedValues:Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrefix:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 190
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    .line 195
    :goto_0
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotPrinter:Z

    .line 196
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotParser:Z

    .line 197
    new-array v0, v2, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 198
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public maximumParsedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMaxParsedDigits:I

    .line 271
    return-object p0
.end method

.method public minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iMinPrintedDigits:I

    .line 260
    return-object p0
.end method

.method public printZeroAlways()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x4

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 330
    return-object p0
.end method

.method public printZeroIfSupported()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 318
    return-object p0
.end method

.method public printZeroNever()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x5

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 344
    return-object p0
.end method

.method public printZeroRarelyFirst()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 307
    return-object p0
.end method

.method public printZeroRarelyLast()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iPrintZeroSetting:I

    .line 295
    return-object p0
.end method

.method public rejectSignedValues(Z)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 0

    .prologue
    .line 280
    iput-boolean p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iRejectSignedValues:Z

    .line 281
    return-object p0
.end method

.method public toFormatter()Lorg/joda/time/format/PeriodFormatter;
    .locals 6

    .prologue
    .line 132
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iElementPairs:Ljava/util/List;

    iget-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotPrinter:Z

    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotParser:Z

    invoke-static {v0, v1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 134
    if-eqz v4, :cond_0

    .line 135
    iget-object v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-virtual {v4, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->finish([Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;)V

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-virtual {v0}, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    check-cast v0, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iFieldFormatters:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 139
    return-object v1
.end method

.method public toParser()Lorg/joda/time/format/PeriodParser;
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotParser:Z

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatter;->getParser()Lorg/joda/time/format/PeriodParser;

    move-result-object v0

    goto :goto_0
.end method

.method public toPrinter()Lorg/joda/time/format/PeriodPrinter;
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->iNotPrinter:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    goto :goto_0
.end method
