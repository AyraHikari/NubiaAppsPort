.class public Lnet/fortuna/ical4j/model/component/VEvent;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;,
        Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x235c221b271f87f7L


# instance fields
.field private alarms:Lnet/fortuna/ical4j/model/ComponentList;

.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    const-string v0, "VEVENT"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 246
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 247
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>()V

    .line 275
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 276
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 277
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "end"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>()V

    .line 287
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 288
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 289
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 290
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Dur;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "duration"    # Lnet/fortuna/ical4j/model/Dur;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>()V

    .line 301
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 302
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 303
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 304
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    const/4 v3, 0x0

    .line 254
    const-string v0, "VEVENT"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 256
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 4
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;
    .param p2, "alarms"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    const/4 v3, 0x0

    .line 264
    const-string v0, "VEVENT"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$DeclineCounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RefreshValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iput-object p2, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 266
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
    .line 1516
    invoke-super {p0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->copy()Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 1517
    .local v0, "copy":Lnet/fortuna/ical4j/model/component/VEvent;
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentList;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ComponentList;-><init>(Lnet/fortuna/ical4j/model/ComponentList;)V

    iput-object v1, v0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    .line 1518
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 1491
    instance-of v0, p1, Lnet/fortuna/ical4j/model/component/VEvent;

    if-eqz v0, :cond_1

    .line 1492
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 1493
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1495
    :goto_0
    return v0

    .line 1493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1495
    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAlarms()Lnet/fortuna/ical4j/model/ComponentList;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->alarms:Lnet/fortuna/ical4j/model/ComponentList;

    return-object v0
.end method

.method public final getClassification()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .prologue
    .line 1331
    const-string v0, "CLASS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Clazz;

    return-object v0
.end method

.method public final getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1
    .param p1, "rangeStart"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "rangeEnd"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 1266
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Z)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    return-object v0
.end method

.method public final getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Z)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 4
    .param p1, "rangeStart"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "rangeEnd"    # Lnet/fortuna/ical4j/model/Date;
    .param p3, "normalise"    # Z

    .prologue
    .line 1280
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 1282
    .local v0, "periods":Lnet/fortuna/ical4j/model/PeriodList;
    sget-object v1, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    const-string v2, "TRANSP"

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/property/Transp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    new-instance v1, Lnet/fortuna/ical4j/model/Period;

    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    new-instance v3, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v3, p2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v1, v2, v3}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/component/VEvent;->calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 1296
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->normalise()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    .line 1300
    :cond_0
    return-object v0
.end method

.method public final getCreated()Lnet/fortuna/ical4j/model/property/Created;
    .locals 1

    .prologue
    .line 1338
    const-string v0, "CREATED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Created;

    return-object v0
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .prologue
    .line 1395
    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    return-object v0
.end method

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .prologue
    .line 1345
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

    return-object v0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .prologue
    .line 1476
    const-string v0, "DURATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    return-object v0
.end method

.method public final getEndDate()Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 1

    .prologue
    .line 1446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;

    move-result-object v0

    return-object v0
.end method

.method public final getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 5
    .param p1, "deriveFromDuration"    # Z

    .prologue
    .line 1457
    const-string v3, "DTEND"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 1459
    .local v0, "dtEnd":Lnet/fortuna/ical4j/model/property/DtEnd;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1460
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v1

    .line 1461
    .local v1, "dtStart":Lnet/fortuna/ical4j/model/property/DtStart;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getDuration()Lnet/fortuna/ical4j/model/property/Duration;

    move-result-object v2

    .line 1462
    .local v2, "vEventDuration":Lnet/fortuna/ical4j/model/property/Duration;
    new-instance v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .end local v0    # "dtEnd":Lnet/fortuna/ical4j/model/property/DtEnd;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v3

    .line 1463
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    const-string v3, "VALUE"

    .line 1464
    invoke-virtual {v1, v3}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 1462
    invoke-static {v4, v3}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    .line 1465
    .restart local v0    # "dtEnd":Lnet/fortuna/ical4j/model/property/DtEnd;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtStart;->isUtc()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1466
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/property/DtEnd;->setUtc(Z)V

    .line 1469
    .end local v1    # "dtStart":Lnet/fortuna/ical4j/model/property/DtStart;
    .end local v2    # "vEventDuration":Lnet/fortuna/ical4j/model/property/Duration;
    :cond_0
    return-object v0
.end method

.method public final getGeographicPos()Lnet/fortuna/ical4j/model/property/Geo;
    .locals 1

    .prologue
    .line 1360
    const-string v0, "GEO"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Geo;

    return-object v0
.end method

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .prologue
    .line 1367
    const-string v0, "LAST-MODIFIED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/LastModified;

    return-object v0
.end method

.method public final getLocation()Lnet/fortuna/ical4j/model/property/Location;
    .locals 1

    .prologue
    .line 1374
    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Location;

    return-object v0
.end method

.method public final getOccurrence(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/component/VEvent;
    .locals 6
    .param p1, "date"    # Lnet/fortuna/ical4j/model/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0, p1, p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    .line 1316
    .local v0, "consumedTime":Lnet/fortuna/ical4j/model/PeriodList;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/Period;

    .line 1318
    .local v3, "p":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/fortuna/ical4j/model/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1319
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->copy()Lnet/fortuna/ical4j/model/Component;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 1320
    .local v2, "occurrence":Lnet/fortuna/ical4j/model/component/VEvent;
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    new-instance v5, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    invoke-direct {v5, p1}, Lnet/fortuna/ical4j/model/property/RecurrenceId;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v4, v5}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 1324
    .end local v2    # "occurrence":Lnet/fortuna/ical4j/model/component/VEvent;
    .end local v3    # "p":Lnet/fortuna/ical4j/model/Period;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .prologue
    .line 1381
    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    return-object v0
.end method

.method public final getPriority()Lnet/fortuna/ical4j/model/property/Priority;
    .locals 1

    .prologue
    .line 1388
    const-string v0, "PRIORITY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Priority;

    return-object v0
.end method

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .prologue
    .line 1437
    const-string v0, "RECURRENCE-ID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    return-object v0
.end method

.method public final getSequence()Lnet/fortuna/ical4j/model/property/Sequence;
    .locals 1

    .prologue
    .line 1402
    const-string v0, "SEQUENCE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 1353
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final getStatus()Lnet/fortuna/ical4j/model/property/Status;
    .locals 1

    .prologue
    .line 1409
    const-string v0, "STATUS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    return-object v0
.end method

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .prologue
    .line 1416
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

    return-object v0
.end method

.method public final getTransparency()Lnet/fortuna/ical4j/model/property/Transp;
    .locals 1

    .prologue
    .line 1423
    const-string v0, "TRANSP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Transp;

    return-object v0
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .prologue
    .line 1484
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    return-object v0
.end method

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .prologue
    .line 1430
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 480
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1502
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 1503
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 1502
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 318
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 319
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 325
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate(Z)V
    .locals 12
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v9

    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 339
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 342
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    instance-of v9, v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    if-nez v9, :cond_0

    .line 343
    new-instance v9, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Component ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 344
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] may not occur in VEVENT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 347
    :cond_0
    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Z)V

    goto :goto_0

    .line 350
    :cond_1
    const-string v9, "ical4j.validation.relaxed"

    .line 351
    invoke-static {v9}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 356
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "UID"

    .line 357
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 356
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 362
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DTSTAMP"

    .line 363
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 362
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 371
    :cond_2
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "CLASS"

    .line 372
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 371
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 373
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "CREATED"

    .line 374
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 373
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 375
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DESCRIPTION"

    .line 376
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 375
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 377
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DTSTART"

    .line 378
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 377
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 379
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "GEO"

    .line 380
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 379
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 381
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "LAST-MODIFIED"

    .line 382
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 381
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 383
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "LOCATION"

    .line 384
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 383
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 385
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "ORGANIZER"

    .line 386
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 385
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 387
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "PRIORITY"

    .line 388
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 387
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 389
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DTSTAMP"

    .line 390
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 389
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 391
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "SEQUENCE"

    .line 392
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 391
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 393
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "STATUS"

    .line 394
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 393
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 395
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "SUMMARY"

    .line 396
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 395
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 397
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "TRANSP"

    .line 398
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 397
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 399
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "UID"

    .line 400
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 399
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 401
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "URL"

    .line 402
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 401
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 403
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "RECURRENCE-ID"

    .line 404
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 403
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 406
    const-string v9, "STATUS"

    invoke-virtual {p0, v9}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v7

    check-cast v7, Lnet/fortuna/ical4j/model/property/Status;

    .line 407
    .local v7, "status":Lnet/fortuna/ical4j/model/property/Status;
    if-eqz v7, :cond_3

    sget-object v9, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    .line 408
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 409
    invoke-virtual {v9}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 410
    new-instance v9, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status property ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 411
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/Status;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is not applicable for VEVENT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 419
    :cond_3
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DTEND"

    .line 420
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 419
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    const-string v9, "DTEND"

    invoke-virtual {p0, v9}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 436
    const-string v9, "DTSTART"

    invoke-virtual {p0, v9}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 437
    .local v4, "start":Lnet/fortuna/ical4j/model/property/DtStart;
    const-string v9, "DTEND"

    invoke-virtual {p0, v9}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 439
    .local v1, "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    if-eqz v4, :cond_7

    .line 440
    const-string v9, "VALUE"

    invoke-virtual {v4, v9}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v6

    .line 441
    .local v6, "startValue":Lnet/fortuna/ical4j/model/Parameter;
    const-string v9, "VALUE"

    invoke-virtual {v1, v9}, Lnet/fortuna/ical4j/model/property/DtEnd;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v2

    .line 443
    .local v2, "endValue":Lnet/fortuna/ical4j/model/Parameter;
    const/4 v5, 0x0

    .line 444
    .local v5, "startEndValueMismatch":Z
    if-eqz v2, :cond_6

    .line 445
    if-eqz v6, :cond_5

    invoke-virtual {v2, v6}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 447
    const/4 v5, 0x1

    .line 458
    :cond_4
    :goto_2
    if-eqz v5, :cond_7

    .line 459
    new-instance v9, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v10, "Property [DTEND] must have the same [VALUE] as [DTSTART]"

    invoke-direct {v9, v10}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 422
    .end local v1    # "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    .end local v2    # "endValue":Lnet/fortuna/ical4j/model/Parameter;
    .end local v4    # "start":Lnet/fortuna/ical4j/model/property/DtStart;
    .end local v5    # "startEndValueMismatch":Z
    .end local v6    # "startValue":Lnet/fortuna/ical4j/model/Parameter;
    :catch_0
    move-exception v8

    .line 423
    .local v8, "ve":Lnet/fortuna/ical4j/model/ValidationException;
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v9

    const-string v10, "DURATION"

    .line 424
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v11

    .line 423
    invoke-virtual {v9, v10, v11}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_1

    .line 449
    .end local v8    # "ve":Lnet/fortuna/ical4j/model/ValidationException;
    .restart local v1    # "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    .restart local v2    # "endValue":Lnet/fortuna/ical4j/model/Parameter;
    .restart local v4    # "start":Lnet/fortuna/ical4j/model/property/DtStart;
    .restart local v5    # "startEndValueMismatch":Z
    .restart local v6    # "startValue":Lnet/fortuna/ical4j/model/Parameter;
    :cond_5
    if-nez v6, :cond_4

    sget-object v9, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v9, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 451
    const/4 v5, 0x1

    goto :goto_2

    .line 454
    :cond_6
    if-eqz v6, :cond_4

    sget-object v9, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v9, v6}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 456
    const/4 v5, 0x1

    goto :goto_2

    .line 471
    .end local v1    # "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    .end local v2    # "endValue":Lnet/fortuna/ical4j/model/Parameter;
    .end local v4    # "start":Lnet/fortuna/ical4j/model/property/DtStart;
    .end local v5    # "startEndValueMismatch":Z
    .end local v6    # "startValue":Lnet/fortuna/ical4j/model/Parameter;
    :cond_7
    if-eqz p1, :cond_8

    .line 472
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VEvent;->validateProperties()V

    .line 474
    :cond_8
    return-void
.end method
