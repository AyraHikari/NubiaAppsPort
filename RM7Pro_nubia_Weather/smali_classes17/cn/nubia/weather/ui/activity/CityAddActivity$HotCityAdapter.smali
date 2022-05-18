.class Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotCityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 599
    iput-object p2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->mContext:Landroid/content/Context;

    .line 600
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 601
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 615
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0c0011

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 622
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;

    .end local v0    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V

    .line 623
    .restart local v0    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 624
    const v2, 0x7f1000bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->checkbox:Landroid/widget/ImageView;

    .line 625
    const v2, 0x7f1000bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->cityText:Landroid/widget/TextView;

    .line 626
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 630
    :goto_0
    iget-object v3, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->cityText:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v2}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/CityModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    .line 633
    invoke-static {v2}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/CityModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v3, v2}, Lcn/nubia/weather/data/DataCenter;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 635
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 636
    iget-object v2, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->cityText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    :goto_1
    return-object p2

    .line 628
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    check-cast v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;

    .restart local v0    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;
    goto :goto_0

    .line 639
    .restart local v1    # "index":I
    :cond_1
    if-nez v1, :cond_2

    .line 640
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    .line 641
    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "isLocationOpen"

    const/4 v4, 0x1

    .line 640
    invoke-static {v2, v3, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 642
    iget-object v2, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->cityText:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 646
    :cond_2
    iget-object v2, v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter$ViewHolder;->checkbox:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
