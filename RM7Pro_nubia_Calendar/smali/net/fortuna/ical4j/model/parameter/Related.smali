.class public Lnet/fortuna/ical4j/model/parameter/Related;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Related.java"


# static fields
.field public static final END:Lnet/fortuna/ical4j/model/parameter/Related;

.field public static final START:Lnet/fortuna/ical4j/model/parameter/Related;

.field private static final VALUE_END:Ljava/lang/String; = "END"

.field private static final VALUE_START:Ljava/lang/String; = "START"

.field private static final serialVersionUID:J = 0x15cba0e5d8e93f7dL


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Related;

    const-string v1, "START"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Related;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Related;->START:Lnet/fortuna/ical4j/model/parameter/Related;

    .line 60
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Related;

    const-string v1, "END"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Related;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Related;->END:Lnet/fortuna/ical4j/model/parameter/Related;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "RELATED"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 69
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Related;->value:Ljava/lang/String;

    .line 72
    const-string v0, "START"

    iget-object v1, p0, Lnet/fortuna/ical4j/model/parameter/Related;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "END"

    iget-object v1, p0, Lnet/fortuna/ical4j/model/parameter/Related;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/parameter/Related;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Related;->value:Ljava/lang/String;

    return-object v0
.end method
