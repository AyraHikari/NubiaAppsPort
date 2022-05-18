.class public abstract Lnet/fortuna/ical4j/model/Property;
.super Lnet/fortuna/ical4j/model/Content;
.source "Property.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final ATTACH:Ljava/lang/String; = "ATTACH"

.field public static final ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field public static final BUSYTYPE:Ljava/lang/String; = "BUSYTYPE"

.field public static final CALSCALE:Ljava/lang/String; = "CALSCALE"

.field public static final CATEGORIES:Ljava/lang/String; = "CATEGORIES"

.field public static final CLASS:Ljava/lang/String; = "CLASS"

.field public static final COMMENT:Ljava/lang/String; = "COMMENT"

.field public static final COMPLETED:Ljava/lang/String; = "COMPLETED"

.field public static final CONTACT:Ljava/lang/String; = "CONTACT"

.field public static final COUNTRY:Ljava/lang/String; = "COUNTRY"

.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTAMP:Ljava/lang/String; = "DTSTAMP"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DUE:Ljava/lang/String; = "DUE"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final EXTENDED_ADDRESS:Ljava/lang/String; = "EXTENDED-ADDRESS"

.field public static final FREEBUSY:Ljava/lang/String; = "FREEBUSY"

.field public static final GEO:Ljava/lang/String; = "GEO"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "LAST-MODIFIED"

.field public static final LOCALITY:Ljava/lang/String; = "LOCALITY"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final LOCATION_TYPE:Ljava/lang/String; = "LOCATION-TYPE"

.field public static final METHOD:Ljava/lang/String; = "METHOD"

.field public static final NAME:Ljava/lang/String; = "NAME"

.field public static final ORGANIZER:Ljava/lang/String; = "ORGANIZER"

.field public static final PERCENT_COMPLETE:Ljava/lang/String; = "PERCENT-COMPLETE"

.field public static final POSTALCODE:Ljava/lang/String; = "POSTAL-CODE"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRODID:Ljava/lang/String; = "PRODID"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RECURRENCE_ID:Ljava/lang/String; = "RECURRENCE-ID"

.field public static final REGION:Ljava/lang/String; = "REGION"

.field public static final RELATED_TO:Ljava/lang/String; = "RELATED-TO"

.field public static final REPEAT:Ljava/lang/String; = "REPEAT"

.field public static final REQUEST_STATUS:Ljava/lang/String; = "REQUEST-STATUS"

.field public static final RESOURCES:Ljava/lang/String; = "RESOURCES"

.field public static final RRULE:Ljava/lang/String; = "RRULE"

.field public static final SEQUENCE:Ljava/lang/String; = "SEQUENCE"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final STREET_ADDRESS:Ljava/lang/String; = "STREET-ADDRESS"

.field public static final SUMMARY:Ljava/lang/String; = "SUMMARY"

.field public static final TEL:Ljava/lang/String; = "TEL"

.field public static final TRANSP:Ljava/lang/String; = "TRANSP"

.field public static final TRIGGER:Ljava/lang/String; = "TRIGGER"

.field public static final TZID:Ljava/lang/String; = "TZID"

.field public static final TZNAME:Ljava/lang/String; = "TZNAME"

.field public static final TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field public static final TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field public static final TZURL:Ljava/lang/String; = "TZURL"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final URL:Ljava/lang/String; = "URL"

.field public static final VERSION:Ljava/lang/String; = "VERSION"

.field private static final serialVersionUID:J = 0x61d2511e8c75386fL


# instance fields
.field private final factory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field private name:Ljava/lang/String;

.field private parameters:Lnet/fortuna/ical4j/model/ParameterList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 382
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Content;-><init>()V

    .line 383
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 385
    iput-object p3, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 386
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/PropertyFactory;

    .prologue
    .line 365
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 366
    return-void
.end method

.method protected constructor <init>(Lnet/fortuna/ical4j/model/Property;)V
    .locals 4
    .param p1, "property"    # Lnet/fortuna/ical4j/model/Property;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V

    iget-object v2, p1, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 402
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    .line 403
    return-void
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Property;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No factory specified"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Z)V

    .line 524
    .local v0, "params":Lnet/fortuna/ical4j/model/ParameterList;
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 490
    instance-of v1, p1, Lnet/fortuna/ical4j/model/Property;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 491
    check-cast v0, Lnet/fortuna/ical4j/model/Property;

    .line 492
    .local v0, "p":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    .line 499
    .end local v0    # "p":Lnet/fortuna/ical4j/model/Property;
    :goto_0
    return v1

    .line 496
    .restart local v0    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 499
    .end local v0    # "p":Lnet/fortuna/ical4j/model/Property;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Lnet/fortuna/ical4j/model/ParameterList;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    return-object v0
.end method

.method public final getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 507
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 507
    return v0
.end method

.method public isCalendarProperty()Z
    .locals 2

    .prologue
    .line 432
    const-string v0, "PRODID"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION"

    .line 433
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CALSCALE"

    .line 434
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "METHOD"

    .line 435
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 414
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 415
    instance-of v1, p0, Lnet/fortuna/ical4j/model/Escapable;

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    :goto_0
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 419
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation
.end method
