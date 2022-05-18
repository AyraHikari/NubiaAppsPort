.class public abstract Lnet/fortuna/ical4j/model/Parameter;
.super Lnet/fortuna/ical4j/model/Content;
.source "Parameter.java"


# static fields
.field public static final ABBREV:Ljava/lang/String; = "ABBREV"

.field public static final ALTREP:Ljava/lang/String; = "ALTREP"

.field public static final CHARSET:Ljava/lang/String; = "CHARSET"

.field public static final CN:Ljava/lang/String; = "CN"

.field public static final CUTYPE:Ljava/lang/String; = "CUTYPE"

.field public static final DELEGATED_FROM:Ljava/lang/String; = "DELEGATED-FROM"

.field public static final DELEGATED_TO:Ljava/lang/String; = "DELEGATED-TO"

.field public static final DIR:Ljava/lang/String; = "DIR"

.field public static final ENCODING:Ljava/lang/String; = "ENCODING"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final FBTYPE:Ljava/lang/String; = "FBTYPE"

.field public static final FMTTYPE:Ljava/lang/String; = "FMTTYPE"

.field public static final LANGUAGE:Ljava/lang/String; = "LANGUAGE"

.field public static final MEMBER:Ljava/lang/String; = "MEMBER"

.field public static final PARTSTAT:Ljava/lang/String; = "PARTSTAT"

.field public static final RANGE:Ljava/lang/String; = "RANGE"

.field public static final RELATED:Ljava/lang/String; = "RELATED"

.field public static final RELTYPE:Ljava/lang/String; = "RELTYPE"

.field public static final ROLE:Ljava/lang/String; = "ROLE"

.field public static final RSVP:Ljava/lang/String; = "RSVP"

.field public static final SCHEDULE_AGENT:Ljava/lang/String; = "SCHEDULE-AGENT"

.field public static final SCHEDULE_STATUS:Ljava/lang/String; = "SCHEDULE-STATUS"

.field public static final SENT_BY:Ljava/lang/String; = "SENT-BY"

.field public static final TYPE:Ljava/lang/String; = "TYPE"

.field public static final TZID:Ljava/lang/String; = "TZID"

.field public static final VALUE:Ljava/lang/String; = "VALUE"

.field public static final VVENUE:Ljava/lang/String; = "VVENUE"

.field private static final serialVersionUID:J = -0x1c9140f020af4578L


# instance fields
.field private final factory:Lnet/fortuna/ical4j/model/ParameterFactory;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/fortuna/ical4j/model/ParameterFactory;

    .prologue
    .line 201
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Content;-><init>()V

    .line 202
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Parameter;->name:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Parameter;->factory:Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 204
    return-void
.end method


# virtual methods
.method public final copy()Lnet/fortuna/ical4j/model/Parameter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Parameter;->factory:Lnet/fortuna/ical4j/model/ParameterFactory;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No factory specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Parameter;->factory:Lnet/fortuna/ical4j/model/ParameterFactory;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 242
    instance-of v1, p1, Lnet/fortuna/ical4j/model/Parameter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lnet/fortuna/ical4j/model/Parameter;

    .line 244
    .local v0, "p":Lnet/fortuna/ical4j/model/Parameter;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    .line 247
    .end local v0    # "p":Lnet/fortuna/ical4j/model/Parameter;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 255
    return v0
.end method

.method protected isQuotable()Z
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->PARAM_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 227
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->isQuotable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
