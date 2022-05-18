.class public Lnet/fortuna/ical4j/model/component/VVenue;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VVenue.java"


# static fields
.field private static final serialVersionUID:J = 0x3e7bd1e55b996633L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "VVENUE"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 108
    const-string v0, "VVENUE"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 194
    sget-object v0, Lnet/fortuna/ical4j/model/component/VVenue;->EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate(Z)V
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    .line 138
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 149
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "NAME"

    .line 150
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 151
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    .line 152
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 153
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STREET-ADDRESS"

    .line 154
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 155
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "EXTENDED-ADDRESS"

    .line 156
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 157
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCALITY"

    .line 158
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 159
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REGION"

    .line 160
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 161
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "COUNTRY"

    .line 162
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 163
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "POSTAL-CODE"

    .line 164
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 165
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZID"

    .line 166
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 167
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "GEO"

    .line 168
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 169
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCATION-TYPE"

    .line 170
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 171
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CATEGORIES"

    .line 172
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 173
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    .line 174
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 175
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    .line 176
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 177
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    .line 178
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VVenue;->validateProperties()V

    .line 187
    :cond_0
    return-void
.end method
