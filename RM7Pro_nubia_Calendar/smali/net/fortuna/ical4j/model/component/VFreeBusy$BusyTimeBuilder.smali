.class Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
.super Ljava/lang/Object;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VFreeBusy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusyTimeBuilder"
.end annotation


# instance fields
.field private components:Lnet/fortuna/ical4j/model/ComponentList;

.field private end:Lnet/fortuna/ical4j/model/DateTime;

.field private start:Lnet/fortuna/ical4j/model/DateTime;

.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VFreeBusy;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VFreeBusy$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    return-void
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/property/FreeBusy;
    .locals 8

    .prologue
    .line 393
    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    iget-object v5, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    iget-object v6, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v7, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    invoke-static {v4, v5, v6, v7}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->access$600(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v2

    .line 394
    .local v2, "periods":Lnet/fortuna/ical4j/model/PeriodList;
    new-instance v3, Lnet/fortuna/ical4j/model/DateRange;

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v5, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v3, v4, v5}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 396
    .local v3, "range":Lnet/fortuna/ical4j/model/DateRange;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lnet/fortuna/ical4j/model/PeriodList;->setUtc(Z)V

    .line 397
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Period;

    .line 400
    .local v1, "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v3, v1}, Lnet/fortuna/ical4j/model/DateRange;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 401
    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/PeriodList;->remove(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_0

    .line 404
    .end local v1    # "period":Lnet/fortuna/ical4j/model/Period;
    :cond_1
    new-instance v4, Lnet/fortuna/ical4j/model/property/FreeBusy;

    invoke-direct {v4, v2}, Lnet/fortuna/ical4j/model/property/FreeBusy;-><init>(Lnet/fortuna/ical4j/model/PeriodList;)V

    return-object v4
.end method

.method public components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0
    .param p1, "components"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 388
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 389
    return-object p0
.end method

.method public end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0
    .param p1, "end"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 383
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    .line 384
    return-object p0
.end method

.method public start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;
    .locals 0
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 378
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    .line 379
    return-object p0
.end method
