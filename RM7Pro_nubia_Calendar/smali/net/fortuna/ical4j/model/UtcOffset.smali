.class public Lnet/fortuna/ical4j/model/UtcOffset;
.super Ljava/lang/Object;
.source "UtcOffset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HOUR_END_INDEX:I = 0x3

.field private static final HOUR_FORMAT:Ljava/text/NumberFormat;

.field private static final HOUR_START_INDEX:I = 0x1

.field private static final MINUTE_END_INDEX:I = 0x5

.field private static final MINUTE_FORMAT:Ljava/text/NumberFormat;

.field private static final MINUTE_START_INDEX:I = 0x3

.field private static final SECOND_END_INDEX:I = 0x7

.field private static final SECOND_FORMAT:Ljava/text/NumberFormat;

.field private static final SECOND_START_INDEX:I = 0x5

.field private static final serialVersionUID:J = 0x51a50330e26d0b50L


# instance fields
.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->HOUR_FORMAT:Ljava/text/NumberFormat;

    .line 72
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->MINUTE_FORMAT:Ljava/text/NumberFormat;

    .line 74
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->SECOND_FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x1

    const/4 v10, 0x5

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UTC offset ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] - must be of the form: (+/-)HHMM[SS]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 90
    .local v2, "negative":Z
    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "UTC offset value must be signed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "negative":Z
    :cond_1
    move v2, v4

    .line 88
    goto :goto_0

    .line 94
    .restart local v2    # "negative":Z
    :cond_2
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 95
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    invoke-virtual {p1, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 98
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 102
    :try_start_0
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    const/4 v3, 0x5

    const/4 v6, 0x7

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    if-eqz v2, :cond_3

    .line 112
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    neg-long v4, v4

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 114
    :cond_3
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-class v3, Lnet/fortuna/ical4j/model/UtcOffset;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 109
    .local v1, "log":Lorg/apache/commons/logging/Log;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seconds not specified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 159
    instance-of v0, p1, Lnet/fortuna/ical4j/model/UtcOffset;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v0

    check-cast p1, Lnet/fortuna/ical4j/model/UtcOffset;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getOffset()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 169
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x0

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 130
    .local v2, "remainder":J
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 131
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    :goto_0
    sget-object v1, Lnet/fortuna/ical4j/model/UtcOffset;->HOUR_FORMAT:Ljava/text/NumberFormat;

    div-long v4, v2, v10

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    rem-long/2addr v2, v10

    .line 139
    sget-object v1, Lnet/fortuna/ical4j/model/UtcOffset;->MINUTE_FORMAT:Ljava/text/NumberFormat;

    div-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    rem-long/2addr v2, v8

    .line 142
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 143
    sget-object v1, Lnet/fortuna/ical4j/model/UtcOffset;->SECOND_FORMAT:Ljava/text/NumberFormat;

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :cond_1
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
