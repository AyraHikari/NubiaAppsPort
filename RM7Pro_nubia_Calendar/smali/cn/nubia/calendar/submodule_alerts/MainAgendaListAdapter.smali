.class public Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "MainAgendaListAdapter.java"


# static fields
.field private static mFirstTime:Z

.field private static mOtherColor:I

.field private static mPastEventColor:I

.field private static mTitleColor:I


# instance fields
.field private final INDEX_ALL_DAY:I

.field private final INDEX_BEGIN:I

.field private final INDEX_CALENDAR_ID:I

.field private final INDEX_CALENDAR_NAME:I

.field private final INDEX_CALENDAR_TYPE:I

.field private final INDEX_COLOR:I

.field private final INDEX_DESCRIPTION:I

.field private final INDEX_END:I

.field private final INDEX_EVENT_LOCATION:I

.field private final INDEX_EVENT_RDATE:I

.field private final INDEX_ROW_ID:I

.field private final INDEX_TITLE:I

.field private mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->mFirstTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "localWorkingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_ROW_ID:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_TITLE:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_EVENT_LOCATION:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_DESCRIPTION:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_COLOR:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_BEGIN:I

    .line 50
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_END:I

    .line 51
    const/4 v0, 0x7

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_ALL_DAY:I

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_CALENDAR_ID:I

    .line 53
    const/16 v0, 0x9

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_CALENDAR_NAME:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_CALENDAR_TYPE:I

    .line 55
    const/16 v0, 0xb

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->INDEX_EVENT_RDATE:I

    .line 56
    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 61
    iput-object p3, p0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 62
    return-void
.end method

.method public static getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "id":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    .line 150
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const-string v1, "My Calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const v0, 0x7f020087

    :cond_1
    :goto_1
    move v1, v0

    .line 163
    goto :goto_0

    .line 154
    :cond_2
    const v0, 0x7f020086

    goto :goto_1

    .line 156
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    const v0, 0x7f020090

    goto :goto_1

    .line 158
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    const v0, 0x7f020091

    goto :goto_1

    .line 160
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const v0, 0x7f020098

    goto :goto_1
.end method

.method private static isNonNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 135
    .local v1, "chs":[C
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v0, v1, v3

    .line 136
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    const/4 v2, 0x1

    .line 140
    .end local v0    # "ch":C
    :cond_0
    return v2

    .line 135
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 67
    const v2, 0x7f11009d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 68
    .local v18, "square":Landroid/widget/ImageView;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "eventName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "location":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "description":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 72
    .local v8, "startMillis":J
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 73
    .local v10, "endMillis":J
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v12, 0x1

    .line 74
    .local v12, "allDay":Z
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 75
    .local v16, "eventId":J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 76
    .local v14, "calendarId":I
    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "name":Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 78
    .local v19, "type":Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "rdate":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 80
    invoke-virtual/range {v2 .. v13}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V

    .line 82
    return-void

    .line 73
    .end local v12    # "allDay":Z
    .end local v13    # "rdate":Ljava/lang/String;
    .end local v14    # "calendarId":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "eventId":J
    .end local v19    # "type":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "allDay"    # Z
    .param p11, "rdate"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 89
    .local v11, "res":Landroid/content/res/Resources;
    const v5, 0x7f110097

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 90
    .local v13, "titleView":Landroid/widget/TextView;
    const v5, 0x7f11008b

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 91
    .local v16, "whenView":Landroid/widget/TextView;
    const v5, 0x7f11008c

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 92
    .local v17, "whereView":Landroid/widget/TextView;
    const v5, 0x7f11009f

    .line 93
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "descriptionView":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-static/range {p3 .. p3}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 99
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 100
    :cond_1
    const v5, 0x7f0c005c

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 102
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, "tz":Ljava/lang/String;
    if-eqz p10, :cond_5

    .line 109
    const v5, 0x7f0c0113

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, "when":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 124
    :cond_3
    const/16 v5, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_4
    :goto_1
    return-void

    .line 111
    .end local v15    # "when":Ljava/lang/String;
    :cond_5
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 112
    invoke-static/range {p6 .. p9}, Lcn/nubia/calendar/util/Utils;->setLunarEndMillis(JJ)J

    move-result-wide p8

    .line 113
    move-wide/from16 v0, p6

    move-object/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->setLunarMillis(JLjava/lang/String;)J

    move-result-wide p6

    .line 115
    :cond_6
    const/4 v10, 0x1

    .line 116
    .local v10, "flags":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v5 .. v10}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "when":Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v10    # "flags":I
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_alerts/MainAgendaListAdapter;->isNonNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
