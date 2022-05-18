.class public Lnet/fortuna/ical4j/model/parameter/Dir;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Dir.java"


# static fields
.field private static final serialVersionUID:J = -0x77190ceda37f9511L


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/parameter/Dir;-><init>(Ljava/net/URI;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "aUri"    # Ljava/net/URI;

    .prologue
    .line 66
    const-string v0, "DIR"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 67
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Dir;->uri:Ljava/net/URI;

    .line 68
    return-void
.end method


# virtual methods
.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Dir;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/parameter/Dir;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
