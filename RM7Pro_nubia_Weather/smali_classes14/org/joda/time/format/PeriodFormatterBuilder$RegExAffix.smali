.class Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegExAffix"
.end annotation


# static fields
.field private static final LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iPatterns:[Ljava/util/regex/Pattern;

.field private final iSuffixes:[Ljava/lang/String;

.field private final iSuffixesSortedDescByLength:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1183
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix$1;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix$1;-><init>()V

    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1196
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 1197
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    .line 1198
    array-length v0, p1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    .line 1199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 1200
    invoke-static {}, Lorg/joda/time/format/PeriodFormatterBuilder;->access$200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 1201
    if-nez v0, :cond_0

    .line 1202
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1203
    invoke-static {}, Lorg/joda/time/format/PeriodFormatterBuilder;->access$200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    :cond_0
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    aput-object v0, v2, v1

    .line 1199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    sget-object v1, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1209
    return-void
.end method

.method private selectSuffixIndex(I)I
    .locals 3

    .prologue
    .line 1212
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1213
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1214
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    :goto_1
    return v0

    .line 1213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1234
    iget-object v7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    array-length v8, v7

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v7, v6

    .line 1235
    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1241
    :goto_1
    return v0

    .line 1234
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1241
    :cond_1
    xor-int/lit8 v0, p2, -0x1

    goto :goto_1
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1227
    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v2, p2

    .line 1246
    :goto_0
    if-ge v2, v7, :cond_2

    .line 1247
    iget-object v8, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    array-length v9, v8

    move v6, v4

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v3, v8, v6

    .line 1248
    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1255
    :goto_2
    return v2

    .line 1247
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 1246
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    :cond_2
    xor-int/lit8 v2, p2, -0x1

    goto :goto_2
.end method
