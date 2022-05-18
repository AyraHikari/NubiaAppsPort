.class public Lcom/android/calculator2/HistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/HistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/calculator2/HistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_VIEW_TYPE:I = 0x0

.field public static final HISTORY_VIEW_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HistoryAdapter"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calculator2/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEvaluator:Lcom/android/calculator2/Evaluator;

.field private mIsDisplayEmpty:Z

.field private mIsOneLine:Z

.field private mIsResultLayout:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/HistoryItem;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    .line 54
    iput-object p1, p0, Lcom/android/calculator2/HistoryAdapter;->mDataSet:Ljava/util/List;

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private getEvaluatorIndex(I)I
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/android/calculator2/HistoryAdapter;->mIsDisplayEmpty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calculator2/HistoryAdapter;->mIsResultLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x1

    add-long/2addr v0, p0

    long-to-int p0, v0

    return p0

    .line 194
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p0}, Lcom/android/calculator2/Evaluator;->getMaxIndex()J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private getItem(I)Lcom/android/calculator2/HistoryItem;
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/HistoryItem;

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->getEvaluatorIndex(I)I

    move-result v0

    .line 225
    new-instance v7, Lcom/android/calculator2/HistoryItem;

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 226
    invoke-virtual {v0, v2, v3}, Lcom/android/calculator2/Evaluator;->getTimeStamp(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    .line 227
    invoke-virtual {v0, v2, v3}, Lcom/android/calculator2/Evaluator;->getExprAsSpannable(J)Landroid/text/Spannable;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/calculator2/HistoryItem;-><init>(JJLandroid/text/Spannable;)V

    .line 228
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {p0, p1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :cond_0
    return-object v0
.end method

.method private shouldShowHeader(ILcom/android/calculator2/HistoryItem;)Z
    .locals 6

    .line 202
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    add-int/2addr p1, v1

    .line 206
    invoke-direct {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->getItem(I)Lcom/android/calculator2/HistoryItem;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Lcom/android/calculator2/HistoryItem;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 209
    iget-object p2, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 210
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 211
    iget-object v3, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/android/calculator2/HistoryItem;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 212
    iget-object p1, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 213
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p2, p1, :cond_2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->getItem(I)Lcom/android/calculator2/HistoryItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryItem;->getEvaluatorIndex()J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->getItem(I)Lcom/android/calculator2/HistoryItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryItem;->isEmptyView()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/HistoryAdapter;->onBindViewHolder(Lcom/android/calculator2/HistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/calculator2/HistoryAdapter$ViewHolder;I)V
    .locals 7

    .line 87
    invoke-direct {p0, p2}, Lcom/android/calculator2/HistoryAdapter;->getItem(I)Lcom/android/calculator2/HistoryItem;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/calculator2/HistoryItem;->isEmptyView()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$000(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/AlignedTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryItem;->getFormula()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/AlignedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$100(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryItem;->getEvaluatorIndex()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/calculator2/CalculatorResult;->setEvaluator(Lcom/android/calculator2/Evaluator;J)V

    .line 96
    invoke-virtual {v0}, Lcom/android/calculator2/HistoryItem;->getEvaluatorIndex()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-nez v1, :cond_2

    .line 97
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f1100f1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$100(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/CalculatorResult;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/calculator2/HistoryAdapter;->mIsOneLine:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/calculator2/CalculatorResult;->setVisibility(I)V

    .line 99
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "HistoryAdapter"

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HistoryAdapter"

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemCount() == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calculator2/HistoryAdapter;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p2, v0}, Lcom/android/calculator2/HistoryAdapter;->shouldShowHeader(ILcom/android/calculator2/HistoryItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HistoryAdapter"

    const-string v2, "11111111"

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryItem;->getDateString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_4

    .line 117
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calculator2/HistoryAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 62
    sget v2, Lcom/android/calculator2/Calculator;->mod:I

    if-ne v2, v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d006b

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/HistoryAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/calculator2/SystemUtil;->isOneThirdScreen(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "HistoryAdapter"

    const-string v0, "Aaron: Calculator in one-third Split Mode."

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d006a

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0069

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 74
    :cond_2
    sget p0, Lcom/android/calculator2/Calculator;->mod:I

    if-ne p0, v0, :cond_3

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0061

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0060

    .line 79
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 82
    :goto_0
    new-instance p1, Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;-><init>(Landroid/view/View;I)V

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/calculator2/HistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/HistoryAdapter;->onViewRecycled(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    invoke-virtual {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->getItemId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calculator2/Evaluator;->cancel(JZ)Z

    .line 141
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$300(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$400(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$500(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$600(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$200(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$000(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/AlignedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calculator2/AlignedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p1}, Lcom/android/calculator2/HistoryAdapter$ViewHolder;->access$100(Lcom/android/calculator2/HistoryAdapter$ViewHolder;)Lcom/android/calculator2/CalculatorResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorResult;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    iput-object p1, p0, Lcom/android/calculator2/HistoryAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public setDataSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/calculator2/HistoryItem;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/android/calculator2/HistoryAdapter;->mDataSet:Ljava/util/List;

    return-void
.end method

.method public setEvaluator(Lcom/android/calculator2/Evaluator;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/calculator2/HistoryAdapter;->mEvaluator:Lcom/android/calculator2/Evaluator;

    return-void
.end method

.method public setIsDisplayEmpty(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/android/calculator2/HistoryAdapter;->mIsDisplayEmpty:Z

    return-void
.end method

.method public setIsOneLine(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/android/calculator2/HistoryAdapter;->mIsOneLine:Z

    return-void
.end method

.method public setIsResultLayout(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/android/calculator2/HistoryAdapter;->mIsResultLayout:Z

    return-void
.end method
