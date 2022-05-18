.class public Lnet/fortuna/ical4j/model/property/Url;
.super Lnet/fortuna/ical4j/model/Property;
.source "Url.java"


# static fields
.field private static final serialVersionUID:J = 0xf299c72fa7979a9L


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "URL"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "aUri"    # Ljava/net/URI;

    .prologue
    .line 116
    const-string v0, "URL"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 117
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Url;->uri:Ljava/net/URI;

    .line 118
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "URL"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 109
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Url;->setValue(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aUri"    # Ljava/net/URI;

    .prologue
    .line 125
    const-string v0, "URL"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Url;->uri:Ljava/net/URI;

    .line 127
    return-void
.end method


# virtual methods
.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Url;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Url;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 154
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Url;->uri:Ljava/net/URI;

    .line 155
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Url;->uri:Ljava/net/URI;

    .line 141
    return-void
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method
