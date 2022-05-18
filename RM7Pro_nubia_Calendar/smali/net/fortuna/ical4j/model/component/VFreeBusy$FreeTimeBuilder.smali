.class Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
.super Ljava/lang/Object;
.source "VFreeBusy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VFreeBusy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeTimeBuilder"
.end annotation


# instance fields
.field private components:Lnet/fortuna/ical4j/model/ComponentList;

.field private duration:Lnet/fortuna/ical4j/model/Dur;

.field private end:Lnet/fortuna/ical4j/model/DateTime;

.field private start:Lnet/fortuna/ical4j/model/DateTime;

.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VFreeBusy;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VFreeBusy$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    return-void
.end method

.method static synthetic access$400(Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .locals 1
    .param p0, "x0"    # Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .param p1, "x1"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->duration(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;

    move-result-object v0

    return-object v0
.end method

.method private duration(Lnet/fortuna/ical4j/model/Dur;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .locals 0
    .param p1, "duration"    # Lnet/fortuna/ical4j/model/Dur;

    .prologue
    .line 435
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 436
    return-object p0
.end method


# virtual methods
.method public build()Lnet/fortuna/ical4j/model/property/FreeBusy;
    .locals 11

    .prologue
    .line 445
    new-instance v0, Lnet/fortuna/ical4j/model/property/FreeBusy;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy;-><init>()V

    .line 446
    .local v0, "fb":Lnet/fortuna/ical4j/model/property/FreeBusy;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v7

    sget-object v8, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v7, v8}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 447
    iget-object v7, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    iget-object v8, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    iget-object v9, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v10, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    invoke-static {v7, v8, v9, v10}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->access$600(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/ComponentList;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v5

    .line 448
    .local v5, "periods":Lnet/fortuna/ical4j/model/PeriodList;
    new-instance v6, Lnet/fortuna/ical4j/model/DateRange;

    iget-object v7, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v8, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v6, v7, v8}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 450
    .local v6, "range":Lnet/fortuna/ical4j/model/DateRange;
    new-instance v7, Lnet/fortuna/ical4j/model/Period;

    iget-object v8, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v9, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v7, v8, v9}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    invoke-virtual {v5, v7}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 451
    new-instance v3, Lnet/fortuna/ical4j/model/DateTime;

    iget-object v7, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v3, v7}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 453
    .local v3, "lastPeriodEnd":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/Period;

    .line 457
    .local v4, "period":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v6, v4}, Lnet/fortuna/ical4j/model/DateRange;->contains(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 458
    invoke-virtual {v6, v4}, Lnet/fortuna/ical4j/model/DateRange;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v7

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 461
    :cond_1
    new-instance v1, Lnet/fortuna/ical4j/model/property/Duration;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v7

    invoke-direct {v1, v3, v7}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 462
    .local v1, "freeDuration":Lnet/fortuna/ical4j/model/property/Duration;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v7

    iget-object v8, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->duration:Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {v7, v8}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 463
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/FreeBusy;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v7

    new-instance v8, Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V

    invoke-virtual {v7, v8}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 467
    .end local v1    # "freeDuration":Lnet/fortuna/ical4j/model/property/Duration;
    :cond_2
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v7

    invoke-virtual {v7, v3}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v3

    goto :goto_0

    .line 471
    .end local v4    # "period":Lnet/fortuna/ical4j/model/Period;
    :cond_3
    return-object v0
.end method

.method public components(Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .locals 0
    .param p1, "components"    # Lnet/fortuna/ical4j/model/ComponentList;

    .prologue
    .line 440
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->components:Lnet/fortuna/ical4j/model/ComponentList;

    .line 441
    return-object p0
.end method

.method public end(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .locals 0
    .param p1, "end"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 430
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->end:Lnet/fortuna/ical4j/model/DateTime;

    .line 431
    return-object p0
.end method

.method public start(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;
    .locals 0
    .param p1, "start"    # Lnet/fortuna/ical4j/model/DateTime;

    .prologue
    .line 425
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$FreeTimeBuilder;->start:Lnet/fortuna/ical4j/model/DateTime;

    .line 426
    return-object p0
.end method
