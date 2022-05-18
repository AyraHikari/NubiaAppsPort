.class public Lnet/fortuna/ical4j/model/parameter/RelType;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "RelType.java"


# static fields
.field public static final CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

.field public static final PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

.field public static final SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

.field private static final VALUE_CHILD:Ljava/lang/String; = "CHILD"

.field private static final VALUE_PARENT:Ljava/lang/String; = "PARENT"

.field private static final VALUE_SIBLING:Ljava/lang/String; = "SIBLING"

.field private static final serialVersionUID:J = 0x4a30eac4d72697c8L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/RelType;

    const-string v1, "PARENT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/RelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 62
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/RelType;

    const-string v1, "CHILD"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/RelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 67
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/RelType;

    const-string v1, "SIBLING"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/RelType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "RELTYPE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 76
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/RelType;->value:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/RelType;->value:Ljava/lang/String;

    return-object v0
.end method
