.class public Lnet/fortuna/ical4j/model/WeekDayList;
.super Ljava/util/ArrayList;
.source "WeekDayList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1140f4a76a5aae5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "aString"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const-string v2, "ical4j.compatibility.outlook"

    .line 72
    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 74
    .local v0, "outlookCompatibility":Z
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v1, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v2, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/WeekDayList;->add(Lnet/fortuna/ical4j/model/WeekDay;)Z

    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/WeekDayList;->add(Lnet/fortuna/ical4j/model/WeekDay;)Z

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "weekday"    # Ljava/lang/Object;

    .prologue
    .line 101
    instance-of v0, p1, Lnet/fortuna/ical4j/model/WeekDay;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/WeekDay;)Z
    .locals 1
    .param p1, "weekDay"    # Lnet/fortuna/ical4j/model/WeekDay;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/WeekDayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Lnet/fortuna/ical4j/model/WeekDay;)Z
    .locals 1
    .param p1, "weekDay"    # Lnet/fortuna/ical4j/model/WeekDay;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/WeekDayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/WeekDayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
