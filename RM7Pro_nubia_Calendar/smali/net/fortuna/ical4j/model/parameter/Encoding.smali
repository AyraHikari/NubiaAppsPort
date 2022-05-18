.class public Lnet/fortuna/ical4j/model/parameter/Encoding;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Encoding.java"


# static fields
.field public static final BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

.field public static final BINARY:Lnet/fortuna/ical4j/model/parameter/Encoding;

.field public static final EIGHT_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

.field public static final QUOTED_PRINTABLE:Lnet/fortuna/ical4j/model/parameter/Encoding;

.field public static final SEVEN_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

.field private static final VALUE_BASE64:Ljava/lang/String; = "BASE64"

.field private static final VALUE_BINARY:Ljava/lang/String; = "BINARY"

.field private static final VALUE_EIGHT_BIT:Ljava/lang/String; = "8BIT"

.field private static final VALUE_QUOTED_PRINTABLE:Ljava/lang/String; = "QUOTED-PRINTABLE"

.field private static final VALUE_SEVEN_BIT:Ljava/lang/String; = "7BIT"

.field private static final serialVersionUID:J = 0x68967215064883e5L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "7BIT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->SEVEN_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 107
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "8BIT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->EIGHT_BIT:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 112
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "BINARY"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BINARY:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 117
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->QUOTED_PRINTABLE:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 123
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "BASE64"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "ENCODING"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 132
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Encoding;->value:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Encoding;->value:Ljava/lang/String;

    return-object v0
.end method
