.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleAgentFactory;
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
    name = "ScheduleAgentFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 427
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleAgentFactory;-><init>()V

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
    .line 430
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->SERVER:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->SERVER:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    .line 440
    .end local v0    # "parameter":Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;
    :cond_0
    :goto_0
    return-object v0

    .line 434
    .restart local v0    # "parameter":Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->CLIENT:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->CLIENT:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    goto :goto_0

    .line 437
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->NONE:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->NONE:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    goto :goto_0
.end method
