.class public Lnet/fortuna/ical4j/model/DateList;
.super Ljava/lang/Object;
.source "DateList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x335c1acae6d30dc5L


# instance fields
.field private final dates:Ljava/util/List;

.field private timeZone:Lnet/fortuna/ical4j/model/TimeZone;

.field private final type:Lnet/fortuna/ical4j/model/parameter/Value;

.field private utc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateList;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;
    .param p2, "aType"    # Lnet/fortuna/ical4j/model/parameter/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;
    .param p2, "aType"    # Lnet/fortuna/ical4j/model/parameter/Value;
    .param p3, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 144
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 3
    .param p1, "list"    # Lnet/fortuna/ical4j/model/DateList;
    .param p2, "type"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, p2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, p2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Type must be either DATE or DATE-TIME"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    .line 170
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, p2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    new-instance v2, Lnet/fortuna/ical4j/model/Date;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_0

    .line 176
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v2, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .line 180
    :cond_2
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 1
    .param p1, "aType"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1
    .param p1, "aType"    # Lnet/fortuna/ical4j/model/parameter/Value;
    .param p2, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 115
    :goto_0
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    .line 117
    return-void

    .line 113
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "unmodifiable"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 312
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 313
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "date"    # Ljava/lang/Object;

    .prologue
    .line 234
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Date;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/Date;)Z
    .locals 3
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 210
    instance-of v1, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 212
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 223
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    move-object v1, p1

    .line 215
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 218
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 220
    .local v0, "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 221
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/util/Collection;

    .prologue
    .line 320
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 316
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 328
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 332
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 403
    check-cast v0, Lnet/fortuna/ical4j/model/DateList;

    .line 404
    .local v0, "rhs":Lnet/fortuna/ical4j/model/DateList;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    iget-object v3, v0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v3, v0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 405
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    iget-object v3, v0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 406
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    iget-boolean v3, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 407
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public final getType()Lnet/fortuna/ical4j/model/parameter/Value;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 413
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 414
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 415
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 412
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 340
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 352
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 368
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Lnet/fortuna/ical4j/model/Date;)Z
    .locals 1
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 372
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/util/Collection;

    .prologue
    .line 376
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 380
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3
    .param p1, "timeZone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 295
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 300
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 302
    return-void
.end method

.method public final setUtc(Z)V
    .locals 3
    .param p1, "utc"    # Z

    .prologue
    .line 279
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 284
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 285
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 286
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 396
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
