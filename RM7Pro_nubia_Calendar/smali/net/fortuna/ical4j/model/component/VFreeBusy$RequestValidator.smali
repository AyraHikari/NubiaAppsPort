.class Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;
.super Ljava/lang/Object;
.source "VFreeBusy.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VFreeBusy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;Lnet/fortuna/ical4j/model/component/VFreeBusy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VFreeBusy;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VFreeBusy$1;

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VFreeBusy;)V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ATTENDEE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 738
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTEND"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 739
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 740
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 741
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 742
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 744
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "COMMENT"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 746
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "FREEBUSY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 747
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 748
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REQUEST-STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 749
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VFreeBusy$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 750
    return-void
.end method
