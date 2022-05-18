.class Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;
.super Ljava/lang/Object;
.source "VJournal.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VJournal;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VJournal;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/component/VJournal;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/component/VJournal$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;)V

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
    .line 356
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 357
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 358
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SEQUENCE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 359
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 361
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CATEGORIES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 362
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CLASS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 363
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "COMMENT"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 364
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 365
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 366
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 367
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 368
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RECURRENCE-ID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 369
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 370
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 371
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 373
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REQUEST-STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;->this$0:Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 374
    return-void
.end method
