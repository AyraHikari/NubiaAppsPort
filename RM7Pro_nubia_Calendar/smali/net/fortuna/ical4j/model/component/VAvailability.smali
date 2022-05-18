.class public Lnet/fortuna/ical4j/model/component/VAvailability;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VAvailability.java"


# static fields
.field private static final serialVersionUID:J = -0x29a7d64e7d73ec7aL


# instance fields
.field private available:Lnet/fortuna/ical4j/model/ComponentList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "VAVAILABILITY"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAvailability;->available:Lnet/fortuna/ical4j/model/ComponentList;

    .line 114
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 122
    const-string v0, "VAVAILABILITY"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 123
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAvailability;->available:Lnet/fortuna/ical4j/model/ComponentList;

    .line 124
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 1
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .param p2, "available"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 132
    const-string v0, "VEVENT"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 133
    iput-object p2, p0, Lnet/fortuna/ical4j/model/component/VAvailability;->available:Lnet/fortuna/ical4j/model/ComponentList;

    .line 134
    return-void
.end method


# virtual methods
.method public final getAvailable()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAvailability;->available:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getAvailable()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate(Z)V
    .locals 7
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getAvailable()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 173
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    instance-of v4, v0, Lnet/fortuna/ical4j/model/component/Available;

    if-nez v4, :cond_0

    .line 174
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] may not occur in VAVAILABILITY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTSTART"

    .line 183
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 182
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 184
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTSTAMP"

    .line 185
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 184
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 186
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "UID"

    .line 187
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 186
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 194
    const-string v4, "DTSTART"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 195
    .local v3, "start":Lnet/fortuna/ical4j/model/property/DtStart;
    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v5, "VALUE"

    invoke-virtual {v3, v5}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property [DTSTART] must be a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_2
    const-string v4, "DTEND"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 205
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTEND"

    .line 206
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 205
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 208
    const-string v4, "DTEND"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 209
    .local v1, "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v5, "VALUE"

    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/property/DtEnd;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property [DTEND] must be a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_3
    const-string v4, "DURATION"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 215
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v5, "Only one of Property [DTEND] or [DURATION must appear a VAVAILABILITY"

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    .end local v1    # "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    :cond_4
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "BUSYTYPE"

    .line 229
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 228
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 230
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "CREATED"

    .line 231
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 230
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 232
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "LAST-MODIFIED"

    .line 233
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 232
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 234
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "ORGANIZER"

    .line 235
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 234
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 236
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "SEQUENCE"

    .line 237
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 238
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "SUMMARY"

    .line 239
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 238
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 240
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "URL"

    .line 241
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 240
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 248
    if-eqz p1, :cond_5

    .line 249
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAvailability;->validateProperties()V

    .line 251
    :cond_5
    return-void
.end method
