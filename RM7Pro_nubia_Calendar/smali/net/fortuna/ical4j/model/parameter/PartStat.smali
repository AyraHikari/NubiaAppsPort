.class public Lnet/fortuna/ical4j/model/parameter/PartStat;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "PartStat.java"


# static fields
.field public static final ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field public static final TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

.field private static final VALUE_ACCEPTED:Ljava/lang/String; = "ACCEPTED"

.field private static final VALUE_COMPLETED:Ljava/lang/String; = "COMPLETED"

.field private static final VALUE_DECLINED:Ljava/lang/String; = "DECLINED"

.field private static final VALUE_DELEGATED:Ljava/lang/String; = "DELEGATED"

.field private static final VALUE_IN_PROCESS:Ljava/lang/String; = "IN-PROCESS"

.field private static final VALUE_NEEDS_ACTION:Ljava/lang/String; = "NEEDS-ACTION"

.field private static final VALUE_TENTATIVE:Ljava/lang/String; = "TENTATIVE"

.field private static final serialVersionUID:J = -0x6d075a166d7d8489L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "NEEDS-ACTION"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 70
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 75
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "DECLINED"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 80
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "TENTATIVE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 85
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "DELEGATED"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 90
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 95
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    const-string v1, "IN-PROCESS"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "PARTSTAT"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 104
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/PartStat;->value:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/PartStat;->value:Ljava/lang/String;

    return-object v0
.end method
