.class public Lcn/nubia/calendar/model/CalendarEventModel;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;,
        Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarEventModel"


# instance fields
.field public mAccessLevel:I

.field public mAllDay:Z

.field public mAttendeesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/model/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailability:I

.field public mCalendarAccessLevel:I

.field public mCalendarAllowedAttendeeTypes:Ljava/lang/String;

.field public mCalendarAllowedAvailability:Ljava/lang/String;

.field public mCalendarAllowedReminders:Ljava/lang/String;

.field public mCalendarColor:I

.field private mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mCalendarMaxReminders:I

.field public mDefaultReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;

.field public mDuration:Ljava/lang/String;

.field public mEnd:J

.field public mEventStatus:I

.field public mGuestsCanInviteOthers:Z

.field public mGuestsCanModify:Z

.field public mGuestsCanSeeGuests:Z

.field public mHasAlarm:Z

.field public mHasAttendeeData:Z

.field public mId:J

.field public mIsFirstEventInSeries:Z

.field private mIsFirstEventInSeriesChanged:Z

.field public mIsOrganizer:Z

.field public mLocation:Ljava/lang/String;

.field public mModelUpdatedWithEventCursor:Z

.field private mModifyWhich:I

.field public mOrganizer:Ljava/lang/String;

.field public mOrganizerCanRespond:Z

.field public mOrganizerDisplayName:Ljava/lang/String;

.field public mOriginalAllDay:Ljava/lang/Boolean;

.field public mOriginalEnd:J

.field public mOriginalId:J

.field public mOriginalStart:J

.field public mOriginalSyncId:Ljava/lang/String;

.field public mOriginalTime:Ljava/lang/Long;

.field public mOwnerAccount:Ljava/lang/String;

.field public mOwnerAttendeeId:I

.field public mRdate:Ljava/lang/String;

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mRrule:Ljava/lang/String;

.field public mSelfAttendeeStatus:I

.field public mStart:J

.field public mSyncAccount:Ljava/lang/String;

.field public mSyncAccountType:Ljava/lang/String;

.field public mSyncId:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTimezone2:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field private mWrongFormatEmailTip:Ljava/lang/String;

.field private mWrongFormatPhoneTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 287
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 288
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 291
    iput v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarColor:I

    .line 297
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 299
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 302
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 303
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 304
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 307
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 308
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 309
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 313
    iput-boolean v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    .line 314
    iput-boolean v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 319
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    .line 320
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 325
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    .line 326
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 327
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 330
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 331
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 332
    iput v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    .line 337
    iput-boolean v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    .line 338
    iput v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 339
    iput v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    .line 340
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 341
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    .line 342
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 343
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 344
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    .line 345
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 346
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 348
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 349
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    .line 351
    iput v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    .line 357
    iput v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 426
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    invoke-direct {p0}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 431
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 434
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_default_reminder"

    const-string v4, "15"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "defaultReminder":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "defaultReminderMins":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 440
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 441
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(I)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(I)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 447
    invoke-direct/range {p0 .. p1}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>(Landroid/content/Context;)V

    .line 449
    if-nez p2, :cond_1

    .line 505
    :cond_0
    return-void

    .line 452
    :cond_1
    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 454
    move-object/from16 v0, p0

    iput-object v10, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 457
    :cond_2
    const-string v11, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "location":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 459
    move-object/from16 v0, p0

    iput-object v7, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 461
    :cond_3
    const/4 v3, 0x0

    .line 462
    .local v3, "description":Ljava/lang/String;
    sget-object v11, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->CREATE_EVENT_ACTION:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 463
    const-string v11, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 465
    :cond_4
    if-eqz v3, :cond_5

    .line 466
    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 469
    :cond_5
    const-string v11, "availability"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 470
    .local v2, "availability":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_6

    .line 471
    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    .line 474
    :cond_6
    const-string v11, "accessLevel"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 475
    .local v1, "accessLevel":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_8

    .line 476
    if-lez v1, :cond_7

    .line 479
    add-int/lit8 v1, v1, -0x1

    .line 481
    :cond_7
    move-object/from16 v0, p0

    iput v1, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 484
    :cond_8
    const-string v11, "rrule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, "rrule":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 486
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 489
    :cond_9
    const-string v11, "rdate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "rdate":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 491
    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 493
    :cond_a
    const-string v11, "android.intent.extra.EMAIL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "emails":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 495
    const-string v11, "[ ,;]"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "emailArray":[Ljava/lang/String;
    array-length v12, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v4, v5, v11

    .line 497
    .local v4, "email":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "@"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 498
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    new-instance v14, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    const-string v15, ""

    invoke-direct {v14, v15, v4}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v4, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 526
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 530
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V
    .locals 2
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .prologue
    .line 588
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method

.method public addAttendees(Ljava/lang/String;Lcn/nubia/common/Rfc822Validator;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "attendees"    # Ljava/lang/String;
    .param p2, "validator"    # Lcn/nubia/common/Rfc822Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/common/Rfc822Validator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .line 594
    .local p3, "wrongFormatEmailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcn/nubia/common/Rfc822Validator;Ljava/util/ArrayList;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 596
    .local v1, "addresses":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 597
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 598
    .local v0, "address":Landroid/text/util/Rfc822Token;
    new-instance v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .local v2, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    iget-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 603
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/model/CalendarEventModel;->addAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 605
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v2    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    return-void
.end method

.method protected checkOriginalModelFields(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 6
    .param p1, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    const/4 v0, 0x0

    .line 911
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eq v1, v2, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_e

    .line 915
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 922
    :cond_2
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 926
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-ne v1, v2, :cond_0

    .line 929
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    if-ne v1, v2, :cond_0

    .line 932
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanSeeGuests:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-ne v1, v2, :cond_0

    .line 935
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    if-ne v1, v2, :cond_0

    .line 938
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 941
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-ne v1, v2, :cond_0

    .line 944
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    if-ne v1, v2, :cond_0

    .line 947
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    if-ne v1, v2, :cond_0

    .line 950
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 953
    iget-boolean v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    iget-boolean v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    if-ne v1, v2, :cond_0

    .line 957
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 958
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 965
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_10

    .line 966
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 973
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_11

    .line 974
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 981
    :cond_5
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 982
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 989
    :cond_6
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_13

    .line 990
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 997
    :cond_7
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    if-ne v1, v2, :cond_0

    .line 1000
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    if-ne v1, v2, :cond_0

    .line 1003
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 1004
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1011
    :cond_8
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 1012
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1019
    :cond_9
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 1020
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1027
    :cond_a
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1028
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1035
    :cond_b
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 1036
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1043
    :cond_c
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    if-ne v1, v2, :cond_0

    .line 1047
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 1048
    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1055
    :cond_d
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 1059
    iget v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    iget v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    if-ne v1, v2, :cond_0

    .line 1062
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 918
    :cond_e
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 961
    :cond_f
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 969
    :cond_10
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 977
    :cond_11
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 985
    :cond_12
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 993
    :cond_13
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 1007
    :cond_14
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 1015
    :cond_15
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 1023
    :cond_16
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 1031
    :cond_17
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 1039
    :cond_18
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 1051
    :cond_19
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 534
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 535
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 536
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    .line 538
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 539
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 540
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 541
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 543
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 544
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 545
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 546
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 547
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    .line 548
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 549
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 550
    iput-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    .line 551
    iput-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 553
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    .line 554
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 555
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    .line 556
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 557
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 558
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 559
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 560
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 561
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    .line 563
    iput-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    .line 564
    iput v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 565
    iput v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    .line 566
    iput-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    .line 567
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 568
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 569
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 571
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    .line 572
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 573
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 574
    iput v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    .line 575
    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    .line 576
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 577
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    .line 578
    iput-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 579
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 580
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 581
    iput-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 584
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 585
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 695
    if-ne p0, p1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v1

    .line 698
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 699
    goto :goto_0

    .line 701
    :cond_2
    instance-of v3, p1, Lcn/nubia/calendar/model/CalendarEventModel;

    if-nez v3, :cond_3

    move v1, v2

    .line 702
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 705
    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel;

    .line 706
    .local v0, "other":Lcn/nubia/calendar/model/CalendarEventModel;
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/CalendarEventModel;->checkOriginalModelFields(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 707
    goto :goto_0

    .line 710
    :cond_4
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 711
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 712
    goto :goto_0

    .line 714
    :cond_5
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 715
    goto :goto_0

    .line 718
    :cond_6
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 719
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 720
    goto :goto_0

    .line 722
    :cond_7
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 723
    goto :goto_0

    .line 726
    :cond_8
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 727
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 728
    goto :goto_0

    .line 730
    :cond_9
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 731
    goto :goto_0

    .line 734
    :cond_a
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 735
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 736
    goto :goto_0

    .line 738
    :cond_b
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 739
    goto :goto_0

    .line 742
    :cond_c
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    move v1, v2

    .line 743
    goto :goto_0

    .line 745
    :cond_d
    iget-boolean v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    iget-boolean v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 746
    goto :goto_0

    .line 748
    :cond_e
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f

    move v1, v2

    .line 749
    goto/16 :goto_0

    .line 752
    :cond_f
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    move v1, v2

    .line 753
    goto/16 :goto_0

    .line 755
    :cond_10
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_11

    move v1, v2

    .line 756
    goto/16 :goto_0

    .line 759
    :cond_11
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v6, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_12

    move v1, v2

    .line 760
    goto/16 :goto_0

    .line 763
    :cond_12
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 764
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v3, :cond_14

    move v1, v2

    .line 765
    goto/16 :goto_0

    .line 767
    :cond_13
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move v1, v2

    .line 768
    goto/16 :goto_0

    .line 771
    :cond_14
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 772
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_16

    move v1, v2

    .line 773
    goto/16 :goto_0

    .line 775
    :cond_15
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move v1, v2

    .line 776
    goto/16 :goto_0

    .line 779
    :cond_16
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 780
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 781
    goto/16 :goto_0

    .line 783
    :cond_17
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 784
    goto/16 :goto_0
.end method

.method public getAttendeesString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v1, "b":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 615
    .local v0, "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v3, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 616
    .local v3, "name":Ljava/lang/String;
    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 617
    .local v2, "email":Ljava/lang/String;
    iget v6, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "status":Ljava/lang/String;
    const-string v6, "name:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v6, " email:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v6, " status:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 622
    .end local v0    # "attendee":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

    return-object v0
.end method

.method public getModifyWhich()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModifyWhich:I

    return v0
.end method

.method public getWrongFormatEmailTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mWrongFormatEmailTip:Ljava/lang/String;

    return-object v0
.end method

.method public getWrongFormatPhoneTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mWrongFormatPhoneTip:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/4 v5, 0x0

    .line 627
    const/16 v0, 0x1f

    .line 628
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 629
    .local v1, "result":I
    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 630
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    move v2, v5

    .line 633
    :goto_1
    add-int v1, v6, v2

    .line 634
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 635
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v5

    .line 636
    :goto_2
    add-int v1, v6, v2

    .line 637
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v5

    .line 638
    :goto_3
    add-int v1, v6, v2

    .line 639
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 640
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 641
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 642
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v6, v2

    .line 643
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 644
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 645
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarAccessLevel:I

    add-int v1, v2, v6

    .line 646
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v6, v2

    .line 647
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_a
    add-int v1, v6, v2

    .line 648
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 649
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eqz v2, :cond_b

    move v2, v3

    :goto_b
    add-int v1, v6, v2

    .line 650
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_c

    :goto_c
    add-int v1, v2, v3

    .line 651
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v5

    .line 652
    :goto_d
    add-int v1, v3, v2

    .line 653
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v5

    .line 654
    :goto_e
    add-int v1, v3, v2

    .line 655
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v5

    .line 656
    :goto_f
    add-int v1, v3, v2

    .line 657
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    add-int v1, v2, v3

    .line 658
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v5

    .line 659
    :goto_10
    add-int v1, v3, v2

    .line 660
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    add-int v1, v2, v3

    .line 661
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    add-int v1, v2, v3

    .line 663
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v2, :cond_11

    move v2, v5

    .line 664
    :goto_11
    add-int v1, v3, v2

    .line 665
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v5

    .line 666
    :goto_12
    add-int v1, v3, v2

    .line 667
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v2, :cond_13

    move v2, v5

    .line 668
    :goto_13
    add-int v1, v3, v2

    .line 669
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v5

    :goto_14
    add-int v1, v3, v2

    .line 670
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v5

    :goto_15
    add-int v1, v3, v2

    .line 671
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSelfAttendeeStatus:I

    add-int v1, v2, v3

    .line 672
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAttendeeId:I

    add-int v1, v2, v3

    .line 673
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    iget-wide v8, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    add-int v1, v2, v3

    .line 674
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v5

    .line 675
    :goto_16
    add-int v1, v3, v2

    .line 676
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v5

    .line 678
    :goto_17
    add-int v1, v3, v2

    .line 679
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v5

    :goto_18
    add-int v1, v3, v2

    .line 680
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v5

    .line 681
    :goto_19
    add-int v1, v3, v2

    .line 682
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v2, :cond_1a

    move v2, v5

    .line 683
    :goto_1a
    add-int v1, v3, v2

    .line 684
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_1b

    move v2, v5

    :goto_1b
    add-int v1, v3, v2

    .line 685
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAvailability:I

    add-int v1, v2, v3

    .line 686
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v3, :cond_1c

    :goto_1c
    add-int v1, v2, v5

    .line 687
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAccessLevel:I

    add-int v1, v2, v3

    .line 688
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEventStatus:I

    add-int v1, v2, v3

    .line 689
    return v1

    :cond_0
    move v2, v4

    .line 629
    goto/16 :goto_0

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/model/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 635
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 636
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 637
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 638
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :cond_4
    move v2, v4

    .line 640
    goto/16 :goto_4

    :cond_5
    move v2, v4

    .line 641
    goto/16 :goto_5

    :cond_6
    move v2, v4

    .line 642
    goto/16 :goto_6

    :cond_7
    move v2, v4

    .line 643
    goto/16 :goto_7

    :cond_8
    move v2, v4

    .line 644
    goto/16 :goto_8

    :cond_9
    move v2, v4

    .line 646
    goto/16 :goto_9

    :cond_a
    move v2, v4

    .line 647
    goto/16 :goto_a

    :cond_b
    move v2, v4

    .line 649
    goto/16 :goto_b

    :cond_c
    move v3, v4

    .line 650
    goto/16 :goto_c

    .line 651
    :cond_d
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 652
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 653
    :cond_e
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 654
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 655
    :cond_f
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 656
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 658
    :cond_10
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 659
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 663
    :cond_11
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 664
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 665
    :cond_12
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 666
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 667
    :cond_13
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 668
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 669
    :cond_14
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 670
    :cond_15
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 674
    :cond_16
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 675
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 676
    :cond_17
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 678
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 679
    :cond_18
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 680
    :cond_19
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 681
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_19

    .line 682
    :cond_1a
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 683
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1a

    .line 684
    :cond_1b
    iget-object v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1b

    .line 686
    :cond_1c
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto/16 :goto_1c
.end method

.method public isFirstEventInSeriesChanged()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeriesChanged:Z

    return v0
.end method

.method public isUnchanged(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 10
    .param p1, "originalModel"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 796
    if-ne p0, p1, :cond_1

    move v2, v3

    .line 898
    :cond_0
    :goto_0
    return v2

    .line 799
    :cond_1
    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/model/CalendarEventModel;->checkOriginalModelFields(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 808
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 815
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 816
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    :cond_3
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 824
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    :cond_4
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 832
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    :cond_5
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalEnd:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 842
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalStart:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 848
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 853
    :cond_6
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 855
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 856
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 857
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_7
    move v1, v3

    .line 858
    .local v1, "syncIdNotReferenced":Z
    :goto_1
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_8

    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_13

    :cond_8
    move v0, v3

    .line 860
    .local v0, "localIdNotReferenced":Z
    :goto_2
    if-eqz v1, :cond_9

    if-nez v0, :cond_0

    .line 868
    .end local v0    # "localIdNotReferenced":Z
    .end local v1    # "syncIdNotReferenced":Z
    :cond_9
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 869
    iget-object v4, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 870
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 871
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_a
    move v1, v3

    .line 872
    .restart local v1    # "syncIdNotReferenced":Z
    :goto_3
    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_b

    iget-wide v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    :cond_b
    move v0, v3

    .line 874
    .restart local v0    # "localIdNotReferenced":Z
    :goto_4
    if-eqz v1, :cond_c

    if-nez v0, :cond_0

    .line 886
    .end local v0    # "localIdNotReferenced":Z
    .end local v1    # "syncIdNotReferenced":Z
    :cond_c
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

    if-eqz v4, :cond_d

    .line 887
    invoke-virtual {p1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 888
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v4

    .line 889
    invoke-virtual {p1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getColorItem()Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    move-result-object v5

    .line 888
    invoke-virtual {v4, v5}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getPicturePath()Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-virtual {p1}, Lcn/nubia/calendar/model/CalendarEventModel;->getCalendarCustomEventModel()Lcn/nubia/calendar/model/CalendarCustomEventModel;

    move-result-object v5

    .line 894
    invoke-virtual {v5}, Lcn/nubia/calendar/model/CalendarCustomEventModel;->getPicturePath()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_d
    move v2, v3

    .line 898
    goto/16 :goto_0

    .line 811
    :cond_e
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 819
    :cond_f
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    .line 827
    :cond_10
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 835
    :cond_11
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_0

    :cond_12
    move v1, v2

    .line 857
    goto/16 :goto_1

    .restart local v1    # "syncIdNotReferenced":Z
    :cond_13
    move v0, v2

    .line 858
    goto/16 :goto_2

    .line 864
    .end local v1    # "syncIdNotReferenced":Z
    :cond_14
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_0

    :cond_15
    move v1, v2

    .line 871
    goto/16 :goto_3

    .restart local v1    # "syncIdNotReferenced":Z
    :cond_16
    move v0, v2

    .line 872
    goto :goto_4

    .line 878
    .end local v1    # "syncIdNotReferenced":Z
    :cond_17
    iget-object v4, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    iget-object v5, p1, Lcn/nubia/calendar/model/CalendarEventModel;->mRdate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-wide v2, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalizeReminders()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1071
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v11, v14, :cond_1

    .line 1132
    :cond_0
    return v14

    .line 1076
    :cond_1
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1079
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v12, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 1080
    .local v7, "prev":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1081
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    .line 1082
    .local v0, "cur":Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    invoke-virtual {v7, v0}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->equalsNoPhones(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1087
    invoke-virtual {v0}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "curPhones":Ljava/lang/String;
    invoke-virtual {v7}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v8

    .line 1090
    .local v8, "prevPhones":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1092
    move-object v1, v8

    .line 1099
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1100
    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1101
    .local v6, "phoneNumbers":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .local v5, "phoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    array-length v11, v6

    if-lez v11, :cond_5

    .line 1105
    array-length v12, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_5

    aget-object v4, v6, v11

    .line 1106
    .local v4, "phone":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1107
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1094
    .end local v4    # "phone":Ljava/lang/String;
    .end local v5    # "phoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "phoneNumbers":[Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1112
    .restart local v5    # "phoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "phoneNumbers":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1113
    .local v10, "size":I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1114
    .local v9, "sb":Ljava/lang/StringBuffer;
    if-lez v10, :cond_8

    .line 1115
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v10, :cond_7

    .line 1116
    add-int/lit8 v11, v10, -0x1

    if-ne v3, v11, :cond_6

    .line 1117
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1115
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1119
    :cond_6
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1122
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->setPhoneNumbers(Ljava/lang/String;)V

    .line 1127
    .end local v3    # "j":I
    .end local v5    # "phoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "phoneNumbers":[Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "size":I
    :cond_8
    iget-object v11, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1129
    .end local v1    # "curPhones":Ljava/lang/String;
    .end local v8    # "prevPhones":Ljava/lang/String;
    :cond_9
    move-object v7, v0

    .line 1080
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method public removeAttendee(Lcn/nubia/calendar/model/CalendarEventModel$Attendee;)V
    .locals 2
    .param p1, "attendee"    # Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    return-void
.end method

.method public setCalendarCustomEventModel(Lcn/nubia/calendar/model/CalendarCustomEventModel;)V
    .locals 0
    .param p1, "calendarCustomEventModel"    # Lcn/nubia/calendar/model/CalendarCustomEventModel;

    .prologue
    .line 419
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarCustomEventModel:Lcn/nubia/calendar/model/CalendarCustomEventModel;

    .line 420
    return-void
.end method

.method public setFirstEventInSeriesChanged(Z)V
    .locals 0
    .param p1, "isFirstEventInSeriesChanged"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeriesChanged:Z

    .line 409
    return-void
.end method

.method public setModifyWhich(I)V
    .locals 0
    .param p1, "modifyWhich"    # I

    .prologue
    .line 397
    iput p1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mModifyWhich:I

    .line 398
    return-void
.end method

.method public setWrongFormatEmailTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "wrongFormatEmailTip"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mWrongFormatEmailTip:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setWrongFormatPhoneTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "wrongFormatPhoneTip"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarEventModel;->mWrongFormatPhoneTip:Ljava/lang/String;

    .line 376
    return-void
.end method
