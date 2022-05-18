.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RoleFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoleFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 389
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RoleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Role;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/Role;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Role;->CHAIR:Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Role;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->CHAIR:Lnet/fortuna/ical4j/model/parameter/Role;

    .line 407
    :cond_0
    :goto_0
    return-object v0

    .line 398
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Role;->REQ_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Role;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->REQ_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    goto :goto_0

    .line 401
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Role;->OPT_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Role;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->OPT_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    goto :goto_0

    .line 404
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Role;->NON_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Role;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->NON_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    goto :goto_0
.end method
