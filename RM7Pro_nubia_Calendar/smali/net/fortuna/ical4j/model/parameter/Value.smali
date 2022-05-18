.class public Lnet/fortuna/ical4j/model/parameter/Value;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Value.java"


# static fields
.field public static final BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DATE:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final TIME:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final URI:Lnet/fortuna/ical4j/model/parameter/Value;

.field public static final UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

.field private static final VALUE_BINARY:Ljava/lang/String; = "BINARY"

.field private static final VALUE_BOOLEAN:Ljava/lang/String; = "BOOLEAN"

.field private static final VALUE_CAL_ADDRESS:Ljava/lang/String; = "CAL-ADDRESS"

.field private static final VALUE_DATE:Ljava/lang/String; = "DATE"

.field private static final VALUE_DATE_TIME:Ljava/lang/String; = "DATE-TIME"

.field private static final VALUE_DURATION:Ljava/lang/String; = "DURATION"

.field private static final VALUE_FLOAT:Ljava/lang/String; = "FLOAT"

.field private static final VALUE_INTEGER:Ljava/lang/String; = "INTEGER"

.field private static final VALUE_PERIOD:Ljava/lang/String; = "PERIOD"

.field private static final VALUE_RECUR:Ljava/lang/String; = "RECUR"

.field private static final VALUE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final VALUE_TIME:Ljava/lang/String; = "TIME"

.field private static final VALUE_URI:Ljava/lang/String; = "URI"

.field private static final VALUE_UTC_OFFSET:Ljava/lang/String; = "UTC-OFFSET"

.field private static final serialVersionUID:J = -0x6474d3370dda4bc8L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "BINARY"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 84
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 89
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "CAL-ADDRESS"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 94
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "DATE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 99
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "DATE-TIME"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 104
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "DURATION"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 109
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 114
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 119
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "PERIOD"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 124
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "RECUR"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 129
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "TEXT"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 134
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "TIME"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 139
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "URI"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->URI:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 144
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "UTC-OFFSET"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "VALUE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 153
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Value;->value:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Value;->value:Ljava/lang/String;

    return-object v0
.end method
