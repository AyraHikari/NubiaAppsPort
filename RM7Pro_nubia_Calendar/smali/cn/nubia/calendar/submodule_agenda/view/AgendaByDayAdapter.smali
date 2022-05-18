.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;,
        Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1

.field private static final TYPE_MONTH:I


# instance fields
.field private isMultiMode:Z

.field private final mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFormatter:Ljava/util/Formatter;

.field private mHighlightTextColor:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTextColor:I

.field private mTimeZone:Ljava/lang/String;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    const v1, 0x7f030021

    invoke-direct {v0, p1, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    .line 94
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 101
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mHighlightTextColor:I

    .line 102
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTextColor:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    return-object p1
.end method

.method private updateHolderDateText(ILcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "row"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    .param p3, "holder"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 328
    .local v10, "date":Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v4

    .line 329
    .local v4, "millis":J
    const/4 v15, 0x2

    .line 330
    .local v15, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 332
    move-object/from16 v0, p2

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4, v5, v6}, Lcn/nubia/calendar/util/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 338
    .local v13, "dayViewText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 339
    const v15, 0x10010

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v8, 0x4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, "dateViewText":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0215

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 354
    .local v17, "str":Ljava/lang/String;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 356
    .local v11, "date1":Ljava/util/Date;
    new-instance v16, Ljava/text/SimpleDateFormat;

    invoke-direct/range {v16 .. v17}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 357
    .local v16, "formatter1":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 358
    move-object/from16 v0, p3

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v11    # "date1":Ljava/util/Date;
    .end local v16    # "formatter1":Ljava/text/SimpleDateFormat;
    .end local v17    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v14

    .line 360
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateLineDisplay(Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;)V
    .locals 3
    .param p1, "holder"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .param p2, "row"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 309
    iget-boolean v0, p2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowBottomLine:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :goto_0
    iget-boolean v0, p2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowTopLine:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->topLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :goto_1
    return-void

    .line 312
    :cond_0
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->topLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateRowInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 523
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 524
    .local v4, "size":I
    if-ge v4, v6, :cond_1

    .line 562
    :cond_0
    return-void

    .line 528
    :cond_1
    const/4 v2, -0x1

    .line 529
    .local v2, "preDay":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 530
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 532
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v5, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v5, v6, :cond_2

    .line 533
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v2, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 534
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iput-boolean v6, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsNewDay:Z

    .line 529
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_3
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v5, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v5, v6, :cond_2

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, "searchindex":I
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/calendar/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-boolean v5, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    if-eqz v5, :cond_5

    .line 542
    :cond_4
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v5, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    sub-int v3, v2, v5

    .line 547
    :goto_2
    if-lt v3, v6, :cond_6

    .line 549
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iput-boolean v6, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsNewDay:Z

    .line 550
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v2, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_1

    .line 544
    :cond_5
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v5, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    sub-int v3, v5, v2

    goto :goto_2

    .line 552
    :cond_6
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iput-boolean v6, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowTopLine:Z

    .line 553
    add-int/lit8 v1, v0, -0x1

    .line 554
    .local v1, "pre":I
    if-ltz v1, :cond_0

    .line 557
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iput-boolean v6, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsShowBottomLine:Z

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 52
    .param p1, "dayAdapterInfo"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .prologue
    .line 376
    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object/from16 v39, v0

    .line 377
    .local v39, "cursor":Landroid/database/Cursor;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v49, "rowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;>;"
    const/16 v48, -0x1

    .line 379
    .local v48, "prevStartDay":I
    const/16 v45, -0x1

    .line 381
    .local v45, "preMonth":I
    new-instance v51, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 382
    .local v51, "tempTime":Landroid/text/format/Time;
    invoke-virtual/range {v51 .. v51}, Landroid/text/format/Time;->setToNow()V

    .line 383
    const/4 v4, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 385
    const/4 v4, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object/from16 v0, v51

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 388
    new-instance v44, Ljava/util/LinkedList;

    invoke-direct/range {v44 .. v44}, Ljava/util/LinkedList;-><init>()V

    .line 389
    .local v44, "multipleDayList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v17, 0x0

    .local v17, "position":I
    :goto_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 390
    const/16 v4, 0xa

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 391
    .local v50, "startDay":I
    const/16 v4, 0x9

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 392
    .local v18, "id":J
    const/4 v4, 0x7

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 393
    .local v20, "startTime":J
    const/16 v4, 0x8

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 394
    .local v22, "endTime":J
    const/4 v4, 0x0

    .line 395
    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 396
    .local v24, "instanceId":J
    const/4 v4, 0x3

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v26, 0x1

    .line 397
    .local v26, "allDay":Z
    :goto_1
    if-eqz v26, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v51

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v20

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v51

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v22

    .line 404
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v50

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 407
    move-object/from16 v0, v51

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v40

    .line 408
    .local v40, "adapterStartTime":J
    move-wide/from16 v0, v20

    move-wide/from16 v2, v40

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 410
    move/from16 v0, v50

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    .line 412
    const/4 v4, -0x1

    move/from16 v0, v48

    if-ne v0, v4, :cond_6

    .line 413
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v50

    invoke-direct {v4, v5, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-static/range {v50 .. v50}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v45

    .line 455
    :cond_1
    move/from16 v48, v50

    .line 459
    :cond_2
    invoke-static/range {v50 .. v50}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v4

    sub-int v4, v4, v45

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    .line 461
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v50

    invoke-direct {v4, v5, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-static/range {v50 .. v50}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v45

    .line 464
    :cond_3
    new-instance v14, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v15, 0x1

    move/from16 v16, v50

    invoke-direct/range {v14 .. v26}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const/16 v4, 0xb

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 472
    .local v29, "endDay":I
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 473
    move/from16 v0, v29

    move/from16 v1, v50

    if-le v0, v1, :cond_4

    .line 474
    new-instance v27, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 475
    move-object/from16 v0, v51

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v32

    move/from16 v28, v17

    move-wide/from16 v30, v18

    move-wide/from16 v34, v22

    move-wide/from16 v36, v24

    move/from16 v38, v26

    invoke-direct/range {v27 .. v38}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;-><init>(IIJJJJZ)V

    .line 474
    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 396
    .end local v26    # "allDay":Z
    .end local v29    # "endDay":I
    .end local v40    # "adapterStartTime":J
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 419
    .restart local v26    # "allDay":Z
    .restart local v40    # "adapterStartTime":J
    :cond_6
    add-int/lit8 v6, v48, 0x1

    .local v6, "currentDay":I
    :goto_2
    move/from16 v0, v50

    if-gt v6, v0, :cond_1

    .line 421
    invoke-virtual/range {v44 .. v44}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .line 422
    .local v43, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_3
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 423
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;

    .line 426
    .local v42, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v42

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_7

    .line 427
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 431
    :cond_7
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-static {v0, v4, v5, v7}, Lcn/nubia/calendar/util/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 434
    .local v46, "nextMidnight":J
    move-object/from16 v0, v42

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_9

    move-object/from16 v0, v42

    iget-wide v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 437
    .local v12, "infoEndTime":J
    :goto_4
    invoke-static {v6}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v4

    sub-int v4, v4, v45

    const/4 v5, 0x1

    if-lt v4, v5, :cond_8

    .line 440
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-static {v6}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v45

    .line 445
    :cond_8
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v42

    iget v7, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v42

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v42

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v42

    iget-wide v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    move-wide/from16 v0, v46

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_3

    .end local v12    # "infoEndTime":J
    :cond_9
    move-wide/from16 v12, v46

    .line 434
    goto :goto_4

    .line 419
    .end local v42    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46    # "nextMidnight":J
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 482
    .end local v6    # "currentDay":I
    .end local v18    # "id":J
    .end local v20    # "startTime":J
    .end local v22    # "endTime":J
    .end local v24    # "instanceId":J
    .end local v26    # "allDay":Z
    .end local v40    # "adapterStartTime":J
    .end local v43    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;>;"
    .end local v50    # "startDay":I
    :cond_b
    if-lez v48, :cond_10

    .line 483
    add-int/lit8 v6, v48, 0x1

    .restart local v6    # "currentDay":I
    :goto_5
    move-object/from16 v0, p1

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v6, v4, :cond_10

    .line 484
    invoke-virtual/range {v44 .. v44}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .line 485
    .restart local v43    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_6
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 486
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;

    .line 489
    .restart local v42    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v42

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_c

    .line 490
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 494
    :cond_c
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-static {v0, v4, v5, v7}, Lcn/nubia/calendar/util/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 496
    .restart local v46    # "nextMidnight":J
    move-object/from16 v0, v42

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_e

    move-object/from16 v0, v42

    iget-wide v12, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 499
    .restart local v12    # "infoEndTime":J
    :goto_7
    invoke-static {v6}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v4

    sub-int v4, v4, v45

    const/4 v5, 0x1

    if-lt v4, v5, :cond_d

    .line 501
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {v6}, Lcn/nubia/calendar/util/Utils;->getYearMonthFromJulianDay(I)I

    move-result v45

    .line 504
    :cond_d
    new-instance v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v42

    iget v7, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v42

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v42

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v42

    iget-wide v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    move-wide/from16 v0, v46

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_6

    .end local v12    # "infoEndTime":J
    :cond_e
    move-wide/from16 v12, v46

    .line 496
    goto :goto_7

    .line 483
    .end local v42    # "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46    # "nextMidnight":J
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 513
    .end local v6    # "currentDay":I
    .end local v43    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_10
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    sget-boolean v4, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->reverseSearchEvent:Z

    if-eqz v4, :cond_12

    .line 516
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 518
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->updateRowInfo()V

    .line 519
    return-void
.end method

.method public cancelSelect()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->cancelSelect()V

    .line 844
    return-void
.end method

.method public changeCursor(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .param p1, "info"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->calculateDays(Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 372
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget-object v1, p1, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 373
    return-void
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 368
    return-void
.end method

.method public findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 22
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "id"    # J

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 654
    const/4 v11, 0x0

    .line 738
    :cond_0
    :goto_0
    return v11

    .line 656
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v14

    .line 657
    .local v14, "millis":J
    const-wide/32 v16, 0x7fffffff

    .line 658
    .local v16, "minDistance":J
    const-wide/32 v2, 0x7fffffff

    .line 659
    .local v2, "IdFoundMinDistance":J
    const/16 v18, 0x0

    .line 660
    .local v18, "minIndex":I
    const/4 v10, 0x0

    .line 661
    .local v10, "idFoundMinIndex":I
    const/4 v8, -0x1

    .line 662
    .local v8, "eventInTimeIndex":I
    const/4 v5, -0x1

    .line 663
    .local v5, "allDayEventInTimeIndex":I
    const/4 v4, 0x0

    .line 664
    .local v4, "allDayEventDay":I
    const/4 v13, 0x0

    .line 665
    .local v13, "minDay":I
    const/4 v9, 0x0

    .line 666
    .local v9, "idFound":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 676
    .local v12, "len":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    if-ge v11, v12, :cond_9

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 678
    .local v19, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 681
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 676
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 686
    :cond_4
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p2

    if-nez v20, :cond_6

    .line 687
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v14

    if-eqz v20, :cond_0

    .line 693
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 694
    .local v6, "distance":J
    cmp-long v20, v6, v16

    if-gez v20, :cond_5

    .line 695
    move-wide v2, v6

    .line 696
    move v10, v11

    .line 698
    :cond_5
    const/4 v9, 0x1

    .line 700
    .end local v6    # "distance":J
    :cond_6
    if-nez v9, :cond_3

    .line 702
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v14, v20

    if-ltz v20, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v14, v20

    if-gtz v20, :cond_8

    .line 704
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 705
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_3

    .line 706
    move v5, v11

    .line 707
    move-object/from16 v0, v19

    iget v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 709
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    .line 710
    move v8, v11

    goto :goto_2

    .line 712
    :cond_8
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    .line 714
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 715
    .restart local v6    # "distance":J
    cmp-long v20, v6, v16

    if-gez v20, :cond_3

    .line 716
    move-wide/from16 v16, v6

    .line 717
    move/from16 v18, v11

    .line 718
    move-object/from16 v0, v19

    iget v13, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 725
    .end local v6    # "distance":J
    .end local v19    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_9
    if-eqz v9, :cond_a

    move v11, v10

    .line 726
    goto/16 :goto_0

    .line 729
    :cond_a
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_b

    move v11, v8

    .line 730
    goto/16 :goto_0

    .line 734
    :cond_b
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_c

    if-eq v13, v4, :cond_c

    move v11, v5

    .line 735
    goto/16 :goto_0

    :cond_c
    move/from16 v11, v18

    .line 738
    goto/16 :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 763
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v3

    .line 767
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 768
    .local v1, "len":I
    if-ge p1, v1, :cond_0

    .line 771
    move v0, p1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_0

    .line 772
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 773
    .local v2, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 774
    iget v3, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_0

    .line 771
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .param p1, "listPos"    # I

    .prologue
    .line 803
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 804
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 805
    .local v1, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 806
    iget v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 817
    .end local v1    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 808
    .restart local v1    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 809
    .local v0, "nextPos":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 810
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 811
    if-ltz v0, :cond_1

    .line 812
    neg-int v2, v0

    goto :goto_0

    .line 817
    .end local v0    # "nextPos":I
    .end local v1    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x80000000

    goto :goto_0
.end method

.method public getHeaderItemsCount(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 130
    const/4 v0, -0x1

    .line 139
    :cond_0
    return v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v2, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 114
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move v0, v2

    .line 123
    :cond_1
    :goto_0
    return v0

    .line 118
    :cond_2
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 119
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 120
    .local v1, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_3

    iget v3, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-eqz v3, :cond_1

    .line 118
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_4
    move v0, v2

    .line 123
    goto :goto_0
.end method

.method public getInstanceId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    const-wide/16 v0, -0x1

    .line 109
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 152
    .local v0, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 158
    .end local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 155
    .restart local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 158
    .end local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 164
    .local v0, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 165
    neg-int v1, p1

    int-to-long v2, v1

    .line 170
    .end local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v2

    .line 167
    .restart local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0

    .line 170
    .end local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    .line 180
    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiAgendaPositions(I)Ljava/util/HashSet;
    .locals 7
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 872
    .local v1, "i":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 873
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    iget v3, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 874
    .local v3, "j":I
    const/4 v4, 0x0

    .line 875
    .local v4, "k":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 876
    return-object v0

    .line 878
    :cond_0
    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 879
    .local v2, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    if-ne v5, v3, :cond_1

    iget v5, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 874
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 882
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 887
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getSelectItems()Ljava/util/HashSet;

    .line 888
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSelectItems()Ljava/util/HashSet;
    .locals 5
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
    .line 893
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    .line 895
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 897
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    const-string v3, "Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AgendaByDayAdapter getSelectItems "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 899
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 898
    invoke-static {v3, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v2

    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget-boolean v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->isMultiMode:Z

    invoke-virtual {v8, v9}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->setMultiMode(Z)V

    .line 191
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le p1, v8, :cond_1

    .line 193
    :cond_0
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v8, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 196
    :cond_1
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 197
    .local v4, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v8, :cond_6

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    const/4 v0, 0x0

    .line 200
    .local v0, "agendaDayView":Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 204
    .local v5, "tag":Ljava/lang/Object;
    instance-of v8, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    if-eqz v8, :cond_2

    .line 205
    move-object v0, p2

    move-object v2, v5

    .line 206
    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    .line 207
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iput v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 211
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_3

    .line 214
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    .end local v2    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    invoke-direct {v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 215
    .restart local v2    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03001e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 217
    const v8, 0x7f11007b

    .line 218
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 219
    const v8, 0x7f11007c

    .line 220
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 221
    const v8, 0x7f11007a

    .line 222
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->monthLayout:Landroid/widget/RelativeLayout;

    .line 223
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iput v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 224
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->grayed:Z

    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    :cond_3
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "tz":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    iget-object v8, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 234
    iput-object v7, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 235
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 238
    :cond_4
    invoke-direct {p0, p1, v4, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->updateHolderDateText(ILcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;)V

    .line 242
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    if-le v8, v9, :cond_5

    .line 244
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 247
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_0

    .line 251
    .end local v0    # "agendaDayView":Landroid/view/View;
    .end local v2    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    .end local v7    # "tz":Ljava/lang/String;
    :cond_6
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 252
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget v9, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v8, v9, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 255
    .local v3, "itemView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 256
    .local v2, "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    iget-object v6, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 263
    .local v6, "title":Landroid/widget/TextView;
    iget-wide v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    iput-wide v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 264
    iget-boolean v1, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    .line 268
    .local v1, "allDay":Z
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    if-nez v1, :cond_7

    iget-wide v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    if-gt v8, v9, :cond_9

    .line 277
    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->grayed:Z

    .line 282
    :goto_1
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iput v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->julianDay:I

    .line 283
    iget-boolean v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mIsNewDay:Z

    if-eqz v8, :cond_a

    .line 284
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_2
    iget v8, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mDay:I

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTodayJulianDay:I

    if-ne v8, v9, :cond_b

    .line 292
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mHighlightTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mHighlightTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    const v9, 0x7f0c0179

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 300
    :goto_3
    invoke-direct {p0, v2, v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->updateLineDisplay(Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;)V

    move-object v0, v3

    .line 301
    goto/16 :goto_0

    .line 280
    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->grayed:Z

    goto :goto_1

    .line 287
    :cond_a
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 296
    :cond_b
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v8, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    iget v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 304
    .end local v1    # "allDay":Z
    .end local v2    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .end local v3    # "itemView":Landroid/view/View;
    .end local v6    # "title":Landroid/widget/TextView;
    :cond_c
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x2

    return v0
.end method

.method public isDayHeaderView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 827
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 828
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 829
    .local v0, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 831
    .end local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 829
    .restart local v0    # "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstDayAfterYesterday(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v0

    .line 749
    .local v0, "headerPos":I
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 750
    .local v1, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_0

    .line 751
    iget-boolean v2, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 753
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reSelectItemByPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 859
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 864
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 867
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->reSelectItemByPosition(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->selectAll()V

    .line 840
    return-void
.end method

.method public selectItemByPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 847
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 848
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 852
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 855
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mAgendaAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter;->selectItemByPosition(I)V

    goto :goto_0
.end method

.method public setAsFirstDayAfterYesterday(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 787
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;

    .line 791
    .local v0, "row":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    goto :goto_0
.end method

.method public setMultiMode(Z)V
    .locals 0
    .param p1, "isMultiMode"    # Z

    .prologue
    .line 835
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->isMultiMode:Z

    .line 836
    return-void
.end method
