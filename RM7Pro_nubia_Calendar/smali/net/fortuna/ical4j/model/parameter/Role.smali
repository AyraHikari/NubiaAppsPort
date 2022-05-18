.class public Lnet/fortuna/ical4j/model/parameter/Role;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Role.java"


# static fields
.field public static final CHAIR:Lnet/fortuna/ical4j/model/parameter/Role;

.field public static final NON_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

.field public static final OPT_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

.field public static final REQ_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

.field private static final VALUE_CHAIR:Ljava/lang/String; = "CHAIR"

.field private static final VALUE_NON_PARTICIPANT:Ljava/lang/String; = "NON-PARTICIPANT"

.field private static final VALUE_OPT_PARTICIPANT:Ljava/lang/String; = "OPT-PARTICIPANT"

.field private static final VALUE_REQ_PARTICIPANT:Ljava/lang/String; = "REQ-PARTICIPANT"

.field private static final serialVersionUID:J = 0x13f59a977eae31ebL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Role;

    const-string v1, "CHAIR"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Role;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->CHAIR:Lnet/fortuna/ical4j/model/parameter/Role;

    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Role;

    const-string v1, "REQ-PARTICIPANT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Role;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->REQ_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Role;

    const-string v1, "OPT-PARTICIPANT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Role;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->OPT_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    .line 74
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Role;

    const-string v1, "NON-PARTICIPANT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Role;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Role;->NON_PARTICIPANT:Lnet/fortuna/ical4j/model/parameter/Role;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "ROLE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 83
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Role;->value:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Role;->value:Ljava/lang/String;

    return-object v0
.end method
