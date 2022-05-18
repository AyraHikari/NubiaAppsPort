.class public final Lnet/fortuna/ical4j/util/PropertyValidator;
.super Ljava/lang/Object;
.source "PropertyValidator.java"


# static fields
.field private static final ASSERT_NONE_MESSAGE:Ljava/lang/String; = "Property [{0}] is not applicable"

.field private static final ASSERT_ONE_MESSAGE:Ljava/lang/String; = "Property [{0}] must be specified once"

.field private static final ASSERT_ONE_OR_LESS_MESSAGE:Ljava/lang/String; = "Property [{0}] must only be specified once"

.field private static final ASSERT_ONE_OR_MORE_MESSAGE:Ljava/lang/String; = "Property [{0}] must be specified at least once"

.field private static instance:Lnet/fortuna/ical4j/util/PropertyValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lnet/fortuna/ical4j/util/PropertyValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/util/PropertyValidator;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/util/PropertyValidator;->instance:Lnet/fortuna/ical4j/util/PropertyValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lnet/fortuna/ical4j/util/PropertyValidator;->instance:Lnet/fortuna/ical4j/util/PropertyValidator;

    return-object v0
.end method


# virtual methods
.method public assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [{0}] is not applicable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method

.method public assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 112
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [{0}] must be specified once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method public assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 76
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [{0}] must only be specified once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 94
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Property [{0}] must be specified at least once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method
