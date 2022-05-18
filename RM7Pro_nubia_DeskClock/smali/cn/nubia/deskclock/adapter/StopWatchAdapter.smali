.class public Lcn/nubia/deskclock/adapter/StopWatchAdapter;
.super Landroid/widget/BaseAdapter;
.source "StopWatchAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFormats:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLapIndex:I

.field private final mLapIndexFinal:I

.field mLaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/deskclock/model/StopwatchLap;",
            ">;"
        }
    .end annotation
.end field

.field private final mThresholds:[J

.field private mTotalIndex:I

.field private final mTotalIndexFinal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mThresholds:[J

    .line 30
    iput v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    .line 31
    iput v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    .line 32
    iput v2, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndexFinal:I

    .line 33
    iput v2, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndexFinal:I

    .line 37
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mFormats:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 43
    return-void

    .line 22
    :array_0
    .array-data 8
        0x927c0
        0x36ee80
        0x2255100
        0x15752a00
        0xd693a400L
    .end array-data
.end method

.method private resetTimeFormats()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    iput v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    .line 99
    return-void
.end method


# virtual methods
.method public addLap(Lcn/nubia/deskclock/model/StopwatchLap;)V
    .locals 2
    .param p1, "lap"    # Lcn/nubia/deskclock/model/StopwatchLap;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public clearLaps()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->resetTimeFormats()V

    .line 123
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->notifyDataSetChanged()V

    .line 124
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLapTimes()[J
    .locals 6

    .prologue
    .line 129
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 131
    const/4 v1, 0x0

    .line 137
    :cond_0
    return-object v1

    .line 133
    :cond_1
    new-array v1, v2, [J

    .line 134
    .local v1, "laps":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 135
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/model/StopwatchLap;

    iget-wide v4, v3, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    aput-wide v4, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v0, p1

    if-lt v0, v9, :cond_1

    .line 53
    :cond_0
    const/4 v4, 0x0

    .line 81
    :goto_0
    return-object v4

    .line 56
    :cond_1
    if-eqz p2, :cond_2

    .line 57
    move-object/from16 v4, p2

    .line 62
    .local v4, "lapInfo":Landroid/view/View;
    :goto_1
    const v9, 0x7f120161

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "countLabel":Landroid/widget/TextView;
    const v9, 0x7f120162

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "count":Landroid/widget/TextView;
    const v9, 0x7f120163

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 65
    .local v5, "lapTime":Landroid/widget/TextView;
    const v9, 0x7f120164

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 66
    .local v8, "toalTime":Landroid/widget/TextView;
    const v9, 0x7f0d00d3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "laps":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    .line 70
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/deskclock/model/StopwatchLap;

    iget-wide v10, v9, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mFormats:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v9, v9, v12

    iget-object v12, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mFormats:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    .line 69
    invoke-static {v10, v11, v9, v12}, Lcn/nubia/deskclock/util/Stopwatches;->formatTimeText(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    .line 73
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/deskclock/model/StopwatchLap;

    iget-wide v12, v9, Lcn/nubia/deskclock/model/StopwatchLap;->mTotalTime:J

    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mFormats:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v9, v9, v11

    iget-object v11, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mFormats:[Ljava/lang/String;

    const/4 v14, 0x3

    aget-object v11, v11, v14

    invoke-static {v12, v13, v9, v11}, Lcn/nubia/deskclock/util/Stopwatches;->formatTimeText(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 72
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 76
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f0f0075

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    const v9, 0x7f0f0076

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    const v9, 0x7f0f0077

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    const v9, 0x7f0f0078

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 59
    .end local v2    # "count":Landroid/widget/TextView;
    .end local v3    # "countLabel":Landroid/widget/TextView;
    .end local v4    # "lapInfo":Landroid/view/View;
    .end local v5    # "lapTime":Landroid/widget/TextView;
    .end local v6    # "laps":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "toalTime":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04007a

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "lapInfo":Landroid/view/View;
    goto/16 :goto_1
.end method

.method public setLapTimes([J)V
    .locals 10
    .param p1, "laps"    # [J

    .prologue
    const-wide/16 v8, 0x0

    .line 142
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    array-length v1, p1

    .line 147
    .local v1, "size":I
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 149
    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_2

    .line 150
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    new-instance v5, Lcn/nubia/deskclock/model/StopwatchLap;

    invoke-direct {v5, v8, v9, v8, v9}, Lcn/nubia/deskclock/model/StopwatchLap;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    new-instance v5, Lcn/nubia/deskclock/model/StopwatchLap;

    aget-wide v6, p1, v0

    invoke-direct {v5, v8, v9, v6, v7}, Lcn/nubia/deskclock/model/StopwatchLap;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_3
    const-wide/16 v2, 0x0

    .line 156
    .local v2, "lapTime":J
    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 157
    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    .line 158
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/StopwatchLap;

    iput-wide v2, v4, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    .line 159
    iget-object v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/StopwatchLap;

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->updateTimeFormats(Lcn/nubia/deskclock/model/StopwatchLap;)Z

    .line 156
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateTimeFormats(Lcn/nubia/deskclock/model/StopwatchLap;)Z
    .locals 6
    .param p1, "lap"    # Lcn/nubia/deskclock/model/StopwatchLap;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "formatChanged":Z
    :goto_0
    iget v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-wide v2, p1, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mThresholds:[J

    iget v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 105
    iget v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mLapIndex:I

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    :goto_1
    iget v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mThresholds:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-wide v2, p1, Lcn/nubia/deskclock/model/StopwatchLap;->mTotalTime:J

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mThresholds:[J

    iget v4, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    aget-wide v4, v1, v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 110
    iget v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->mTotalIndex:I

    .line 111
    const/4 v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    return v0
.end method
