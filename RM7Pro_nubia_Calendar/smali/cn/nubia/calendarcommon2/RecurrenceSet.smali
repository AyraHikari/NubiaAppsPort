.class public Lcn/nubia/calendarcommon2/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "RecurrenceSet"


# instance fields
.field public exdates:[J

.field public exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    .line 402
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 404
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v4, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 43
    iput-object v4, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v4, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v4, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 54
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "rruleStr":Ljava/lang/String;
    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "rdateStr":Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "exruleStr":Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Lcn/nubia/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v8, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 43
    iput-object v8, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v8, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v8, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 72
    const-string v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, "rruleColumn":I
    const-string v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "rdateColumn":I
    const-string v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "exruleColumn":I
    const-string v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "exdateColumn":I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "rruleStr":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "rdateStr":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "exruleStr":Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v7, v5, v3, v1}, Lcn/nubia/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 43
    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static addPropertiesForRuleStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "ruleStr"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-static {p2}, Lcn/nubia/calendarcommon2/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "rrules":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 381
    .local v1, "rrule":Ljava/lang/String;
    new-instance v0, Lcn/nubia/calendarcommon2/ICalendar$Property;

    invoke-direct {v0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "prop":Lcn/nubia/calendarcommon2/ICalendar$Property;
    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, v0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static addPropertyForDateStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v0, Lcn/nubia/calendarcommon2/ICalendar$Property;

    invoke-direct {v0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "prop":Lcn/nubia/calendarcommon2/ICalendar$Property;
    const/4 v1, 0x0

    .line 442
    .local v1, "tz":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 443
    .local v2, "tzidx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 444
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 447
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 448
    new-instance v3, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcn/nubia/calendarcommon2/ICalendar$Property;->addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V

    .line 450
    :cond_2
    invoke-virtual {v0, p2}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, v0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/ICalendar$Component;)Ljava/lang/String;
    .locals 14
    .param p0, "start"    # Landroid/text/format/Time;
    .param p1, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;

    .prologue
    .line 457
    const-string v9, "DURATION"

    .line 458
    invoke-virtual {p1, v9}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;

    move-result-object v1

    .line 459
    .local v1, "durationProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 484
    :goto_0
    return-object v9

    .line 465
    :cond_0
    const-string v9, "DTEND"

    .line 466
    invoke-virtual {p1, v9}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;

    move-result-object v0

    .line 467
    .local v0, "dtendProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    if-nez v0, :cond_1

    .line 469
    const-string v9, "+P0S"

    goto :goto_0

    .line 471
    :cond_1
    const-string v9, "TZID"

    .line 472
    invoke-virtual {v0, v9}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    move-result-object v8

    .line 473
    .local v8, "endTzidParameter":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    if-nez v8, :cond_2

    iget-object v7, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 476
    .local v7, "endTzid":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 477
    .local v6, "end":Landroid/text/format/Time;
    invoke-virtual {v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 478
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v9, 0x0

    .line 479
    invoke-virtual {p0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 480
    .local v2, "durationMillis":J
    const-wide/16 v10, 0x3e8

    div-long v4, v2, v10

    .line 481
    .local v4, "durationSeconds":J
    iget-boolean v9, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v9, :cond_3

    const-wide/32 v10, 0x15180

    rem-long v10, v4, v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 482
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x15180

    div-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 473
    .end local v2    # "durationMillis":J
    .end local v4    # "durationSeconds":J
    .end local v6    # "end":Landroid/text/format/Time;
    .end local v7    # "endTzid":Ljava/lang/String;
    :cond_2
    iget-object v7, v8, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    .line 484
    .restart local v2    # "durationMillis":J
    .restart local v4    # "durationSeconds":J
    .restart local v6    # "end":Landroid/text/format/Time;
    .restart local v7    # "endTzid":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static extractDates(Lcn/nubia/calendarcommon2/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .param p0, "recurrence"    # Lcn/nubia/calendarcommon2/ICalendar$Property;

    .prologue
    .line 516
    if-nez p0, :cond_0

    .line 517
    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    .line 519
    :cond_0
    const-string v1, "TZID"

    .line 520
    invoke-virtual {p0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    move-result-object v0

    .line 521
    .local v0, "tzidParam":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 491
    .local v1, "properties":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendarcommon2/ICalendar$Property;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    :cond_0
    const/4 v4, 0x0

    .line 512
    :goto_0
    return-object v4

    .line 495
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 496
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendarcommon2/ICalendar$Property;

    invoke-virtual {v4}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 499
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 502
    .local v0, "first":Z
    invoke-virtual {p0, p1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendarcommon2/ICalendar$Property;

    .line 503
    .local v2, "property":Lcn/nubia/calendarcommon2/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 504
    const/4 v0, 0x0

    .line 510
    :goto_2
    invoke-virtual {v2}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 508
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 512
    .end local v2    # "property":Lcn/nubia/calendarcommon2/ICalendar$Property;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unfoldedIcalContent"    # Ljava/lang/String;

    .prologue
    .line 425
    sget-object v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "ruleStr"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p0, :cond_1

    .line 389
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 397
    :cond_0
    return-object v2

    .line 391
    :cond_1
    invoke-static {p0}, Lcn/nubia/calendarcommon2/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "unfoldedRuleStr":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "split":[Ljava/lang/String;
    array-length v0, v2

    .line 394
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 395
    aget-object v4, v2, v1

    invoke-static {v4}, Lcn/nubia/calendarcommon2/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 94
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "rruleStrs":[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Lcn/nubia/calendarcommon2/EventRecurrence;

    iput-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 98
    new-instance v3, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v3}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 99
    .local v3, "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    aput-object v3, v5, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    .end local v3    # "rrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    .end local v4    # "rruleStrs":[Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    invoke-static {p2}, Lcn/nubia/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 108
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 109
    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "exruleStrs":[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Lcn/nubia/calendarcommon2/EventRecurrence;

    iput-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    .line 111
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 112
    new-instance v0, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 113
    .local v0, "exrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    invoke-virtual {v0, p3}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    aput-object v0, v5, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v0    # "exrule":Lcn/nubia/calendarcommon2/EventRecurrence;
    .end local v1    # "exruleStrs":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 119
    invoke-static {p4}, Lcn/nubia/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 122
    :cond_4
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .param p0, "recurrence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 142
    const-string v6, "UTC"

    .line 143
    .local v6, "tz":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 144
    .local v7, "tzidx":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 145
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 146
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 148
    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "time":Landroid/text/format/Time;
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "rawDates":[Ljava/lang/String;
    array-length v3, v4

    .line 151
    .local v3, "n":I
    new-array v0, v3, [J

    .line 152
    .local v0, "dates":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 155
    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 163
    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/util/TimeFormatException;
    new-instance v8, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcn/nubia/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    .end local v1    # "e":Landroid/util/TimeFormatException;
    :cond_1
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Lcn/nubia/calendarcommon2/ICalendar$Component;)Z
    .locals 18
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;

    .prologue
    .line 316
    const-wide/16 v4, -0x1

    .line 317
    .local v4, "dtstart":J
    const-string v15, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 318
    const-string v15, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 320
    :cond_0
    const-string v15, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "duration":Ljava/lang/String;
    const-string v15, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 322
    .local v14, "tzid":Ljava/lang/String;
    const-string v15, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "rruleStr":Ljava/lang/String;
    const-string v15, "rdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "rdateStr":Ljava/lang/String;
    const-string v15, "exrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "exruleStr":Ljava/lang/String;
    const-string v15, "exdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "exdateStr":Ljava/lang/String;
    const-string v15, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 327
    .local v3, "allDayInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v2, 0x1

    .line 329
    .local v2, "allDay":Z
    :goto_0
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_1

    .line 330
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 331
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 332
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 334
    :cond_1
    const/4 v15, 0x0

    .line 370
    :goto_1
    return v15

    .line 327
    .end local v2    # "allDay":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 337
    .restart local v2    # "allDay":Z
    :cond_4
    new-instance v6, Lcn/nubia/calendarcommon2/ICalendar$Property;

    const-string v15, "DTSTART"

    invoke-direct {v6, v15}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 338
    .local v6, "dtstartProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    const/4 v7, 0x0

    .line 339
    .local v7, "dtstartTime":Landroid/text/format/Time;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 340
    if-nez v2, :cond_5

    .line 341
    new-instance v15, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    const-string v16, "TZID"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcn/nubia/calendarcommon2/ICalendar$Property;->addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V

    .line 343
    :cond_5
    new-instance v7, Landroid/text/format/Time;

    .end local v7    # "dtstartTime":Landroid/text/format/Time;
    invoke-direct {v7, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v7    # "dtstartTime":Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 352
    if-eqz v2, :cond_6

    .line 353
    new-instance v15, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    const-string v16, "VALUE"

    const-string v17, "DATE"

    invoke-direct/range {v15 .. v17}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcn/nubia/calendarcommon2/ICalendar$Property;->addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V

    .line 354
    const/4 v15, 0x1

    iput-boolean v15, v7, Landroid/text/format/Time;->allDay:Z

    .line 355
    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->hour:I

    .line 356
    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->minute:I

    .line 357
    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->second:I

    .line 360
    :cond_6
    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    .line 362
    new-instance v9, Lcn/nubia/calendarcommon2/ICalendar$Property;

    const-string v15, "DURATION"

    invoke-direct {v9, v15}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 363
    .local v9, "durationProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    invoke-virtual {v9, v8}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    .line 366
    const-string v15, "RRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v15, "RDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v12}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v15, "EXRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v11}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v15, "EXDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v10}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v15, 0x1

    goto :goto_1

    .line 346
    .end local v9    # "durationProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    :cond_7
    new-instance v7, Landroid/text/format/Time;

    .end local v7    # "dtstartTime":Landroid/text/format/Time;
    const-string v15, "UTC"

    invoke-direct {v7, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v7    # "dtstartTime":Landroid/text/format/Time;
    goto :goto_2
.end method

.method public static populateComponent(Landroid/database/Cursor;Lcn/nubia/calendarcommon2/ICalendar$Component;)Z
    .locals 27
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;

    .prologue
    .line 248
    const-string v24, "dtstart"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 249
    .local v8, "dtstartColumn":I
    const-string v24, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 250
    .local v12, "durationColumn":I
    const-string v24, "eventTimezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 251
    .local v23, "tzidColumn":I
    const-string v24, "rrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 252
    .local v20, "rruleColumn":I
    const-string v24, "rdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 253
    .local v18, "rdateColumn":I
    const-string v24, "exrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 254
    .local v16, "exruleColumn":I
    const-string v24, "exdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 255
    .local v14, "exdateColumn":I
    const-string v24, "allDay"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, "allDayColumn":I
    const-wide/16 v6, -0x1

    .line 259
    .local v6, "dtstart":J
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-nez v24, :cond_0

    .line 260
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 262
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "duration":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 264
    .local v22, "tzid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 265
    .local v21, "rruleStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 266
    .local v19, "rdateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 267
    .local v17, "exruleStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "exdateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    .line 270
    .local v4, "allDay":Z
    :goto_0
    const-wide/16 v24, -0x1

    cmp-long v24, v6, v24

    if-eqz v24, :cond_1

    .line 271
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 272
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 273
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 275
    :cond_1
    const/16 v24, 0x0

    .line 311
    :goto_1
    return v24

    .line 268
    .end local v4    # "allDay":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 278
    .restart local v4    # "allDay":Z
    :cond_3
    new-instance v9, Lcn/nubia/calendarcommon2/ICalendar$Property;

    const-string v24, "DTSTART"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 279
    .local v9, "dtstartProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    const/4 v10, 0x0

    .line 280
    .local v10, "dtstartTime":Landroid/text/format/Time;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 281
    if-nez v4, :cond_4

    .line 282
    new-instance v24, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    const-string v25, "TZID"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V

    .line 284
    :cond_4
    new-instance v10, Landroid/text/format/Time;

    .end local v10    # "dtstartTime":Landroid/text/format/Time;
    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v10    # "dtstartTime":Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v10, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 293
    if-eqz v4, :cond_5

    .line 294
    new-instance v24, Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    const-string v25, "VALUE"

    const-string v26, "DATE"

    invoke-direct/range {v24 .. v26}, Lcn/nubia/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->addParameter(Lcn/nubia/calendarcommon2/ICalendar$Parameter;)V

    .line 295
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v10, Landroid/text/format/Time;->allDay:Z

    .line 296
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->hour:I

    .line 297
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->minute:I

    .line 298
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->second:I

    .line 301
    :cond_5
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    .line 303
    new-instance v13, Lcn/nubia/calendarcommon2/ICalendar$Property;

    const-string v24, "DURATION"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 304
    .local v13, "durationProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    invoke-virtual {v13, v11}, Lcn/nubia/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcn/nubia/calendarcommon2/ICalendar$Component;->addProperty(Lcn/nubia/calendarcommon2/ICalendar$Property;)V

    .line 307
    const-string v24, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v24, "RDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v24, "EXRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v24, "EXDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Lcn/nubia/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 287
    .end local v13    # "durationProp":Lcn/nubia/calendarcommon2/ICalendar$Property;
    :cond_6
    new-instance v10, Landroid/text/format/Time;

    .end local v10    # "dtstartTime":Landroid/text/format/Time;
    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v10    # "dtstartTime":Landroid/text/format/Time;
    goto/16 :goto_2
.end method

.method public static populateContentValues(Lcn/nubia/calendarcommon2/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 22
    .param p0, "component"    # Lcn/nubia/calendarcommon2/ICalendar$Component;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 182
    :try_start_0
    const-string v19, "DTSTART"

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;

    move-result-object v6

    .line 184
    .local v6, "dtstartProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    invoke-virtual {v6}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "dtstart":Ljava/lang/String;
    const-string v19, "TZID"

    .line 186
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcn/nubia/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Parameter;

    move-result-object v18

    .line 188
    .local v18, "tzidParam":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    if-nez v18, :cond_3

    const/16 v17, 0x0

    .line 189
    .local v17, "tzid":Ljava/lang/String;
    :goto_0
    new-instance v16, Landroid/text/format/Time;

    if-nez v18, :cond_4

    const-string v19, "UTC"

    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 190
    .local v16, "start":Landroid/text/format/Time;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v11

    .line 191
    .local v11, "inUtc":Z
    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/text/format/Time;->allDay:Z

    .line 195
    .local v4, "allDay":Z
    if-nez v11, :cond_0

    if-eqz v4, :cond_1

    .line 196
    :cond_0
    const-string v17, "UTC"

    .line 199
    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Lcn/nubia/calendarcommon2/ICalendar$Component;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "duration":Ljava/lang/String;
    const-string v19, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceSet;->flattenProperties(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, "rrule":Ljava/lang/String;
    const-string v19, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcn/nubia/calendarcommon2/RecurrenceSet;->extractDates(Lcn/nubia/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, "rdate":Ljava/lang/String;
    const-string v19, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcn/nubia/calendarcommon2/RecurrenceSet;->flattenProperties(Lcn/nubia/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "exrule":Ljava/lang/String;
    const-string v19, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcn/nubia/calendarcommon2/ICalendar$Property;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcn/nubia/calendarcommon2/RecurrenceSet;->extractDates(Lcn/nubia/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "exdate":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 206
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 207
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 208
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 214
    :cond_2
    const/16 v19, 0x0

    .line 240
    .end local v4    # "allDay":Z
    .end local v5    # "dtstart":Ljava/lang/String;
    .end local v6    # "dtstartProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v9    # "exdate":Ljava/lang/String;
    .end local v10    # "exrule":Ljava/lang/String;
    .end local v11    # "inUtc":Z
    .end local v14    # "rdate":Ljava/lang/String;
    .end local v15    # "rrule":Ljava/lang/String;
    .end local v16    # "start":Landroid/text/format/Time;
    .end local v17    # "tzid":Ljava/lang/String;
    .end local v18    # "tzidParam":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    :goto_2
    return v19

    .line 188
    .restart local v5    # "dtstart":Ljava/lang/String;
    .restart local v6    # "dtstartProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    .restart local v18    # "tzidParam":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    .restart local v17    # "tzid":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v17

    .line 189
    goto :goto_1

    .line 217
    .restart local v4    # "allDay":Z
    .restart local v7    # "duration":Ljava/lang/String;
    .restart local v9    # "exdate":Ljava/lang/String;
    .restart local v10    # "exrule":Ljava/lang/String;
    .restart local v11    # "inUtc":Z
    .restart local v14    # "rdate":Ljava/lang/String;
    .restart local v15    # "rrule":Ljava/lang/String;
    .restart local v16    # "start":Landroid/text/format/Time;
    :cond_5
    if-eqz v4, :cond_6

    .line 218
    const-string v19, "UTC"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 220
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 221
    .local v12, "millis":J
    const-string v19, "dtstart"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-nez v19, :cond_7

    .line 226
    const/16 v19, 0x0

    goto :goto_2

    .line 229
    :cond_7
    const-string v19, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v19, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v19, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v19, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v19, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v19, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v20, "allDay"

    if-eqz v4, :cond_8

    const/16 v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 235
    :cond_8
    const/16 v19, 0x0

    goto :goto_3

    .line 237
    .end local v4    # "allDay":Z
    .end local v5    # "dtstart":Ljava/lang/String;
    .end local v6    # "dtstartProperty":Lcn/nubia/calendarcommon2/ICalendar$Property;
    .end local v7    # "duration":Ljava/lang/String;
    .end local v9    # "exdate":Ljava/lang/String;
    .end local v10    # "exrule":Ljava/lang/String;
    .end local v11    # "inUtc":Z
    .end local v12    # "millis":J
    .end local v14    # "rdate":Ljava/lang/String;
    .end local v15    # "rrule":Ljava/lang/String;
    .end local v16    # "start":Landroid/text/format/Time;
    .end local v17    # "tzid":Ljava/lang/String;
    .end local v18    # "tzidParam":Lcn/nubia/calendarcommon2/ICalendar$Parameter;
    :catch_0
    move-exception v8

    .line 239
    .local v8, "e":Landroid/util/TimeFormatException;
    const-string v19, "RecurrenceSet"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to parse event: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendarcommon2/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "foldedIcalContent"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-object v0, Lcn/nubia/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rrules:[Lcn/nubia/calendarcommon2/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
