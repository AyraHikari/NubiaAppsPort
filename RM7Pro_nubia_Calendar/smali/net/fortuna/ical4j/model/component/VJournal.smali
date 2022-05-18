.class public Lnet/fortuna/ical4j/model/component/VJournal;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VJournal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VJournal$PublishValidator;,
        Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;,
        Lnet/fortuna/ical4j/model/component/VJournal$AddValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x69f5783d961b12aeL


# instance fields
.field private final methodValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string v0, "VJOURNAL"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    .line 124
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStamp;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/property/DtStamp;-><init>()V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 135
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lnet/fortuna/ical4j/model/Date;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/component/VJournal;-><init>()V

    .line 152
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/property/DtStart;-><init>(Lnet/fortuna/ical4j/model/Date;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 153
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    new-instance v1, Lnet/fortuna/ical4j/model/property/Summary;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/property/Summary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 154
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4
    .param p1, "properties"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string v0, "VJOURNAL"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    .line 124
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$AddValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$AddValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$CancelValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VJournal$PublishValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VJournal$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VJournal;Lnet/fortuna/ical4j/model/component/VJournal$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method


# virtual methods
.method public final getClassification()Lnet/fortuna/ical4j/model/property/Clazz;
    .locals 1

    .prologue
    .line 455
    const-string v0, "CLASS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Clazz;

    return-object v0
.end method

.method public final getCreated()Lnet/fortuna/ical4j/model/property/Created;
    .locals 1

    .prologue
    .line 462
    const-string v0, "CREATED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Created;

    return-object v0
.end method

.method public final getDateStamp()Lnet/fortuna/ical4j/model/property/DtStamp;
    .locals 1

    .prologue
    .line 498
    const-string v0, "DTSTAMP"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStamp;

    return-object v0
.end method

.method public final getDescription()Lnet/fortuna/ical4j/model/property/Description;
    .locals 1

    .prologue
    .line 469
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Description;

    return-object v0
.end method

.method public final getLastModified()Lnet/fortuna/ical4j/model/property/LastModified;
    .locals 1

    .prologue
    .line 484
    const-string v0, "LAST-MODIFIED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/LastModified;

    return-object v0
.end method

.method public final getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;
    .locals 1

    .prologue
    .line 491
    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Organizer;

    return-object v0
.end method

.method public final getRecurrenceId()Lnet/fortuna/ical4j/model/property/RecurrenceId;
    .locals 1

    .prologue
    .line 533
    const-string v0, "RECURRENCE-ID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RecurrenceId;

    return-object v0
.end method

.method public final getSequence()Lnet/fortuna/ical4j/model/property/Sequence;
    .locals 1

    .prologue
    .line 505
    const-string v0, "SEQUENCE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Sequence;

    return-object v0
.end method

.method public final getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;
    .locals 1

    .prologue
    .line 477
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    return-object v0
.end method

.method public final getStatus()Lnet/fortuna/ical4j/model/property/Status;
    .locals 1

    .prologue
    .line 512
    const-string v0, "STATUS"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    return-object v0
.end method

.method public final getSummary()Lnet/fortuna/ical4j/model/property/Summary;
    .locals 1

    .prologue
    .line 519
    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Summary;

    return-object v0
.end method

.method public final getUid()Lnet/fortuna/ical4j/model/property/Uid;
    .locals 1

    .prologue
    .line 541
    const-string v0, "UID"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Uid;

    return-object v0
.end method

.method public final getUrl()Lnet/fortuna/ical4j/model/property/Url;
    .locals 1

    .prologue
    .line 526
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Url;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1
    .param p1, "method"    # Lnet/fortuna/ical4j/model/property/Method;

    .prologue
    .line 231
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VJournal;->methodValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 4
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v1, "ical4j.validation.relaxed"

    .line 163
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "UID"

    .line 169
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 174
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "DTSTAMP"

    .line 175
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 174
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 182
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "CLASS"

    .line 183
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 184
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "CREATED"

    .line 185
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 186
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "DESCRIPTION"

    .line 187
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 186
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 188
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "DTSTART"

    .line 189
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 188
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 190
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "DTSTAMP"

    .line 191
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 190
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 192
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "LAST-MODIFIED"

    .line 193
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 192
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 194
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "ORGANIZER"

    .line 195
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 194
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 196
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "RECURRENCE-ID"

    .line 197
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 196
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 198
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "SEQUENCE"

    .line 199
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 198
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 200
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "STATUS"

    .line 201
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 200
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 202
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "SUMMARY"

    .line 203
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 202
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 204
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "UID"

    .line 205
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 204
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 206
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v1

    const-string v2, "URL"

    .line 207
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    .line 206
    invoke-virtual {v1, v2, v3}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 209
    const-string v1, "STATUS"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/component/VJournal;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Status;

    .line 210
    .local v0, "status":Lnet/fortuna/ical4j/model/property/Status;
    if-eqz v0, :cond_1

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

    .line 211
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 212
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    new-instance v1, Lnet/fortuna/ical4j/model/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] may not occur in VJOURNAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_1
    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VJournal;->validateProperties()V

    .line 225
    :cond_2
    return-void
.end method
