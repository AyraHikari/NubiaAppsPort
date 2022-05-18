.class Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;
.super Ljava/lang/Object;
.source "VAlarm.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ITIPValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VAlarm;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VAlarm;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VAlarm;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VAlarm$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;)V

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
    .line 403
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ACTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 404
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TRIGGER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 406
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 407
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 408
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REPEAT"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 409
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 410
    return-void
.end method
