.class public Lnet/fortuna/ical4j/model/component/Available;
.super Lnet/fortuna/ical4j/model/Component;
.source "Available.java"


# static fields
.field private static final serialVersionUID:J = -0x229efe1585d5bbcbL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "AVAILABLE"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 106
    const-string v0, "AVAILABLE"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 107
    return-void
.end method


# virtual methods
.method public final validate(Z)V
    .locals 5
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTART"

    .line 119
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 120
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTAMP"

    .line 121
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 120
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 122
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "UID"

    .line 123
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 122
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 130
    const-string v2, "DTSTART"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/component/Available;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 131
    .local v1, "start":Lnet/fortuna/ical4j/model/property/DtStart;
    sget-object v2, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v3, "VALUE"

    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property [DTSTART] must be a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CREATED"

    .line 144
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 143
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 145
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LAST-MODIFIED"

    .line 146
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 145
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 147
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RECURRENCE-ID"

    .line 148
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 147
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 149
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RRULE"

    .line 150
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 149
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 151
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SUMMARY"

    .line 152
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 151
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 161
    const-string v2, "DTEND"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/component/Available;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTEND"

    .line 163
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 162
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 165
    const-string v2, "DTEND"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/component/Available;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 166
    .local v0, "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    sget-object v2, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/property/DtEnd;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v2, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property [DTEND] must be a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0    # "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DURATION"

    .line 172
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    .line 171
    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 181
    :cond_2
    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Available;->validateProperties()V

    .line 184
    :cond_3
    return-void
.end method
