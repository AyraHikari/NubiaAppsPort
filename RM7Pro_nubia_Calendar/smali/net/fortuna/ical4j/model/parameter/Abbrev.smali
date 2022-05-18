.class public Lnet/fortuna/ical4j/model/parameter/Abbrev;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Abbrev.java"


# static fields
.field private static final serialVersionUID:J = -0x780df66d08b33ad2L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "ABBREV"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 58
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Abbrev;->value:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Abbrev;->value:Ljava/lang/String;

    return-object v0
.end method
