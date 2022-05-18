.class Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeAffix"
.end annotation


# instance fields
.field private final iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field private final iLeftRightCombinations:[Ljava/lang/String;

.field private final iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# direct methods
.method constructor <init>(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 1272
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 1273
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 1274
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 1278
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1279
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->getAffixes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 1280
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->getAffixes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    .line 1281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1284
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeftRightCombinations:[Ljava/lang/String;

    .line 1285
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->calculatePrintedLength(I)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v1, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->calculatePrintedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeftRightCombinations:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v0

    .line 1304
    if-ltz v0, :cond_0

    .line 1305
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v1, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v0

    .line 1306
    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->parse(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    xor-int/lit8 v0, p2, -0x1

    .line 1310
    :cond_0
    return v0
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/io/Writer;I)V

    .line 1299
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/io/Writer;I)V

    .line 1300
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/lang/StringBuffer;I)V

    .line 1294
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->printTo(Ljava/lang/StringBuffer;I)V

    .line 1295
    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->scan(Ljava/lang/String;I)I

    move-result v0

    .line 1315
    if-ltz v0, :cond_2

    .line 1316
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iLeft:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v2, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->scan(Ljava/lang/String;I)I

    move-result v1

    .line 1317
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->iRight:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    invoke-interface {v2, p1, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->parse(Ljava/lang/String;I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1318
    :cond_0
    if-lez v0, :cond_1

    .line 1325
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1321
    goto :goto_0

    .line 1325
    :cond_2
    xor-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method
