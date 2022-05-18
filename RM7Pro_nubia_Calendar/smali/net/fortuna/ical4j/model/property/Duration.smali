.class public Lnet/fortuna/ical4j/model/property/Duration;
.super Lnet/fortuna/ical4j/model/Property;
.source "Duration.java"


# static fields
.field private static final serialVersionUID:J = 0x7ee97572b24083beL


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/Dur;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "DURATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .prologue
    .line 135
    const-string v0, "DURATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 136
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Duration;->setDuration(Lnet/fortuna/ical4j/model/Dur;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Dur;)V
    .locals 2
    .param p1, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 116
    const-string v0, "DURATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 117
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 118
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "DURATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 109
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Duration;->setValue(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/Dur;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 125
    const-string v0, "DURATION"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Duration;->setDuration(Lnet/fortuna/ical4j/model/Dur;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final getDuration()Lnet/fortuna/ical4j/model/Dur;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/Dur;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Dur;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setDuration(Lnet/fortuna/ical4j/model/Dur;)V
    .locals 0
    .param p1, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 166
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 167
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Duration;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 152
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
    .line 174
    return-void
.end method
