.class Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;
.super Ljava/lang/Object;
.source "VEvent.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VEvent;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VEvent;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VEvent$1;

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;)V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTAMP"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 738
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTART"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 740
    const-string v2, "ical4j.validation.relaxed"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "ORGANIZER"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 744
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SEQUENCE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 745
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SUMMARY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 746
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "UID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 748
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CATEGORIES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 749
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CLASS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 750
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "COMMENT"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 751
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CREATED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 752
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DESCRIPTION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 753
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTEND"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 754
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DURATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 755
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "GEO"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 756
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LAST-MODIFIED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 757
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LOCATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 758
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "PRIORITY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 759
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RECURRENCE-ID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 760
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RESOURCES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 761
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "STATUS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 762
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "TRANSP"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 763
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "URL"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 765
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 767
    .local v0, "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_0

    .line 769
    .end local v0    # "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    :cond_1
    return-void
.end method
