.class public Lnet/fortuna/ical4j/model/component/VToDo;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VToDo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$RefreshValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$PublishValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$DeclineCounterValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$CancelValidator;,
        Lnet/fortuna/ical4j/model/component/VToDo$AddValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3be04b69dbed4dcL


# instance fields
.field private alarms:Lnet/fortuna/ical4j/model/ComponentList;

.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v0, "VTODO"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 151
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 168
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 169
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 186
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 187
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 188
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "due"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 198
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 199
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Due;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Due;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 200
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 201
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Dur;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "duration"    # Lnet/fortuna/ical4j/model/Dur;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>()V

    .line 212
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 213
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 214
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 215
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string v0, "VTODO"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    .line 151
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 177
    return-void
.end method


# virtual methods
.method public copy()Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-super {p0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->copy()Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 1276
    .local v0, "copy":Lnet/fortuna/ical4j/model/component/VToDo;
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 1277
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1251
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VToDo;

    if-eqz v0, :cond_1

    .line 1252
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    check-cast p1, Lnet/fortuna/ical4j/model/component/VToDo;

    .line 1253
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1255
    :goto_0
    return v0

    .line 1253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1255
    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAlarms()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getClassification()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .prologue
    .line 1109
    const-string v0, "CLASS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Clazz;

    return-object v0
.end method

.method public final getCreated()Lnet/fortuna/ical4j/model/property/Created;
    .locals 1

    .prologue
    .line 1123
    const-string v0, "CREATED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Created;

    return-object v0
.end method

.method public final getDateCompleted()Lnet/fortuna/ical4j/model/property/Completed;
    .locals 1

    .prologue
    .line 1116
    const-string v0, "COMPLETED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Completed;

    return-object v0
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .prologue
    .line 1187
    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    return-object v0
.end method

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .prologue
    .line 1130
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

    return-object v0
.end method

.method public final getDue()Lnet/fortuna/ical4j/model/property/Due;
    .locals 1

    .prologue
    .line 1236
    const-string v0, "DUE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Due;

    return-object v0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .prologue
    .line 1229
    const-string v0, "DURATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    return-object v0
.end method

.method public final getGeographicPos()Lnet/fortuna/ical4j/model/property/Geo;
    .locals 1

    .prologue
    .line 1145
    const-string v0, "GEO"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Geo;

    return-object v0
.end method

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .prologue
    .line 1152
    const-string v0, "LAST-MODIFIED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/LastModified;

    return-object v0
.end method

.method public final getLocation()Lnet/fortuna/ical4j/model/property/Location;
    .locals 1

    .prologue
    .line 1159
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Location;

    return-object v0
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .prologue
    .line 1166
    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    return-object v0
.end method

.method public final getPercentComplete()Lnet/fortuna/ical4j/model/property/PercentComplete;
    .locals 1

    .prologue
    .line 1173
    const-string v0, "PERCENT-COMPLETE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/PercentComplete;

    return-object v0
.end method

.method public final getPriority()Lnet/fortuna/ical4j/model/property/Priority;
    .locals 1

    .prologue
    .line 1180
    const-string v0, "PRIORITY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Priority;

    return-object v0
.end method

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .prologue
    .line 1222
    const-string v0, "RECURRENCE-ID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    return-object v0
.end method

.method public final getSequence()Lnet/fortuna/ical4j/model/property/Sequence;
    .locals 1

    .prologue
    .line 1194
    const-string v0, "SEQUENCE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 1138
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final getStatus()Lnet/fortuna/ical4j/model/property/Status;
    .locals 1

    .prologue
    .line 1201
    const-string v0, "STATUS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    return-object v0
.end method

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .prologue
    .line 1208
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

    return-object v0
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .prologue
    .line 1244
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    return-object v0
.end method

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .prologue
    .line 1215
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 354
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1262
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 1263
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 1262
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 236
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate(Z)V
    .locals 7
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 253
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    instance-of v4, v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    if-nez v4, :cond_0

    .line 254
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] may not occur in VTODO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :cond_0
    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Z)V

    goto :goto_0

    .line 260
    :cond_1
    const-string v4, "ical4j.validation.relaxed"

    .line 261
    invoke-static {v4}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "UID"

    .line 267
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 266
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 272
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTSTAMP"

    .line 273
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 272
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 281
    :cond_2
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "CLASS"

    .line 282
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 281
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 283
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "COMPLETED"

    .line 284
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 283
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 285
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "CREATED"

    .line 286
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 285
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 287
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DESCRIPTION"

    .line 288
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 287
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 289
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTSTAMP"

    .line 290
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 289
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 291
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DTSTART"

    .line 292
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 291
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 293
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "GEO"

    .line 294
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 293
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 295
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "LAST-MODIFIED"

    .line 296
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 295
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 297
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "LOCATION"

    .line 298
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 297
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 299
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "ORGANIZER"

    .line 300
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 299
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 301
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "PERCENT-COMPLETE"

    .line 302
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 301
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 303
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "PRIORITY"

    .line 304
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 303
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 305
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "RECURRENCE-ID"

    .line 306
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 305
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 307
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "SEQUENCE"

    .line 308
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 307
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 309
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "STATUS"

    .line 310
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 309
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 311
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "SUMMARY"

    .line 312
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 311
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 313
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "UID"

    .line 314
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 313
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 315
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "URL"

    .line 316
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 315
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 318
    const-string v4, "STATUS"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/Status;

    .line 319
    .local v2, "status":Lnet/fortuna/ical4j/model/property/Status;
    if-eqz v2, :cond_3

    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 320
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 321
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 322
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 323
    new-instance v4, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 324
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] may not occur in VTODO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :cond_3
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DUE"

    .line 333
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 332
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    if-eqz p1, :cond_4

    .line 346
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->validateProperties()V

    .line 348
    :cond_4
    return-void

    .line 335
    :catch_0
    move-exception v3

    .line 336
    .local v3, "ve":Lnet/fortuna/ical4j/model/ValidationException;
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v4

    const-string v5, "DURATION"

    .line 337
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v6

    .line 336
    invoke-virtual {v4, v5, v6}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_1
.end method
