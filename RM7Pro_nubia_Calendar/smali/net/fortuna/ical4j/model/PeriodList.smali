.class public Lnet/fortuna/ical4j/model/PeriodList;
.super Ljava/lang/Object;
.source "PeriodList.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2029b95b79863f3cL


# instance fields
.field private final periods:Ljava/util/Set;

.field private timezone:Lnet/fortuna/ical4j/model/TimeZone;

.field private utc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 103
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/Period;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "utc"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(ZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "utc"    # Z
    .param p2, "unmodifiable"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    .line 84
    if-eqz p2, :cond_0

    .line 85
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public final add(Lnet/fortuna/ical4j/model/PeriodList;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 3
    .param p1, "periods"    # Lnet/fortuna/ical4j/model/PeriodList;

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    new-instance v1, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 243
    .local v1, "newList":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-virtual {v1, p0}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/PeriodList;->normalise()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object p0

    .line 249
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "newList":Lnet/fortuna/ical4j/model/PeriodList;
    .end local p0    # "this":Lnet/fortuna/ical4j/model/PeriodList;
    :cond_1
    return-object p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "period"    # Ljava/lang/Object;

    .prologue
    .line 149
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Period;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/Period;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/Period;)Z
    .locals 1
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Period;->setUtc(Z)V

    .line 138
    :goto_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Period;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 329
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 340
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 346
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 353
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 416
    check-cast v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 417
    .local v0, "rhs":Lnet/fortuna/ical4j/model/PeriodList;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    iget-object v3, v0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    iget-object v3, v0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 418
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    iget-boolean v3, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    .line 419
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 424
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 425
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    .line 426
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 424
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final normalise()Lnet/fortuna/ical4j/model/PeriodList;
    .locals 6

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, "prevPeriod":Lnet/fortuna/ical4j/model/Period;
    const/4 v3, 0x0

    .line 180
    .local v3, "period":Lnet/fortuna/ical4j/model/Period;
    new-instance v1, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->isUtc()Z

    move-result v5

    invoke-direct {v1, v5}, Lnet/fortuna/ical4j/model/PeriodList;-><init>(Z)V

    .line 181
    .local v1, "newList":Lnet/fortuna/ical4j/model/PeriodList;
    iget-object v5, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 185
    .local v2, "normalised":Z
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "period":Lnet/fortuna/ical4j/model/Period;
    check-cast v3, Lnet/fortuna/ical4j/model/Period;

    .line 187
    .restart local v3    # "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Period;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    move-object v3, v4

    .line 189
    const/4 v2, 0x1

    .line 214
    :cond_1
    :goto_1
    move-object v4, v3

    goto :goto_0

    .line 191
    :cond_2
    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {v4, v3}, Lnet/fortuna/ical4j/model/Period;->contains(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    move-object v3, v4

    .line 195
    const/4 v2, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v4, v3}, Lnet/fortuna/ical4j/model/Period;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    invoke-virtual {v4, v3}, Lnet/fortuna/ical4j/model/Period;->add(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/Period;

    move-result-object v3

    .line 200
    const/4 v2, 0x1

    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {v4, v3}, Lnet/fortuna/ical4j/model/Period;->adjacent(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 204
    invoke-virtual {v4, v3}, Lnet/fortuna/ical4j/model/Period;->add(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/Period;

    move-result-object v3

    .line 205
    const/4 v2, 0x1

    goto :goto_1

    .line 211
    :cond_5
    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_1

    .line 217
    :cond_6
    if-eqz v4, :cond_7

    .line 218
    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 222
    :cond_7
    if-eqz v2, :cond_8

    .line 226
    .end local v1    # "newList":Lnet/fortuna/ical4j/model/PeriodList;
    :goto_2
    return-object v1

    .restart local v1    # "newList":Lnet/fortuna/ical4j/model/PeriodList;
    :cond_8
    move-object v1, p0

    goto :goto_2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Lnet/fortuna/ical4j/model/Period;)Z
    .locals 1
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/PeriodList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 381
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 388
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3
    .param p1, "timeZone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 310
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Period;

    .line 312
    .local v1, "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/Period;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 314
    .end local v1    # "period":Lnet/fortuna/ical4j/model/Period;
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    .line 316
    return-void
.end method

.method public final setUtc(Z)V
    .locals 3
    .param p1, "utc"    # Z

    .prologue
    .line 295
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Period;

    .line 297
    .local v1, "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/Period;->setUtc(Z)V

    goto :goto_0

    .line 299
    .end local v1    # "period":Lnet/fortuna/ical4j/model/Period;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/fortuna/ical4j/model/PeriodList;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 300
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/PeriodList;->utc:Z

    .line 301
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final subtract(Lnet/fortuna/ical4j/model/PeriodList;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 7
    .param p1, "subtractions"    # Lnet/fortuna/ical4j/model/PeriodList;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v3, p0

    .line 279
    :cond_1
    return-object v3

    .line 266
    :cond_2
    move-object v3, p0

    .line 267
    .local v3, "result":Lnet/fortuna/ical4j/model/PeriodList;
    new-instance v5, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v5}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 269
    .local v5, "tmpResult":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/Period;

    .line 271
    .local v4, "subtraction":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Period;

    .line 273
    .local v2, "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v2, v4}, Lnet/fortuna/ical4j/model/Period;->subtract(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 275
    .end local v2    # "period":Lnet/fortuna/ical4j/model/Period;
    :cond_3
    move-object v3, v5

    .line 276
    new-instance v5, Lnet/fortuna/ical4j/model/PeriodList;

    .end local v5    # "tmpResult":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-direct {v5}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 277
    .restart local v5    # "tmpResult":Lnet/fortuna/ical4j/model/PeriodList;
    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 409
    iget-object v0, p0, Lnet/fortuna/ical4j/model/PeriodList;->periods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
