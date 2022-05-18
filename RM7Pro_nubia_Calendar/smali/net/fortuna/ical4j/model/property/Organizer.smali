.class public Lnet/fortuna/ical4j/model/property/Organizer;
.super Lnet/fortuna/ical4j/model/Property;
.source "Organizer.java"


# static fields
.field private static final serialVersionUID:J = -0x4866629ef251a7a5L


# instance fields
.field private calAddress:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "ORGANIZER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "ORGANIZER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 152
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Organizer;->setValue(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "aUri"    # Ljava/net/URI;

    .prologue
    .line 170
    const-string v0, "ORGANIZER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 171
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Organizer;->calAddress:Ljava/net/URI;

    .line 172
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
    .line 162
    const-string v0, "ORGANIZER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 163
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Organizer;->setValue(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aUri"    # Ljava/net/URI;

    .prologue
    .line 179
    const-string v0, "ORGANIZER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 180
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Organizer;->calAddress:Ljava/net/URI;

    .line 181
    return-void
.end method


# virtual methods
.method public final getCalAddress()Ljava/net/URI;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Organizer;->calAddress:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getCalAddress()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCalAddress(Ljava/net/URI;)V
    .locals 0
    .param p1, "calAddress"    # Ljava/net/URI;

    .prologue
    .line 236
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Organizer;->calAddress:Ljava/net/URI;

    .line 237
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
    .line 222
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Organizer;->calAddress:Ljava/net/URI;

    .line 223
    return-void
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "CN"

    .line 193
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 194
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "DIR"

    .line 195
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 196
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "SENT-BY"

    .line 197
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 198
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 199
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 203
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "SCHEDULE-STATUS"

    .line 204
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Organizer;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 209
    return-void
.end method
