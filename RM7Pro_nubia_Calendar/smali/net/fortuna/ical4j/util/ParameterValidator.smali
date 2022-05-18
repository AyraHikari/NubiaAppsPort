.class public final Lnet/fortuna/ical4j/util/ParameterValidator;
.super Ljava/lang/Object;
.source "ParameterValidator.java"


# static fields
.field private static final ASSERT_NONE_MESSAGE:Ljava/lang/String; = "Parameter [{0}] is not applicable"

.field private static final ASSERT_NULL_OR_EQUAL_MESSAGE:Ljava/lang/String; = "Parameter [{0}] is invalid"

.field private static final ASSERT_ONE_MESSAGE:Ljava/lang/String; = "Parameter [{0}] must be specified once"

.field private static final ASSERT_ONE_OR_LESS_MESSAGE:Ljava/lang/String; = "Parameter [{0}] must only be specified once"

.field private static instance:Lnet/fortuna/ical4j/util/ParameterValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lnet/fortuna/ical4j/util/ParameterValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/util/ParameterValidator;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/util/ParameterValidator;->instance:Lnet/fortuna/ical4j/util/ParameterValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lnet/fortuna/ical4j/util/ParameterValidator;->instance:Lnet/fortuna/ical4j/util/ParameterValidator;

    return-object v0
.end method


# virtual methods
.method public assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Parameter [{0}] is not applicable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method public assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 5
    .param p1, "param"    # Lnet/fortuna/ical4j/model/Parameter;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 120
    .local v0, "p":Lnet/fortuna/ical4j/model/Parameter;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v2, "Parameter [{0}] is invalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 123
    :cond_0
    return-void
.end method

.method public assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ParameterList;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 96
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Parameter [{0}] must be specified once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method public assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V
    .locals 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameters(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ParameterList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 78
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Parameter [{0}] must only be specified once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method
