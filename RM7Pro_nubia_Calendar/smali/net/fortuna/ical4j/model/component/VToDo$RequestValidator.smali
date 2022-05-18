.class Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;
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
    name = "RequestValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VToDo;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VToDo;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VToDo$1;

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;)V

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
    .line 1070
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "ATTENDEE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1072
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTAMP"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1073
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTART"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1074
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "ORGANIZER"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1075
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "PRIORITY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1076
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SUMMARY"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1077
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "UID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1079
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "SEQUENCE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1080
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CATEGORIES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1081
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CLASS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1082
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "COMMENT"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1083
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "CREATED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1084
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DESCRIPTION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1085
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DUE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1086
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DURATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1087
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "GEO"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1088
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LAST-MODIFIED"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1089
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "LOCATION"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1090
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "PERCENT-COMPLETE"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1091
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RECURRENCE-ID"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1092
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "RESOURCES"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1093
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "STATUS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1094
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "URL"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1096
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "REQUEST-STATUS"

    iget-object v4, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 1098
    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$RequestValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 1100
    .local v0, "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_0

    .line 1102
    .end local v0    # "alarm":Lnet/fortuna/ical4j/model/component/VAlarm;
    :cond_0
    return-void
.end method
