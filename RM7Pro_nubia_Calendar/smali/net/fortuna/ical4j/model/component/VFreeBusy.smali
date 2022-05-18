.class public Lnet/fortuna/ical4j/model/component/VFreeBusy;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;,
        Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe86092d3e26fcf8L


# instance fields
.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    const-string v0, "VFREEBUSY"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 236
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 3
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p2, "end"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    .line 260
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1, v2}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 268
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v1, p2, v2}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 269
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V
    .locals 3
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p2, "end"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p3, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    .line 286
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1, v2}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 294
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-direct {v1, p2, v2}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 296
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-direct {v1, p3}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 297
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    const/4 v3, 0x0

    .line 243
    const-string v0, "VFREEBUSY"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 13
    .param p1, "request"    # Lnet/fortuna/ical4j/model/component/VFreeBusy;
    .param p2, "components"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 312
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>()V

    .line 314
    const-string v8, "DTSTART"

    invoke-virtual {p1, v8}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v7

    check-cast v7, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 316
    .local v7, "start":Lnet/fortuna/ical4j/model/property/DtStart;
    const-string v8, "DTEND"

    invoke-virtual {p1, v8}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 318
    .local v3, "end":Lnet/fortuna/ical4j/model/property/DtEnd;
    const-string v8, "DURATION"

    invoke-virtual {p1, v8}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v2

    check-cast v2, Lnet/fortuna/ical4j/model/property/Duration;

    .line 325
    .local v2, "duration":Lnet/fortuna/ical4j/model/property/Duration;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v8

    new-instance v9, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v8, v9}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 333
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v8

    new-instance v9, Lnet/fortuna/ical4j/model/property/DtEnd;

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DtEnd;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Lnet/fortuna/ical4j/model/property/DtEnd;-><init>(Lnet/fortuna/ical4j/model/Date;Z)V

    invoke-virtual {v8, v9}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 335
    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v8

    new-instance v9, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    invoke-virtual {v8, v9}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 338
    new-instance v6, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v8

    invoke-direct {v6, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 339
    .local v6, "freeStart":Lnet/fortuna/ical4j/model/DateTime;
    new-instance v5, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DtEnd;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v8

    invoke-direct {v5, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 340
    .local v5, "freeEnd":Lnet/fortuna/ical4j/model/DateTime;
    new-instance v8, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    invoke-direct {v8, p0, v12}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-virtual {v8, v6}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v8

    .line 341
    invoke-virtual {v8, v5}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v8

    .line 342
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->access$400(Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v8

    .line 343
    invoke-virtual {v8, p2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v8

    .line 344
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->build()Lnet/fortuna/ical4j/model/property/FreeBusy;

    move-result-object v4

    .line 345
    .local v4, "fb":Lnet/fortuna/ical4j/model/property/FreeBusy;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v8

    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 346
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v8

    invoke-virtual {v8, v4}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 361
    .end local v5    # "freeEnd":Lnet/fortuna/ical4j/model/DateTime;
    .end local v6    # "freeStart":Lnet/fortuna/ical4j/model/DateTime;
    :cond_0
    :goto_0
    return-void

    .line 351
    .end local v4    # "fb":Lnet/fortuna/ical4j/model/property/FreeBusy;
    :cond_1
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v8

    invoke-direct {v1, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 352
    .local v1, "busyStart":Lnet/fortuna/ical4j/model/DateTime;
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/DtEnd;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v8

    invoke-direct {v0, v8}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 353
    .local v0, "busyEnd":Lnet/fortuna/ical4j/model/DateTime;
    new-instance v8, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    invoke-direct {v8, p0, v12}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V

    invoke-virtual {v8, v1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object v8

    .line 354
    invoke-virtual {v8, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object v8

    .line 355
    invoke-virtual {v8, p2}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;

    move-result-object v8

    .line 356
    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->build()Lnet/fortuna/ical4j/model/property/FreeBusy;

    move-result-object v4

    .line 357
    .restart local v4    # "fb":Lnet/fortuna/ical4j/model/property/FreeBusy;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v8

    invoke-virtual {v8}, Lnet/fortuna/ical4j/model/PeriodList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 358
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v8

    invoke-virtual {v8, v4}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0
.end method

.method static synthetic access$600(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/model/component/VFreeBusy;
    .param p1, "x1"    # Lnet/fortuna/ical4j/model/ComponentList;
    .param p2, "x2"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p3, "x3"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getConsumedTime(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v0

    return-object v0
.end method

.method private getConsumedTime(Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 4
    .param p1, "components"    # Lnet/fortuna/ical4j/model/ComponentList;
    .param p2, "rangeStart"    # Lnet/fortuna/ical4j/model/DateTime;
    .param p3, "rangeEnd"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 483
    new-instance v2, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct {v2}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 485
    .local v2, "periods":Lnet/fortuna/ical4j/model/PeriodList;
    const-string v3, "VEVENT"

    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 487
    .local v0, "component":Lnet/fortuna/ical4j/model/Component;
    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .end local v0    # "component":Lnet/fortuna/ical4j/model/Component;
    const/4 v3, 0x0

    invoke-virtual {v0, p2, p3, v3}, Lnet/fortuna/ical4j/model/component/VEvent;->getConsumedTime(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Z)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/PeriodList;->normalise()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final getContact()Lnet/fortuna/ical4j/model/property/Contact;
    .locals 1

    .prologue
    .line 757
    const-string v0, "CONTACT"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Contact;

    return-object v0
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .prologue
    .line 785
    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    return-object v0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/property/Duration;
    .locals 1

    .prologue
    .line 778
    const-string v0, "DURATION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Duration;

    return-object v0
.end method

.method public final getEndDate()Lnet/fortuna/ical4j/model/property/DtEnd;
    .locals 1

    .prologue
    .line 771
    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    return-object v0
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .prologue
    .line 792
    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 764
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .prologue
    .line 807
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    return-object v0
.end method

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .prologue
    .line 799
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 580
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 6
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v3, "ical4j.validation.relaxed"

    invoke-static {v3}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v3

    const-string v4, "UID"

    .line 503
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v5

    .line 502
    invoke-virtual {v3, v4, v5}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 508
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v3

    const-string v4, "DTSTAMP"

    .line 509
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v5

    .line 508
    invoke-virtual {v3, v4, v5}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 512
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    .line 518
    .local v2, "validator":Lnet/fortuna/ical4j/util/PropertyValidator;
    const-string v3, "CONTACT"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 519
    const-string v3, "DTSTART"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 520
    const-string v3, "DTEND"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 521
    const-string v3, "DURATION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 522
    const-string v3, "DTSTAMP"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 523
    const-string v3, "ORGANIZER"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 524
    const-string v3, "UID"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 525
    const-string v3, "URL"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 536
    const-string v3, "RRULE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 537
    const-string v3, "EXRULE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 538
    const-string v3, "RDATE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 539
    const-string v3, "EXDATE"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 542
    const-string v3, "DTSTART"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 549
    .local v1, "dtStart":Lnet/fortuna/ical4j/model/property/DtStart;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtStart;->isUtc()Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v4, "DTSTART must be specified in UTC time"

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 553
    :cond_1
    const-string v3, "DTEND"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtEnd;

    .line 561
    .local v0, "dtEnd":Lnet/fortuna/ical4j/model/property/DtEnd;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtEnd;->isUtc()Z

    move-result v3

    if-nez v3, :cond_2

    .line 562
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v4, "DTEND must be specified in UTC time"

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 566
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v3

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtEnd;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 567
    new-instance v3, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v4, "Property [DTEND] must be later in time than [DTSTART]"

    invoke-direct {v3, v4}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    :cond_3
    if-eqz p1, :cond_4

    .line 572
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->validateProperties()V

    .line 574
    :cond_4
    return-void
.end method
