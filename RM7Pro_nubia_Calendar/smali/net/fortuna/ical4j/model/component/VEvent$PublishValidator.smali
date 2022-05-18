.class Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;
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
    name = "PublishValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VEvent;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VEvent;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VEvent$1;

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;)V

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
    .line 930
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTAMP"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 931
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTART"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 933
    const-string v2, "ical4j.validation.relaxed"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "ORGANIZER"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 935
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SUMMARY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 938
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "UID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 940
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RECURRENCE-ID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 941
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SEQUENCE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 942
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CATEGORIES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 943
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CLASS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 944
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "COMMENT"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 945
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CREATED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 946
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DESCRIPTION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 947
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTEND"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 948
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DURATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 949
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "GEO"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 950
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LAST-MODIFIED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 951
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LOCATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 952
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "PRIORITY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 953
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RESOURCES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 954
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "STATUS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 955
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "TRANSP"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 956
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "URL"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 958
    const-string v2, "ical4j.validation.relaxed"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 959
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "ATTENDEE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 962
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "REQUEST-STATUS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 964
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 965
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 966
    .local v0, "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_0

    .line 968
    .end local v0    # "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    :cond_2
    return-void
.end method
