.class public Lnet/fortuna/ical4j/model/parameter/CuType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "CuType.java"


# static fields
.field public static final GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

.field public static final UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

.field private static final VALUE_GROUP:Ljava/lang/String; = "GROUP"

.field private static final VALUE_INDIVIDUAL:Ljava/lang/String; = "INDIVIDUAL"

.field private static final VALUE_RESOURCE:Ljava/lang/String; = "RESOURCE"

.field private static final VALUE_ROOM:Ljava/lang/String; = "ROOM"

.field private static final VALUE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final serialVersionUID:J = -0x2b7e6ee5f89bff4cL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    const-string v1, "INDIVIDUAL"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 66
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 71
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 76
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    const-string v1, "ROOM"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 81
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "CUTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 90
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/CuType;->value:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/CuType;->value:Ljava/lang/String;

    return-object v0
.end method
