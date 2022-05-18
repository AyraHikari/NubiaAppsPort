.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final EXCHANGE_ACCOUTN_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final GOOGLE_ACCOUTN_TYPE:Ljava/lang/String; = "com.google"

.field public static final NUBIA_ACCOUTN_TYPE:Ljava/lang/String; = "com.ztemt"


# instance fields
.field private COLOR_CHIP_ALL_DAY_HEIGHT:I

.field private COLOR_CHIP_HEIGHT:I

.field private isMultiMode:Z

.field private mContext:Landroid/content/Context;

.field private mDateText:Ljava/lang/String;

.field private final mDeclinedColor:I

.field private final mFormatter:Ljava/util/Formatter;

.field private mIsFirstRow:Z

.field private final mNoTitleLabel:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;

.field private mScale:F

.field private mSelectedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStandardColor:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mWhereColor:I

.field private final mWhereDeclinedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->isMultiMode:Z

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    .line 74
    const-string v0, " "

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mDateText:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mIsFirstRow:Z

    .line 79
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 115
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 117
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00a9

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mDeclinedColor:I

    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00aa

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mStandardColor:I

    .line 122
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00ab

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mWhereDeclinedColor:I

    .line 124
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mWhereColor:I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 126
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    .line 128
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f100000

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    .line 130
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    .line 131
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mScale:F

    .line 133
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_ALL_DAY_HEIGHT:I

    .line 135
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->COLOR_CHIP_HEIGHT:I

    .line 139
    :cond_0
    return-void
.end method

.method private getWeekDayByCalendar(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "flag"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    const-string v0, ""

    .line 366
    .local v0, "week":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 389
    :goto_0
    return-object v0

    .line 368
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    goto :goto_0

    .line 371
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    goto :goto_0

    .line 374
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    goto :goto_0

    .line 377
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    goto :goto_0

    .line 380
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    goto :goto_0

    .line 383
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    goto :goto_0

    .line 386
    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 48
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 144
    const/16 v35, 0x0

    .line 148
    .local v35, "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v40

    .line 149
    .local v40, "tag":Ljava/lang/Object;
    move-object/from16 v0, v40

    instance-of v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    check-cast v35, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 153
    .restart local v35    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    :cond_0
    if-nez v35, :cond_1

    .line 154
    new-instance v35, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .end local v35    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    invoke-direct/range {v35 .. v35}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;-><init>()V

    .line 155
    .restart local v35    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    const v4, 0x7f11004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 157
    const v4, 0x7f11008b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 158
    const v4, 0x7f11008c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 159
    const v4, 0x7f11008a

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    .line 161
    const v4, 0x7f11008e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    .line 162
    const v4, 0x7f110088

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->colorChip:Landroid/widget/ImageView;

    .line 165
    const v4, 0x7f11008d

    .line 166
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 167
    const v4, 0x7f110085

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 168
    const v4, 0x7f110086

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    .line 169
    const v4, 0x7f110087

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->topLine:Landroid/view/View;

    .line 170
    const v4, 0x7f110089

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    .line 173
    :cond_1
    const/4 v4, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v35

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 175
    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v22, 0x1

    .line 176
    .local v22, "allDay":Z
    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    .line 177
    const/16 v4, 0xc

    .line 178
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 180
    .local v38, "selfAttendeeStatus":I
    const/16 v28, 0x0

    .line 181
    .local v28, "colorByAcount":I
    const/16 v4, 0x11

    .line 182
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 183
    .local v21, "accountType":Ljava/lang/String;
    const/16 v4, 0x12

    .line 184
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 185
    .local v20, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getColorByAccountsTypeAndName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 188
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->colorChip:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->isMultiMode:Z

    if-eqz v4, :cond_a

    .line 191
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 193
    const/4 v4, 0x1

    .line 194
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 195
    .local v42, "titleString":Ljava/lang/String;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    .end local v42    # "titleString":Ljava/lang/String;
    :goto_1
    const/16 v4, 0xf

    .line 217
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 218
    .local v26, "canRespond":I
    if-nez v26, :cond_2

    .line 219
    const/16 v4, 0xe

    .line 220
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 221
    .local v37, "owner":Ljava/lang/String;
    const/16 v4, 0xd

    .line 222
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 223
    .local v36, "organizer":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    .end local v36    # "organizer":Ljava/lang/String;
    .end local v37    # "owner":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v35

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v41, v0

    .line 232
    .local v41, "title":Landroid/widget/TextView;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v44, v0

    .line 233
    .local v44, "when":Landroid/widget/TextView;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v46, v0

    .line 235
    .local v46, "where":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 236
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v35

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->instanceId:J

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0d0122

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    .line 246
    .local v27, "color":I
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 247
    .restart local v42    # "titleString":Ljava/lang/String;
    if-eqz v42, :cond_3

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 250
    :cond_4
    if-eqz v42, :cond_5

    invoke-static/range {v42 .. v42}, Lcn/nubia/calendar/util/Utils;->IsLeapEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 252
    invoke-static/range {v42 .. v42}, Lcn/nubia/calendar/util/Utils;->InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 255
    :cond_5
    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v4, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 259
    .local v6, "begin":J
    const/16 v4, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 260
    .local v8, "end":J
    const/16 v4, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 261
    .local v32, "eventTz":Ljava/lang/String;
    const/4 v10, 0x0

    .line 265
    .local v10, "flags":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, "tzString":Ljava/lang/String;
    if-eqz v22, :cond_b

    .line 267
    const-string v11, "UTC"

    .line 271
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    or-int/lit16 v10, v10, 0x80

    .line 275
    :cond_6
    const/high16 v4, 0x10000

    or-int/2addr v10, v4

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v45

    .line 289
    .local v45, "whenString":Ljava/lang/String;
    invoke-virtual/range {v44 .. v45}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    if-eqz v22, :cond_7

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_7
    const/4 v4, 0x2

    .line 324
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 325
    .local v47, "whereString":Ljava/lang/String;
    const/16 v4, 0x13

    .line 326
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 327
    .local v24, "calendarId":J
    if-eqz v47, :cond_c

    .line 328
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    .line 331
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/CalendarApplication;

    invoke-virtual {v4}, Lcn/nubia/calendar/CalendarApplication;->getUserModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    move-result-object v4

    .line 332
    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->getBirthdayCalendarId()J

    move-result-wide v4

    cmp-long v4, v24, v4

    if-eqz v4, :cond_c

    .line 334
    const/4 v4, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual/range {v46 .. v47}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :goto_3
    const-string v30, "yyyy-MM-dd"

    .line 342
    .local v30, "dateFormatter":Ljava/lang/String;
    new-instance v29, Ljava/util/Date;

    move-object/from16 v0, v29

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 344
    .local v29, "date":Ljava/util/Date;
    new-instance v34, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 345
    .local v34, "formatter1":Ljava/text/SimpleDateFormat;
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 346
    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    .line 347
    const-string v4, "-"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 348
    .local v31, "dateParts":[Ljava/lang/String;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v5, v31, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v39, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v33, Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-direct {v0, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 352
    .local v33, "formatter":Ljava/util/Formatter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    const/16 v18, 0x2

    move-object/from16 v12, p2

    move-wide v14, v6

    move-wide/from16 v16, v6

    move-object/from16 v19, v11

    invoke-static/range {v12 .. v19}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v43

    .line 356
    .local v43, "weekViewText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 357
    .local v23, "cal":Ljava/util/Calendar;
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 358
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 359
    const/4 v4, 0x7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getWeekDayByCalendar(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 361
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void

    .line 175
    .end local v6    # "begin":J
    .end local v8    # "end":J
    .end local v10    # "flags":I
    .end local v11    # "tzString":Ljava/lang/String;
    .end local v20    # "accountName":Ljava/lang/String;
    .end local v21    # "accountType":Ljava/lang/String;
    .end local v22    # "allDay":Z
    .end local v23    # "cal":Ljava/util/Calendar;
    .end local v24    # "calendarId":J
    .end local v26    # "canRespond":I
    .end local v27    # "color":I
    .end local v28    # "colorByAcount":I
    .end local v29    # "date":Ljava/util/Date;
    .end local v30    # "dateFormatter":Ljava/lang/String;
    .end local v31    # "dateParts":[Ljava/lang/String;
    .end local v32    # "eventTz":Ljava/lang/String;
    .end local v33    # "formatter":Ljava/util/Formatter;
    .end local v34    # "formatter1":Ljava/text/SimpleDateFormat;
    .end local v38    # "selfAttendeeStatus":I
    .end local v39    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v41    # "title":Landroid/widget/TextView;
    .end local v42    # "titleString":Ljava/lang/String;
    .end local v43    # "weekViewText":Ljava/lang/String;
    .end local v44    # "when":Landroid/widget/TextView;
    .end local v45    # "whenString":Ljava/lang/String;
    .end local v46    # "where":Landroid/widget/TextView;
    .end local v47    # "whereString":Ljava/lang/String;
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 198
    .restart local v20    # "accountName":Ljava/lang/String;
    .restart local v21    # "accountType":Ljava/lang/String;
    .restart local v22    # "allDay":Z
    .restart local v28    # "colorByAcount":I
    .restart local v38    # "selfAttendeeStatus":I
    :cond_9
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 202
    :cond_a
    move-object/from16 v0, v35

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 269
    .restart local v6    # "begin":J
    .restart local v8    # "end":J
    .restart local v10    # "flags":I
    .restart local v11    # "tzString":Ljava/lang/String;
    .restart local v26    # "canRespond":I
    .restart local v27    # "color":I
    .restart local v32    # "eventTz":Ljava/lang/String;
    .restart local v41    # "title":Landroid/widget/TextView;
    .restart local v42    # "titleString":Ljava/lang/String;
    .restart local v44    # "when":Landroid/widget/TextView;
    .restart local v46    # "where":Landroid/widget/TextView;
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 337
    .restart local v24    # "calendarId":J
    .restart local v45    # "whenString":Ljava/lang/String;
    .restart local v47    # "whereString":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public cancelSelect()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 398
    return-void
.end method

.method public getColorByAccountsTypeAndName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "color":I
    const-string v1, "getColorByAccountsType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string v1, "getColorByAccountsType"

    const-string v2, "account type is error"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    .line 459
    :goto_0
    return v1

    .line 436
    :cond_0
    const-string v1, "Contact Birthday"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d00c7

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    move v1, v0

    .line 459
    goto :goto_0

    .line 444
    :cond_1
    const-string v1, "com.android.exchange"

    .line 445
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d00cb

    .line 447
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 448
    :cond_2
    const-string v1, "com.google"

    .line 449
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 451
    :cond_3
    const-string v1, "com.ztemt"

    .line 452
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 455
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d00c9

    .line 456
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "id":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x0

    .line 504
    :goto_0
    return v1

    .line 489
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    const-string v1, "My Calendar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    const v0, 0x7f020087

    .line 502
    :cond_1
    :goto_1
    const-string v1, "getDrawableIdByAccountsTypeAndName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'account color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 504
    goto :goto_0

    .line 493
    :cond_2
    const v0, 0x7f020086

    goto :goto_1

    .line 495
    :cond_3
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    const v0, 0x7f020090

    goto :goto_1

    .line 497
    :cond_4
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    const v0, 0x7f020091

    goto :goto_1

    .line 499
    :cond_5
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const v0, 0x7f020098

    goto :goto_1
.end method

.method public getSelectItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    return-object v0
.end method

.method public reSelectItemByPosition(I)V
    .locals 2
    .param p1, "mPosition"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectItemByPosition(I)V
    .locals 2
    .param p1, "mPosition"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->mSelectedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMultiMode(Z)V
    .locals 0
    .param p1, "isMultiMode"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->isMultiMode:Z

    .line 394
    return-void
.end method
