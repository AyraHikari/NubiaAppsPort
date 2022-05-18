.class public Lcn/nubia/calendar/submodule_alerts/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# static fields
.field private static mFirstTime:Z

.field private static mOtherColor:I

.field private static mPastEventColor:I

.field private static mTitleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;->mFirstTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 48
    return-void
.end method

.method private static isNonNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 166
    .local v1, "chs":[C
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v0, v1, v3

    .line 167
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    const/4 v2, 0x1

    .line 171
    .end local v0    # "ch":C
    :cond_0
    return v2

    .line 166
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "startMillis"    # J
    .param p7, "endMillis"    # J
    .param p9, "allDay"    # Z

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 86
    .local v10, "res":Landroid/content/res/Resources;
    const v3, 0x7f110097

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 87
    .local v13, "titleView":Landroid/widget/TextView;
    const v3, 0x7f11008b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 88
    .local v16, "whenView":Landroid/widget/TextView;
    const v3, 0x7f11008c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 89
    .local v17, "whereView":Landroid/widget/TextView;
    const v3, 0x7f11009f

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, "descriptionView":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :cond_0
    const v3, 0x7f0c005c

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 112
    :cond_1
    invoke-static/range {p2 .. p2}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-static/range {p2 .. p2}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "tz":Ljava/lang/String;
    if-eqz p9, :cond_8

    .line 122
    const/16 v8, 0x2012

    .line 124
    .local v8, "flags":I
    const-string v14, "UTC"

    .line 128
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    or-int/lit16 v8, v8, 0x80

    .line 132
    :cond_3
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 133
    .local v12, "time":Landroid/text/format/Time;
    move-wide/from16 v0, p5

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 134
    iget v3, v12, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_9

    const/4 v9, 0x1

    .line 135
    .local v9, "isDST":Z
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-nez p9, :cond_4

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    if-eq v14, v3, :cond_4

    .line 138
    const-string v3, " "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 139
    invoke-virtual {v4, v9, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 144
    .local v15, "when":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 148
    :cond_5
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 157
    :cond_7
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_3
    return-void

    .line 126
    .end local v8    # "flags":I
    .end local v9    # "isDST":Z
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "time":Landroid/text/format/Time;
    .end local v15    # "when":Ljava/lang/String;
    :cond_8
    const/16 v8, 0x11

    .restart local v8    # "flags":I
    goto :goto_0

    .line 134
    .restart local v12    # "time":Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x0

    goto :goto_1

    .line 150
    .restart local v9    # "isDST":Z
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "when":Ljava/lang/String;
    :cond_a
    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;->isNonNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 159
    :cond_b
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    const v3, 0x7f11009d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 53
    .local v16, "square":Landroid/widget/ImageView;
    const/16 v3, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "accountType":Ljava/lang/String;
    const/16 v3, 0xe

    .line 55
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    const v3, 0x7f11009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 61
    .local v14, "repeatContainer":Landroid/view/View;
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 62
    .local v15, "rrule":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :goto_0
    const-string v3, "AlertAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "accountType = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  accountName = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  rrule = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "eventName":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "location":Ljava/lang/String;
    const/16 v3, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "description":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 73
    .local v8, "startMillis":J
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 74
    .local v10, "endMillis":J
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    .line 75
    .local v12, "allDay":Z
    :goto_1
    const-string v3, "AlertAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "eventName = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  location = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  description = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  startMillis = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  endMillis = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, "  allDay = "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 77
    invoke-static/range {v3 .. v12}, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 79
    return-void

    .line 65
    .end local v5    # "eventName":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "startMillis":J
    .end local v10    # "endMillis":J
    .end local v12    # "allDay":Z
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 74
    .restart local v5    # "eventName":Ljava/lang/String;
    .restart local v6    # "location":Ljava/lang/String;
    .restart local v7    # "description":Ljava/lang/String;
    .restart local v8    # "startMillis":J
    .restart local v10    # "endMillis":J
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "id":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1

    .line 181
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    const-string v1, "My Calendar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const v0, 0x7f020087

    :cond_1
    :goto_1
    move v1, v0

    .line 194
    goto :goto_0

    .line 185
    :cond_2
    const v0, 0x7f020086

    goto :goto_1

    .line 187
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const v0, 0x7f020090

    goto :goto_1

    .line 189
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    const v0, 0x7f020091

    goto :goto_1

    .line 191
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const v0, 0x7f020098

    goto :goto_1
.end method
