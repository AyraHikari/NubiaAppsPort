.class public Lnet/fortuna/ical4j/model/parameter/FbType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "FbType.java"


# static fields
.field public static final BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field public static final FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

.field private static final VALUE_BUSY:Ljava/lang/String; = "BUSY"

.field private static final VALUE_BUSY_TENTATIVE:Ljava/lang/String; = "BUSY-TENTATIVE"

.field private static final VALUE_BUSY_UNAVAILABLE:Ljava/lang/String; = "BUSY-UNAVAILABLE"

.field private static final VALUE_FREE:Ljava/lang/String; = "FREE"

.field private static final serialVersionUID:J = -0x1ec6d10c315f23cfL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    const-string v1, "FREE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 64
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    const-string v1, "BUSY"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 69
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    const-string v1, "BUSY-UNAVAILABLE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 75
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    const-string v1, "BUSY-TENTATIVE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "FBTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 85
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/FbType;->value:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/FbType;->value:Ljava/lang/String;

    return-object v0
.end method
