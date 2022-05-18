.class public Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "EventViewReminderMethodActivity.java"


# static fields
.field public static final REMINDER_METHOD_INDEX:Ljava/lang/String; = "reminder_method_index"

.field public static final REMINDER_METHOD_NAME:Ljava/lang/String; = "reminder_method_name"

.field public static final REMINDER_METHOD_VALUE:Ljava/lang/String; = "reminder_method_value"


# instance fields
.field private foregroundColor:I

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private getReminderTimeCheckIdByTime(I)I
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 454
    const v0, 0x7f11024e

    .line 455
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    return v0

    .line 457
    :pswitch_0
    const v0, 0x7f11024e

    .line 458
    goto :goto_0

    .line 460
    :pswitch_1
    const v0, 0x7f11024f

    .line 461
    goto :goto_0

    .line 463
    :pswitch_2
    const v0, 0x7f110250

    .line 464
    goto :goto_0

    .line 466
    :pswitch_3
    const v0, 0x7f110251

    .line 467
    goto :goto_0

    .line 469
    :pswitch_4
    const v0, 0x7f110252

    .line 470
    goto :goto_0

    .line 472
    :pswitch_5
    const v0, 0x7f110253

    .line 473
    goto :goto_0

    .line 475
    :pswitch_6
    const v0, 0x7f110254

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onBindView()V
    .locals 25

    .prologue
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 75
    .local v6, "intent":Landroid/content/Intent;
    const-string v22, "methodName"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 76
    .local v7, "method":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->finish()V

    .line 79
    :cond_0
    const/4 v5, 0x1

    .line 80
    .local v5, "index":I
    const v22, 0x7f11024e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 81
    .local v8, "radioButton1":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_1

    .line 82
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 86
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 87
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "firstIndex":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 89
    .local v20, "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v21, "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 92
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 108
    const v22, 0x7f11024f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 109
    .local v11, "radioButton2":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_2

    .line 110
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 114
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 115
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 116
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 117
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 137
    const v22, 0x7f110250

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    .line 138
    .local v12, "radioButton3":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_3

    .line 139
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 143
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 144
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 145
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 146
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 147
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 166
    const v22, 0x7f110251

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    .line 167
    .local v13, "radioButton4":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_4

    .line 168
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 173
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 174
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 175
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 176
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 194
    const v22, 0x7f110252

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    .line 195
    .local v14, "radioButton5":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_5

    .line 196
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 200
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 201
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 202
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 203
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 207
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 223
    const v22, 0x7f110253

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    .line 224
    .local v15, "radioButton6":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_6

    .line 225
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 229
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_16

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 230
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 231
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 232
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 236
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 252
    const v22, 0x7f110254

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RadioButton;

    .line 253
    .local v16, "radioButton7":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_7

    .line 254
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 258
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_18

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 259
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 260
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 261
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 265
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 281
    const v22, 0x7f110253

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    .line 282
    .local v17, "radioButton8":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_8

    .line 283
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 287
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 288
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 289
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 290
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 294
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_8
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 311
    const v22, 0x7f110253

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    .line 312
    .local v18, "radioButton9":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_9

    .line 313
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 317
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1c

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 318
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 319
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 320
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 321
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 324
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_9
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 340
    const v22, 0x7f110253

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 341
    .local v9, "radioButton10":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_a

    .line 342
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 346
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1e

    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 347
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 348
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 349
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 350
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 353
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_a
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 369
    const v22, 0x7f110253

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 370
    .local v10, "radioButton11":Landroid/widget/RadioButton;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v5, v0, :cond_b

    .line 371
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 375
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_20

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 376
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 377
    .restart local v4    # "firstIndex":I
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 378
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 379
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 382
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_b
    :goto_a
    const-string v22, "reminder_method_value"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 398
    .local v19, "reminderMethodIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getReminderTimeCheckIdByTime(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioGroup;->check(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v22, v0

    new-instance v23, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity$1;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;)V

    .line 400
    invoke-virtual/range {v22 .. v23}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 451
    return-void

    .line 93
    .end local v9    # "radioButton10":Landroid/widget/RadioButton;
    .end local v10    # "radioButton11":Landroid/widget/RadioButton;
    .end local v11    # "radioButton2":Landroid/widget/RadioButton;
    .end local v12    # "radioButton3":Landroid/widget/RadioButton;
    .end local v13    # "radioButton4":Landroid/widget/RadioButton;
    .end local v14    # "radioButton5":Landroid/widget/RadioButton;
    .end local v15    # "radioButton6":Landroid/widget/RadioButton;
    .end local v16    # "radioButton7":Landroid/widget/RadioButton;
    .end local v17    # "radioButton8":Landroid/widget/RadioButton;
    .end local v18    # "radioButton9":Landroid/widget/RadioButton;
    .end local v19    # "reminderMethodIndex":I
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    .line 94
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 95
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 96
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 97
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 100
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 102
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    .restart local v11    # "radioButton2":Landroid/widget/RadioButton;
    :cond_e
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x1

    .line 123
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 124
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 125
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 126
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 130
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 132
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 151
    .restart local v12    # "radioButton3":Landroid/widget/RadioButton;
    :cond_10
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x2

    .line 152
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 153
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 154
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 155
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 159
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 161
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_11
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 180
    .restart local v13    # "radioButton4":Landroid/widget/RadioButton;
    :cond_12
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/16 v22, 0x3

    .line 181
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 182
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 183
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 184
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 189
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_13
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 208
    .restart local v14    # "radioButton5":Landroid/widget/RadioButton;
    :cond_14
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    const/16 v22, 0x4

    .line 209
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 210
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 211
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 212
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 216
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 218
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_15
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 237
    .restart local v15    # "radioButton6":Landroid/widget/RadioButton;
    :cond_16
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x5

    .line 238
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 239
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 240
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 241
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 242
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 245
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 247
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_17
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 266
    .restart local v16    # "radioButton7":Landroid/widget/RadioButton;
    :cond_18
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x6

    .line 267
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 268
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 269
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 270
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 274
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 276
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_19
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 295
    .restart local v17    # "radioButton8":Landroid/widget/RadioButton;
    :cond_1a
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/16 v22, 0x7

    .line 296
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 297
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 298
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 299
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 300
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 305
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1b
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 325
    .restart local v18    # "radioButton9":Landroid/widget/RadioButton;
    :cond_1c
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const/16 v22, 0x8

    .line 326
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 327
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 328
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 329
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 330
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 333
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 335
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1d
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 354
    .restart local v9    # "radioButton10":Landroid/widget/RadioButton;
    :cond_1e
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1f

    const/16 v22, 0x9

    .line 355
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 356
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 357
    .restart local v4    # "firstIndex":I
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 358
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 359
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 362
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 364
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1f
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 383
    .restart local v10    # "radioButton11":Landroid/widget/RadioButton;
    :cond_20
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_21

    const/16 v22, 0xa

    .line 384
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 385
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 386
    .restart local v4    # "firstIndex":I
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "\u951b\ufffd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 387
    .restart local v20    # "secondIndex":I
    new-instance v21, Landroid/text/SpannableStringBuilder;

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 388
    .restart local v21    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v22, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 391
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 393
    .end local v4    # "firstIndex":I
    .end local v20    # "secondIndex":I
    .end local v21    # "style":Landroid/text/SpannableStringBuilder;
    :cond_21
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 37
    iput-object p0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mContext:Landroid/content/Context;

    .line 39
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 43
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 56
    :cond_0
    const v1, 0x7f0300b2

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->setContentView(I)V

    .line 57
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 58
    const v1, 0x7f11024d

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 59
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->foregroundColor:I

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->onBindView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 485
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EventViewReminderMethodActivity;->finish()V

    .line 486
    const/4 v0, 0x1

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
