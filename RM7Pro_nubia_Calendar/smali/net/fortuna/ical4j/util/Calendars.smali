.class public final Lnet/fortuna/ical4j/util/Calendars;
.super Ljava/lang/Object;
.source "Calendars.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static getContentType(Lnet/fortuna/ical4j/model/Calendar;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "text/calendar"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v2, "METHOD"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Method;

    .line 220
    .local v1, "method":Lnet/fortuna/ical4j/model/property/Method;
    if-eqz v1, :cond_0

    .line 221
    const-string v2, "; method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Method;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    .line 226
    const-string v2, "; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUid(Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/property/Uid;
    .locals 7
    .param p0, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ConstraintViolationException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, "uid":Lnet/fortuna/ical4j/model/property/Uid;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 196
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Uid;

    .line 198
    .local v1, "foundUid":Lnet/fortuna/ical4j/model/property/Uid;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Lnet/fortuna/ical4j/model/property/Uid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    new-instance v5, Lnet/fortuna/ical4j/model/ConstraintViolationException;

    const-string v6, "More than one UID found in calendar"

    invoke-direct {v5, v6}, Lnet/fortuna/ical4j/model/ConstraintViolationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_1
    move-object v4, v1

    .line 202
    goto :goto_0

    .line 204
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    .end local v1    # "foundUid":Lnet/fortuna/ical4j/model/property/Uid;
    .end local v3    # "j":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_3

    .line 205
    new-instance v5, Lnet/fortuna/ical4j/model/ConstraintViolationException;

    const-string v6, "Calendar must specify a single unique identifier (UID)"

    invoke-direct {v5, v6}, Lnet/fortuna/ical4j/model/ConstraintViolationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_3
    return-object v4
.end method

.method public static load(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "fin":Ljava/io/FileInputStream;
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 82
    .local v0, "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v2

    return-object v2
.end method

.method public static load(Ljava/net/URL;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 94
    .local v0, "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public static merge(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/Calendar;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 6
    .param p0, "c1"    # Lnet/fortuna/ical4j/model/Calendar;
    .param p1, "c2"    # Lnet/fortuna/ical4j/model/Calendar;

    .prologue
    .line 106
    new-instance v3, Lnet/fortuna/ical4j/model/Calendar;

    invoke-direct {v3}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    .line 107
    .local v3, "result":Lnet/fortuna/ical4j/model/Calendar;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/PropertyList;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/Property;

    .line 110
    .local v2, "p":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/PropertyList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 114
    .end local v2    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_1
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/ComponentList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 117
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/ComponentList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_1

    .line 121
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    :cond_3
    return-object v3
.end method

.method public static split(Lnet/fortuna/ical4j/model/Calendar;)[Lnet/fortuna/ical4j/model/Calendar;
    .locals 14
    .param p0, "calendar"    # Lnet/fortuna/ical4j/model/Calendar;

    .prologue
    const/4 v13, 0x1

    .line 144
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result v11

    if-le v11, v13, :cond_0

    const-string v11, "VTIMEZONE"

    .line 145
    invoke-virtual {p0, v11}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result v11

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v12

    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 146
    :cond_0
    new-array v11, v13, [Lnet/fortuna/ical4j/model/Calendar;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    .line 183
    :goto_0
    return-object v11

    .line 149
    :cond_1
    new-instance v7, Lnet/fortuna/ical4j/model/IndexedComponentList;

    const-string v11, "VTIMEZONE"

    invoke-virtual {p0, v11}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    const-string v12, "TZID"

    invoke-direct {v7, v11, v12}, Lnet/fortuna/ical4j/model/IndexedComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;Ljava/lang/String;)V

    .line 152
    .local v7, "timezones":Lnet/fortuna/ical4j/model/IndexedComponentList;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v1, "calendars":Ljava/util/Map;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 155
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    instance-of v11, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-nez v11, :cond_2

    .line 159
    const-string v11, "UID"

    invoke-virtual {v0, v11}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v9

    check-cast v9, Lnet/fortuna/ical4j/model/property/Uid;

    .line 161
    .local v9, "uid":Lnet/fortuna/ical4j/model/property/Uid;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/fortuna/ical4j/model/Calendar;

    .line 162
    .local v10, "uidCal":Lnet/fortuna/ical4j/model/Calendar;
    if-nez v10, :cond_4

    .line 163
    new-instance v10, Lnet/fortuna/ical4j/model/Calendar;

    .end local v10    # "uidCal":Lnet/fortuna/ical4j/model/Calendar;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    new-instance v12, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v12}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    invoke-direct {v10, v11, v12}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 165
    .restart local v10    # "uidCal":Lnet/fortuna/ical4j/model/Calendar;
    const-string v11, "METHOD"

    invoke-virtual {v10, v11}, Lnet/fortuna/ical4j/model/Calendar;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mp":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 166
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnet/fortuna/ical4j/model/PropertyList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_3
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v4    # "mp":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/Property;

    .line 173
    .local v5, "p":Lnet/fortuna/ical4j/model/Property;
    const-string v11, "TZID"

    invoke-virtual {v5, v11}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v8

    check-cast v8, Lnet/fortuna/ical4j/model/parameter/TzId;

    .line 174
    .local v8, "tzid":Lnet/fortuna/ical4j/model/parameter/TzId;
    if-eqz v8, :cond_5

    .line 175
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/parameter/TzId;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnet/fortuna/ical4j/model/IndexedComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v6

    check-cast v6, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 176
    .local v6, "timezone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11, v6}, Lnet/fortuna/ical4j/model/ComponentList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 177
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11, v6}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_3

    .line 181
    .end local v5    # "p":Lnet/fortuna/ical4j/model/Property;
    .end local v6    # "timezone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    .end local v8    # "tzid":Lnet/fortuna/ical4j/model/parameter/TzId;
    :cond_6
    invoke-virtual {v10}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v11

    invoke-virtual {v11, v0}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto/16 :goto_1

    .line 183
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    .end local v3    # "j":Ljava/util/Iterator;
    .end local v9    # "uid":Lnet/fortuna/ical4j/model/property/Uid;
    .end local v10    # "uidCal":Lnet/fortuna/ical4j/model/Calendar;
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    new-array v12, v12, [Lnet/fortuna/ical4j/model/Calendar;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lnet/fortuna/ical4j/model/Calendar;

    check-cast v11, [Lnet/fortuna/ical4j/model/Calendar;

    goto/16 :goto_0
.end method

.method public static wrap(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .param p0, "component"    # Lnet/fortuna/ical4j/model/Component;

    .prologue
    .line 130
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    .line 131
    .local v0, "components":Lnet/fortuna/ical4j/model/ComponentList;
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 132
    new-instance v1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    return-object v1
.end method
