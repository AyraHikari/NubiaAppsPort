.class Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;
.super Ljava/lang/Object;
.source "VToDo.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VToDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplyValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VToDo;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VToDo;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VToDo$1;

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;)V

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
    .line 976
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ATTENDEE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 978
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 979
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 980
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 982
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CATEGORIES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 983
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CLASS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 984
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "COMMENT"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 985
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 986
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 987
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 988
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DUE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 989
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 990
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "GEO"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 991
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 992
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 993
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PERCENT-COMPLETE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 994
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PRIORITY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 995
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RESOURCES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 996
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RECURRENCE-ID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 997
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SEQUENCE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 998
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 999
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1000
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1002
    const-string v0, "VALARM"

    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/VToDo$ReplyValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/fortuna/ical4j/util/ComponentValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V

    .line 1003
    return-void
.end method
