.class public Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;
.super Ljava/lang/Object;
.source "EventViewUtils.java"


# static fields
.field public static final REMINDER_TIME_VALUE:Ljava/lang/String; = "reminder_time_value"

.field private static final TAG:Ljava/lang/String; = "EventViewUtils"

.field public static mReminderIndex:I

.field public static mReminderMinutes:Landroid/widget/TextView;

.field public static mReminderMinutesView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "minutes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 190
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 199
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_1

    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;ILandroid/widget/AdapterView$OnItemSelectedListener;ZZ)Z
    .locals 19
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .param p8, "newReminder"    # Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;
    .param p9, "maxReminders"    # I
    .param p10, "onItemSelected"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p11, "isReceiverLayVisible"    # Z
    .param p12, "isFromFragment"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            "I",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 384
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p4, "minuteValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "minuteLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "methodValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p7, "methodLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p9

    if-lt v0, v1, :cond_0

    .line 385
    const/16 v16, 0x0

    .line 545
    :goto_0
    return v16

    .line 388
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 389
    .local v5, "itemSize":I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 390
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x7f110143

    .line 391
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 392
    .local v6, "parent":Landroid/widget/LinearLayout;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v16, 0x7f03004f

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 396
    .local v9, "reminderItem":Landroid/widget/LinearLayout;
    const v16, 0x7f11015c

    .line 397
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 398
    .local v10, "reminderMinutesOne":Landroid/widget/LinearLayout;
    const v16, 0x7f11015f

    .line 399
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 400
    .local v11, "reminderMinutesTwo":Landroid/widget/FrameLayout;
    if-eqz p12, :cond_6

    .line 402
    if-eqz v10, :cond_1

    .line 403
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    :cond_1
    if-eqz v11, :cond_2

    .line 407
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 409
    :cond_2
    if-eqz v6, :cond_3

    .line 410
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    :cond_3
    const v16, 0x7f11015e

    .line 415
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 416
    .local v12, "reminderRemoveButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 425
    :cond_4
    const v16, 0x7f11015d

    .line 426
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 427
    .local v13, "spinner":Landroid/widget/TextView;
    sput-object v13, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    .line 429
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v16

    .line 428
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v2

    .line 430
    .local v2, "index":I
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    sput v2, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 433
    const v16, 0x7f110160

    .line 434
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 436
    .local v14, "spinner1":Landroid/widget/Spinner;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v14, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    .line 439
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v16

    .line 438
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v3

    .line 440
    .local v3, "index1":I
    invoke-virtual {v14, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 445
    if-eqz p11, :cond_5

    .line 446
    const v16, 0x7f110163

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    .line 447
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 448
    const v16, 0x7f110164

    .line 449
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 450
    .local v15, "tv":Landroid/widget/TextView;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :goto_1
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 462
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, "phoneStr":Ljava/lang/String;
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "phoneNumbers":[Ljava/lang/String;
    if-eqz v7, :cond_d

    array-length v0, v7

    move/from16 v16, v0

    if-lez v16, :cond_d

    .line 465
    array-length v0, v7

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    aget-object v18, v7, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 454
    .end local v7    # "phoneNumbers":[Ljava/lang/String;
    .end local v8    # "phoneStr":Ljava/lang/String;
    .end local v15    # "tv":Landroid/widget/TextView;
    :cond_5
    const v16, 0x7f110163

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    .line 455
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 456
    const v16, 0x7f110164

    .line 457
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 458
    .restart local v15    # "tv":Landroid/widget/TextView;
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 474
    .end local v2    # "index":I
    .end local v3    # "index1":I
    .end local v12    # "reminderRemoveButton":Landroid/widget/ImageButton;
    .end local v13    # "spinner":Landroid/widget/TextView;
    .end local v14    # "spinner1":Landroid/widget/Spinner;
    .end local v15    # "tv":Landroid/widget/TextView;
    :cond_6
    if-eqz v10, :cond_7

    .line 475
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    :cond_7
    if-eqz v11, :cond_8

    .line 479
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 482
    :cond_8
    if-eqz v6, :cond_9

    .line 483
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    :cond_9
    const v16, 0x7f110162

    .line 488
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 489
    .restart local v12    # "reminderRemoveButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    const v16, 0x7f110160

    .line 497
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 499
    .local v13, "spinner":Landroid/widget/Spinner;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v13, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    .line 502
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v16

    .line 501
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v2

    .line 503
    .restart local v2    # "index":I
    invoke-virtual {v13, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 505
    if-eqz p10, :cond_a

    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 507
    move-object/from16 v0, p10

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 509
    :cond_a
    const v16, 0x7f110161

    .line 510
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 511
    .restart local v14    # "spinner1":Landroid/widget/Spinner;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    .line 514
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v16

    .line 513
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->findMethodInReminderList(Ljava/util/ArrayList;I)I

    move-result v2

    .line 515
    invoke-virtual {v14, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 517
    if-eqz p10, :cond_b

    .line 518
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 519
    move-object/from16 v0, p10

    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 521
    :cond_b
    if-eqz p11, :cond_c

    .line 522
    const v16, 0x7f110163

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    .line 523
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const v16, 0x7f110164

    .line 525
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 526
    .restart local v15    # "tv":Landroid/widget/TextView;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :goto_3
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 535
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->getPhoneNumbers()Ljava/lang/String;

    move-result-object v8

    .line 536
    .restart local v8    # "phoneStr":Ljava/lang/String;
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 537
    .restart local v7    # "phoneNumbers":[Ljava/lang/String;
    if-eqz v7, :cond_d

    array-length v0, v7

    move/from16 v16, v0

    if-lez v16, :cond_d

    .line 538
    array-length v0, v7

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    aget-object v18, v7, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 528
    .end local v7    # "phoneNumbers":[Ljava/lang/String;
    .end local v8    # "phoneStr":Ljava/lang/String;
    .end local v15    # "tv":Landroid/widget/TextView;
    :cond_c
    const v16, 0x7f110163

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    .line 529
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 530
    const v16, 0x7f110164

    .line 531
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 532
    .restart local v15    # "tv":Landroid/widget/TextView;
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 544
    .end local v13    # "spinner":Landroid/widget/Spinner;
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public static cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutes:Landroid/widget/TextView;

    .line 67
    sput-object v0, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderMinutesView:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method public static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I
    .param p2, "abbrev"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    .local v3, "resources":Landroid/content/res/Resources;
    rem-int/lit8 v5, p1, 0x3c

    if-eqz v5, :cond_1

    .line 80
    move v4, p1

    .line 81
    .local v4, "value":I
    if-eqz p2, :cond_0

    .line 82
    const v2, 0x7f0b0004

    .line 93
    .local v2, "resId":I
    :goto_0
    const-string v1, ""

    .line 95
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 84
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_0
    const v2, 0x7f0b0005

    .restart local v2    # "resId":I
    goto :goto_0

    .line 86
    .end local v2    # "resId":I
    .end local v4    # "value":I
    :cond_1
    rem-int/lit16 v5, p1, 0x5a0

    if-eqz v5, :cond_2

    .line 87
    div-int/lit8 v4, p1, 0x3c

    .line 88
    .restart local v4    # "value":I
    const v2, 0x7f0b0003

    .restart local v2    # "resId":I
    goto :goto_0

    .line 90
    .end local v2    # "resId":I
    .end local v4    # "value":I
    :cond_2
    div-int/lit16 v4, p1, 0x5a0

    .line 91
    .restart local v4    # "value":I
    const v2, 0x7f0b0001

    .restart local v2    # "resId":I
    goto :goto_0

    .line 96
    .restart local v1    # "format":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static findMethodInReminderList(Ljava/util/ArrayList;I)I
    .locals 2
    .param p1, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 140
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_0
    return v0
.end method

.method public static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "minutes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 114
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 116
    const/4 v0, 0x1

    .line 120
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v0

    .line 118
    .restart local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPerMonthLunarEvent(Ljava/lang/String;)Z
    .locals 12
    .param p0, "rdate"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v7, 0x0

    .line 568
    if-nez p0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v7

    .line 571
    :cond_1
    const/4 v0, 0x0

    .line 572
    .local v0, "fristDate":I
    const/4 v6, 0x1

    .line 573
    .local v6, "secondDate":I
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "lunarDate":[Ljava/lang/String;
    array-length v9, v1

    if-le v9, v6, :cond_0

    .line 577
    aget-object v9, v1, v0

    .line 578
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 577
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 579
    .local v5, "lunarPreEventYear":I
    aget-object v9, v1, v0

    .line 580
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 579
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 581
    .local v4, "lunarPreEventMonth":I
    aget-object v9, v1, v6

    .line 582
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 581
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 583
    .local v3, "lunarNextEventYear":I
    aget-object v9, v1, v6

    .line 584
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 583
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "lunarNextEventMonth":I
    if-ne v5, v3, :cond_2

    move v7, v8

    .line 586
    goto :goto_0

    .line 587
    :cond_2
    add-int/lit8 v9, v5, 0x1

    if-ne v9, v3, :cond_0

    .line 588
    const/16 v9, 0xc

    if-ne v4, v9, :cond_0

    if-ne v2, v8, :cond_0

    move v7, v8

    .line 589
    goto :goto_0
.end method

.method public static isPerYearLunarEvent(Ljava/lang/String;)Z
    .locals 8
    .param p0, "rdate"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    .line 597
    if-nez p0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v5

    .line 600
    :cond_1
    const/4 v0, 0x0

    .line 601
    .local v0, "fristDate":I
    const/4 v4, 0x1

    .line 602
    .local v4, "secondDate":I
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "lunarDate":[Ljava/lang/String;
    array-length v6, v1

    if-le v6, v4, :cond_0

    .line 606
    aget-object v6, v1, v0

    .line 607
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 606
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 608
    .local v3, "lunarPreEventYear":I
    aget-object v6, v1, v4

    .line 609
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 610
    .local v2, "lunarNextEventYear":I
    add-int/lit8 v6, v3, 0x1

    if-ne v6, v2, :cond_0

    .line 611
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static reduceMethodList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p2, "allowedMethods"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "allowedStrings":[Ljava/lang/String;
    array-length v6, v0

    new-array v1, v6, [I

    .line 229
    .local v1, "allowedValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 231
    :try_start_0
    aget-object v6, v0, v2

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v4

    .line 233
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "EventViewUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad allowed-strings list: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 242
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 245
    .local v5, "val":I
    array-length v6, v1

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_2

    .line 246
    aget v6, v1, v3

    if-ne v5, v6, :cond_4

    .line 250
    :cond_2
    if-gez v3, :cond_3

    .line 251
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 245
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method public static reminderItemsToReminders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "reminderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, "reminderMinuteValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "reminderMethodValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "wrongFormatPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    .local v2, "len":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v6, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 170
    .local v1, "layout":Landroid/widget/LinearLayout;
    const v7, 0x7f110161

    .line 171
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 172
    .local v4, "methodSpinner":Landroid/widget/Spinner;
    sget v7, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 173
    const/4 v7, 0x0

    sput v7, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    .line 175
    :cond_0
    sget v7, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->mReminderIndex:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 177
    .local v5, "minutes":I
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 176
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 178
    .local v3, "method":I
    invoke-static {v5, v3}, Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;->valueOf(II)Lcn/nubia/calendar/model/CalendarEventModel$ReminderEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "method":I
    .end local v4    # "methodSpinner":Landroid/widget/Spinner;
    .end local v5    # "minutes":I
    :cond_1
    return-object v6
.end method

.method private static setReminderSpinnerLabels(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/Spinner;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 267
    const v2, 0x7f0300b4

    .line 268
    .local v2, "resource":I
    new-instance v0, Lcn/nubia/calendar/SpinnerArrayAdapter;

    invoke-direct {v0, p0, v2, p2}, Lcn/nubia/calendar/SpinnerArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 270
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 271
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    return-void
.end method

.method public static updateAddReminderButton(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p2, "maxReminders"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    const/16 v2, 0x8

    .line 554
    const v1, 0x7f110144

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 555
    .local v0, "reminderAddButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 558
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 561
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
