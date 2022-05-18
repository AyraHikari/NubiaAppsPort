.class public Lnet/fortuna/ical4j/model/parameter/Range;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Range.java"


# static fields
.field public static final THISANDFUTURE:Lnet/fortuna/ical4j/model/parameter/Range;

.field public static final THISANDPRIOR:Lnet/fortuna/ical4j/model/parameter/Range;

.field private static final VALUE_THISANDFUTURE:Ljava/lang/String; = "THISANDFUTURE"

.field private static final VALUE_THISANDPRIOR:Ljava/lang/String; = "THISANDPRIOR"

.field private static final serialVersionUID:J = -0x2a6e88a63a7d71b0L


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Range;

    const-string v1, "THISANDPRIOR"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Range;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDPRIOR:Lnet/fortuna/ical4j/model/parameter/Range;

    .line 61
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Range;

    const-string v1, "THISANDFUTURE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Range;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDFUTURE:Lnet/fortuna/ical4j/model/parameter/Range;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "RANGE"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 70
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Range;->value:Ljava/lang/String;

    .line 75
    const-string v0, "ical4j.compatibility.notes"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "THISANDPRIOR"

    iget-object v1, p0, Lnet/fortuna/ical4j/model/parameter/Range;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "THISANDFUTURE"

    iget-object v1, p0, Lnet/fortuna/ical4j/model/parameter/Range;->value:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/fortuna/ical4j/model/parameter/Range;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Range;->value:Ljava/lang/String;

    return-object v0
.end method
