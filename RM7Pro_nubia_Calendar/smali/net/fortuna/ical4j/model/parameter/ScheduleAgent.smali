.class public Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "ScheduleAgent.java"


# static fields
.field public static final CLIENT:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

.field public static final NONE:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

.field public static final SERVER:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

.field private static final VALUE_CLIENT:Ljava/lang/String; = "CLIENT"

.field private static final VALUE_NONE:Ljava/lang/String; = "NONE"

.field private static final VALUE_SERVER:Ljava/lang/String; = "SERVER"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    const-string v1, "SERVER"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->SERVER:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    .line 54
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->CLIENT:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    .line 56
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->NONE:Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "SCHEDULE-AGENT"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 65
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->value:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/ScheduleAgent;->value:Ljava/lang/String;

    return-object v0
.end method
