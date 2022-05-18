.class public Lcom/google/android/material/picker/DateRangeGridSelector;
.super Ljava/lang/Object;
.source "DateRangeGridSelector.java"

# interfaces
.implements Lcom/google/android/material/picker/GridSelector;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/picker/GridSelector<",
        "Landroidx/core/util/Pair<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/picker/DateRangeGridSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dayStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private rangeFillColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private rangeFillPaint:Landroid/graphics/Paint;

.field private selectedEndItem:Ljava/util/Calendar;

.field private selectedStartItem:Ljava/util/Calendar;

.field private selectedStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private stylesInitialized:Z

.field private todayStyle:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lcom/google/android/material/picker/DateRangeGridSelector$1;

    invoke-direct {v0}, Lcom/google/android/material/picker/DateRangeGridSelector$1;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/DateRangeGridSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    .line 50
    iput-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->stylesInitialized:Z

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/picker/DateRangeGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/DateRangeGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/material/picker/DateRangeGridSelector;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->stylesInitialized:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/material/picker/DateRangeGridSelector;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillColor:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/material/picker/DateRangeGridSelector;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->dayStyle:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/material/picker/DateRangeGridSelector;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStyle:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/material/picker/DateRangeGridSelector;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->todayStyle:I

    return p1
.end method

.method private horizontalMidPoint(Landroid/view/View;)I
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    return p0
.end method

.method private initializeStyles(Landroid/content/Context;)V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->stylesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->stylesInitialized:Z

    .line 65
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/picker/MaterialCalendar;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 71
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    .line 74
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 76
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->dayStyle:I

    .line 77
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStyle:I

    .line 79
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->todayStyle:I

    .line 80
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillColor:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private skipMonth(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p4, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0

    :cond_3
    :goto_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawCell(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->initializeStyles(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    iget p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->todayStyle:I

    goto :goto_1

    .line 107
    :cond_1
    iget p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->dayStyle:I

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStyle:I

    .line 109
    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/material/picker/CalendarGridSelectors;->colorCell(Landroid/widget/TextView;I)V

    return-void
.end method

.method public getEnd()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelection()Landroidx/core/util/Pair;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Landroidx/core/util/Pair;

    iget-object v1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    invoke-direct {v0, v1, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/picker/DateRangeGridSelector;->getSelection()Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCalendarMonthDraw(Landroid/graphics/Canvas;Lcom/google/android/material/picker/MaterialCalendarGridView;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/material/picker/DateRangeGridSelector;->initializeStyles(Landroid/content/Context;)V

    .line 115
    iget-object v2, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v2, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/picker/MonthAdapter;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/google/android/material/picker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/picker/MonthAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v3

    .line 121
    invoke-virtual {v2}, Lcom/google/android/material/picker/MonthAdapter;->lastPositionInMonth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/picker/MonthAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object v4

    .line 122
    iget-object v5, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    iget-object v6, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/material/picker/DateRangeGridSelector;->skipMonth(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 128
    :cond_1
    iget-object v5, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v3, :cond_3

    .line 129
    invoke-virtual {v2}, Lcom/google/android/material/picker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    if-nez v3, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v3, -0x1

    .line 133
    invoke-virtual {v1, v7}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    goto :goto_0

    .line 135
    :cond_3
    iget-object v3, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    .line 136
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/picker/MonthAdapter;->dayToPosition(I)I

    move-result v3

    .line 137
    invoke-virtual {v1, v3}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/material/picker/DateRangeGridSelector;->horizontalMidPoint(Landroid/view/View;)I

    move-result v7

    .line 142
    :goto_0
    iget-object v8, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {v2}, Lcom/google/android/material/picker/MonthAdapter;->lastPositionInMonth()I

    move-result v4

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_4

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getWidth()I

    move-result v6

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 147
    invoke-virtual {v1, v6}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_1

    .line 149
    :cond_5
    iget-object v4, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    .line 150
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/picker/MonthAdapter;->dayToPosition(I)I

    move-result v4

    .line 151
    invoke-virtual {v1, v4}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/material/picker/DateRangeGridSelector;->horizontalMidPoint(Landroid/view/View;)I

    move-result v6

    .line 154
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/material/picker/MonthAdapter;->getItemId(I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 155
    invoke-virtual {v2, v4}, Lcom/google/android/material/picker/MonthAdapter;->getItemId(I)J

    move-result-wide v9

    long-to-int v2, v9

    :goto_2
    if-gt v8, v2, :cond_8

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getNumColumns()I

    move-result v9

    mul-int/2addr v9, v8

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getNumColumns()I

    move-result v10

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    .line 159
    invoke-virtual {v1, v9}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 160
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    .line 161
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v9, v3, :cond_6

    move v9, v5

    goto :goto_3

    :cond_6
    move v9, v7

    :goto_3
    if-le v4, v10, :cond_7

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getWidth()I

    move-result v10

    goto :goto_4

    :cond_7
    move v10, v6

    :goto_4
    int-to-float v14, v9

    int-to-float v15, v12

    int-to-float v9, v10

    int-to-float v10, v11

    .line 165
    iget-object v11, v0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public select(Ljava/util/Calendar;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    .line 93
    iput-object p1, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 239
    iget-object p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStartItem:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 240
    iget-object p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedEndItem:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 241
    iget-boolean p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->stylesInitialized:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 242
    iget p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->rangeFillColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->dayStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget p2, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->selectedStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p0, p0, Lcom/google/android/material/picker/DateRangeGridSelector;->todayStyle:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
