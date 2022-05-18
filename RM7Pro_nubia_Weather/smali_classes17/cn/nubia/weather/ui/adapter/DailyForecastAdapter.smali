.class public Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;
.super Landroid/widget/BaseAdapter;
.source "DailyForecastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/DailyModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method private updateView(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    .line 86
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 88
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/DailyModel;

    .line 89
    .local v1, "dailyForecastModel":Lcn/nubia/weather/model/DailyModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    .end local v1    # "dailyForecastModel":Lcn/nubia/weather/model/DailyModel;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v1    # "dailyForecastModel":Lcn/nubia/weather/model/DailyModel;
    :cond_1
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$000(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    .line 93
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmTemp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 95
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmIcon()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 96
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$200(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$100(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmIcon()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    .line 102
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmTemp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmTemp()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "lowhigh":Ljava/lang/String;
    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 105
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcn/nubia/weather/model/DailyModel;->getmLink()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "dailylink":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$400(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 121
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$400(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;

    invoke-direct {v7, p0, v2}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;-><init>(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "dailylink":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0062

    .line 110
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 111
    .local v3, "darkColor":I
    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 112
    .local v4, "index":I
    if-ltz v4, :cond_2

    .line 113
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    const/16 v8, 0x22

    invoke-virtual {v0, v6, v7, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 131
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "darkColor":I
    .end local v4    # "index":I
    .end local v5    # "lowhigh":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    invoke-static {p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0900f0

    .line 135
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "viewHolder":Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    if-nez p2, :cond_0

    .line 65
    new-instance v0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .end local v0    # "viewHolder":Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;-><init>(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;)V

    .line 66
    .restart local v0    # "viewHolder":Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    const v1, 0x7f100096

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    invoke-static {v0, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$002(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 70
    const v1, 0x7f100097

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    invoke-static {v0, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$102(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 72
    const v1, 0x7f100098

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    invoke-static {v0, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$202(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 74
    const v1, 0x7f100099

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    invoke-static {v0, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$302(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 76
    invoke-static {v0, p2}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->access$402(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->updateView(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;I)V

    .line 82
    return-object p2

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    check-cast v0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .restart local v0    # "viewHolder":Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/DailyModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->mDatas:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
