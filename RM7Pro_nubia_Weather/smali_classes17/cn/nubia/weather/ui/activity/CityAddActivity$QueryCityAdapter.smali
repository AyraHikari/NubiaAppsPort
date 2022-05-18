.class Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryCityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResultCityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 666
    iput-object p2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mContext:Landroid/content/Context;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mResultCityInfos:Ljava/util/List;

    .line 668
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 669
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mResultCityInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mResultCityInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mResultCityInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 691
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 696
    const/4 v1, 0x0

    .line 697
    .local v1, "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/CityModel;

    .line 698
    .local v0, "cityInfo":Lcn/nubia/weather/model/CityModel;
    if-nez p2, :cond_4

    .line 699
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 700
    new-instance v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;

    .end local v1    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V

    .line 701
    .restart local v1    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    const v2, 0x7f10008b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    .line 702
    const v2, 0x7f10008c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->cityTv:Landroid/widget/TextView;

    .line 703
    const v2, 0x7f10008d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->provinceTv:Landroid/widget/TextView;

    .line 704
    const v2, 0x7f10008e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->countryTv:Landroid/widget/TextView;

    .line 705
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 709
    :goto_0
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->countryTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 711
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->provinceTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 716
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->cityTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCity_cn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 721
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCity_cn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 724
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCity_cn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 725
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    :cond_3
    :goto_3
    return-object p2

    .line 707
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    check-cast v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;

    .restart local v1    # "holder":Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
    goto :goto_0

    .line 712
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->provinceTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 717
    :cond_6
    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCity_cn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 718
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->cityTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/weather/model/CityModel;->getCity_cn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 727
    :cond_7
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 728
    iget-object v2, v1, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setSearchResultData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->mResultCityInfos:Ljava/util/List;

    .line 676
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->notifyDataSetChanged()V

    .line 677
    return-void
.end method
