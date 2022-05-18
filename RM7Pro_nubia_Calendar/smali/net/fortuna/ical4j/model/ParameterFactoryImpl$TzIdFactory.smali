.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TzIdFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TzIdFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 478
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TzIdFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/TzId;

    invoke-static {p2}, Lnet/fortuna/ical4j/util/Strings;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/TzId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
