.class public Lnet/fortuna/ical4j/model/DateRange;
.super Ljava/lang/Object;
.source "DateRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INCLUSIVE_END:I = 0x2

.field public static final INCLUSIVE_START:I = 0x1

.field private static final serialVersionUID:J = -0x655c79dbc8a6fbf6L


# instance fields
.field private final rangeEnd:Ljava/util/Date;

.field private final rangeStart:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range start is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range end is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range start must be before range end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 74
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 75
    return-void
.end method


# virtual methods
.method public final adjacent(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 3
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "adjacent":Z
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final after(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 2
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;

    .prologue
    .line 149
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public final before(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 2
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;

    .prologue
    .line 137
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public final contains(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 1
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;

    .prologue
    .line 201
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRangeEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getRangeStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    return-object v0
.end method

.method public final includes(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 99
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;I)Z

    move-result v0

    return v0
.end method

.method public final includes(Ljava/util/Date;I)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "inclusiveMask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "includes":Z
    and-int/lit8 v3, p2, 0x1

    if-lez v3, :cond_1

    .line 114
    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {v3, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 119
    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-lez v3, :cond_4

    .line 120
    if-eqz v0, :cond_3

    iget-object v3, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 125
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    .line 120
    goto :goto_1

    .line 123
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {v3, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public final intersects(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 3
    .param p1, "range"    # Lnet/fortuna/ical4j/model/DateRange;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 164
    .local v0, "intersects":Z
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const/4 v0, 0x1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 170
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0
.end method
