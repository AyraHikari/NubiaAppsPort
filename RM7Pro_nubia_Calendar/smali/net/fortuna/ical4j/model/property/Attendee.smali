.class public Lnet/fortuna/ical4j/model/property/Attendee;
.super Lnet/fortuna/ical4j/model/Property;
.source "Attendee.java"


# static fields
.field private static final serialVersionUID:J = 0x7500ada329648df3L


# instance fields
.field private calAddress:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "ATTENDEE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "ATTENDEE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 73
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Attendee;->setValue(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "aUri"    # Ljava/net/URI;

    .prologue
    .line 91
    const-string v0, "ATTENDEE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 92
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 93
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
    .line 83
    const-string v0, "ATTENDEE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 84
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Attendee;->setValue(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aUri"    # Ljava/net/URI;

    .prologue
    .line 100
    const-string v0, "ATTENDEE"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 101
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 102
    return-void
.end method


# virtual methods
.method public final getCalAddress()Ljava/net/URI;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getCalAddress()Ljava/net/URI;

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
    .line 173
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 174
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
    .line 108
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Attendee;->calAddress:Ljava/net/URI;

    .line 109
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
    .line 121
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "CUTYPE"

    .line 122
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 123
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "MEMBER"

    .line 124
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 125
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ROLE"

    .line 126
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 127
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "PARTSTAT"

    .line 128
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 129
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "RSVP"

    .line 130
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 131
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "DELEGATED-TO"

    .line 132
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 133
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "DELEGATED-FROM"

    .line 134
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 135
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "SENT-BY"

    .line 136
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 137
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "CN"

    .line 138
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 139
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "DIR"

    .line 140
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 141
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 142
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 146
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "SCHEDULE-AGENT"

    .line 147
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 148
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "SCHEDULE-STATUS"

    .line 149
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 153
    return-void
.end method
