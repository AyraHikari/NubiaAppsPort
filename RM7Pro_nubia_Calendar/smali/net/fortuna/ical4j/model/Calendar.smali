.class public Lnet/fortuna/ical4j/model/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEGIN:Ljava/lang/String; = "BEGIN"

.field public static final END:Ljava/lang/String; = "END"

.field public static final VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field private static final serialVersionUID:J = -0x16f49bbe465faeb4L


# instance fields
.field private components:Lnet/fortuna/ical4j/model/ComponentList;

.field private properties:Lnet/fortuna/ical4j/model/PropertyList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 3
    .param p1, "c"    # Lnet/fortuna/ical4j/model/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    .line 180
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 179
    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 1
    .param p1, "components"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 156
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/Calendar;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 0
    .param p1, "p"    # Lnet/fortuna/ical4j/model/PropertyList;
    .param p2, "c"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 166
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Calendar;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 167
    return-void
.end method

.method private validateComponents()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 500
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->validate()V

    goto :goto_0

    .line 502
    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :cond_0
    return-void
.end method

.method private validateProperties()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 489
    .local v1, "property":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->validate()V

    goto :goto_0

    .line 491
    .end local v1    # "property":Lnet/fortuna/ical4j/model/Property;
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 540
    instance-of v1, p1, Lnet/fortuna/ical4j/model/Calendar;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 541
    check-cast v0, Lnet/fortuna/ical4j/model/Calendar;

    .line 542
    .local v0, "calendar":Lnet/fortuna/ical4j/model/Calendar;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    .line 545
    .end local v0    # "calendar":Lnet/fortuna/ical4j/model/Calendar;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getCalendarScale()Lnet/fortuna/ical4j/model/property/CalScale;
    .locals 1

    .prologue
    .line 525
    const-string v0, "CALSCALE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/CalScale;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponents()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Calendar;->components:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Lnet/fortuna/ical4j/model/property/Method;
    .locals 1

    .prologue
    .line 533
    const-string v0, "METHOD"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Method;

    return-object v0
.end method

.method public final getProductId()Lnet/fortuna/ical4j/model/property/ProdId;
    .locals 1

    .prologue
    .line 509
    const-string v0, "PRODID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/ProdId;

    return-object v0
.end method

.method public final getProperties()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    return-object v0
.end method

.method public final getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Lnet/fortuna/ical4j/model/property/Version;
    .locals 1

    .prologue
    .line 517
    const-string v0, "VERSION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Version;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 552
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 552
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, "VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, "VCALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Calendar;->validate(Z)V

    .line 258
    return-void
.end method

.method public validate(Z)V
    .locals 7
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "PRODID"

    iget-object v6, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 269
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "VERSION"

    iget-object v6, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 271
    const-string v4, "ical4j.validation.relaxed"

    invoke-static {v4}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    sget-object v4, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    const-string v5, "VERSION"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Version;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "VERSION"

    invoke-virtual {p0, v6}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v6

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "CALSCALE"

    iget-object v6, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 282
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "METHOD"

    iget-object v6, p0, Lnet/fortuna/ical4j/model/Calendar;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 286
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v5, "Calendar must contain at least one component"

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/Property;

    .line 295
    .local v3, "property":Lnet/fortuna/ical4j/model/Property;
    instance-of v4, v3, Lnet/fortuna/ical4j/model/property/XProperty;

    if-nez v4, :cond_2

    .line 296
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Property;->isCalendarProperty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    .end local v3    # "property":Lnet/fortuna/ical4j/model/Property;
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 305
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    instance-of v4, v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    if-nez v4, :cond_4

    .line 306
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a valid calendar component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    :cond_5
    const-string v4, "METHOD"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/Method;

    .line 313
    .local v2, "method":Lnet/fortuna/ical4j/model/property/Method;
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 314
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 315
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 316
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 318
    const-string v4, "ical4j.validation.relaxed"

    invoke-static {v4}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 319
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 469
    :cond_6
    :goto_0
    if-eqz v2, :cond_1c

    .line 470
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 471
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 472
    .local v0, "component":Lnet/fortuna/ical4j/model/component/CalendarComponent;
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_1

    .line 322
    .end local v0    # "component":Lnet/fortuna/ical4j/model/component/CalendarComponent;
    :cond_7
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 323
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 324
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 325
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 326
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_0

    .line 328
    :cond_8
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 331
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto :goto_0

    .line 333
    :cond_9
    const-string v4, "VJOURNAL"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 339
    :cond_a
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 340
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 341
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 342
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 343
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 345
    :cond_b
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 346
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 347
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 348
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 349
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 351
    :cond_c
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 354
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 357
    :cond_d
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 358
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 359
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 361
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 362
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 363
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 364
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 366
    :cond_e
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 367
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 368
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 369
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 370
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 372
    :cond_f
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 373
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 375
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 378
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 381
    :cond_10
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 382
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 383
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 384
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 385
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 387
    :cond_11
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 388
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 390
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 392
    :cond_12
    const-string v4, "VJOURNAL"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 393
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 395
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 400
    :cond_13
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 401
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 402
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 403
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 404
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 405
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 407
    :cond_14
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 408
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 410
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 411
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 413
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 415
    :cond_15
    const-string v4, "VJOURNAL"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 416
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 417
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 422
    :cond_16
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 423
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 424
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 425
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 426
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 427
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 429
    :cond_17
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 430
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 431
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 433
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 434
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 437
    :cond_18
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 438
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 439
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 440
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 441
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 443
    :cond_19
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 444
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 446
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 448
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 451
    :cond_1a
    sget-object v4, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    const-string v5, "METHOD"

    invoke-virtual {p0, v5}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/property/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 452
    const-string v4, "VEVENT"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 453
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 454
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 455
    const-string v4, "VTODO"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 456
    const-string v4, "VTIMEZONE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 457
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 459
    :cond_1b
    const-string v4, "VTODO"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 460
    const-string v4, "VALARM"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 461
    const-string v4, "VFREEBUSY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 463
    const-string v4, "VJOURNAL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    goto/16 :goto_0

    .line 476
    :cond_1c
    if-eqz p1, :cond_1d

    .line 477
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Calendar;->validateProperties()V

    .line 478
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Calendar;->validateComponents()V

    .line 480
    :cond_1d
    return-void
.end method
