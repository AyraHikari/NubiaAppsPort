.class Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortListAdapter"
.end annotation


# instance fields
.field private mAllCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;Landroid/view/LayoutInflater;)V
    .locals 1
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 420
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 421
    iput-object p2, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    .line 423
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getWeatherListButLocationCity()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 425
    return-void
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 472
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    new-instance v8, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;

    invoke-direct {v8, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$300(Lcn/nubia/weather/ui/activity/CityListActivity;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 482
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 483
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :cond_0
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 486
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 488
    :cond_1
    iget-object v8, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 490
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    new-instance v8, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;

    invoke-direct {v8, p0, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    :goto_1
    const/4 v0, 0x0

    .line 526
    .local v0, "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, p2, :cond_2

    .line 527
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 529
    .restart local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    :cond_2
    if-eqz v0, :cond_7

    .line 530
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 531
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 534
    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 536
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_6

    .line 539
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    .line 540
    invoke-static {v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$700(Lcn/nubia/weather/ui/activity/CityListActivity;)Ljava/util/Date;

    move-result-object v7

    .line 539
    invoke-static {v7, v0}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v1

    .line 541
    .local v1, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const/4 v6, -0x1

    .line 542
    .local v6, "type":I
    const-string v5, ""

    .line 543
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v4

    .line 544
    .local v4, "isNight":Z
    const/4 v3, -0x1

    .line 545
    .local v3, "icon":I
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 546
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 548
    :cond_4
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v5

    .line 549
    if-eqz v5, :cond_d

    .line 550
    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-virtual {v8}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    const/4 v4, 0x1

    .line 562
    :cond_5
    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 563
    invoke-static {v6, v4}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v3

    .line 564
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    :goto_3
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .end local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "icon":I
    .end local v4    # "isNight":Z
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_6
    :goto_4
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :cond_7
    return-void

    .line 488
    .end local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 516
    :cond_9
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_a

    .line 517
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    :cond_a
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 520
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 522
    :cond_b
    iget-object v8, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    .line 557
    .restart local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    .restart local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v3    # "icon":I
    .restart local v4    # "isNight":Z
    .restart local v5    # "temp":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_d
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_e

    .line 558
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_e
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f020115

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 566
    :cond_f
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f020115

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 571
    .end local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "icon":I
    .end local v4    # "isNight":Z
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_10
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_11

    .line 572
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    :cond_11
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f020115

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method private buildHolder(Landroid/view/View;)Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 582
    new-instance v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/ui/activity/CityListActivity$1;)V

    .line 583
    .local v0, "holder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    const v1, 0x7f10009c

    .line 584
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    .line 585
    const v1, 0x7f10009d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityName:Landroid/widget/TextView;

    .line 586
    const v1, 0x7f10009e

    .line 587
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    .line 588
    const v1, 0x7f100068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    .line 589
    const v1, 0x7f10009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    .line 590
    return-object v0
.end method


# virtual methods
.method public dragTo(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 436
    .local v0, "fromModel":Lcn/nubia/weather/model/WeatherModel;
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 439
    .end local v0    # "fromModel":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 440
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 454
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 461
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 462
    invoke-direct {p0, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->buildHolder(Landroid/view/View;)Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    move-result-object v0

    .line 463
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 467
    :goto_0
    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V

    .line 468
    return-object p2

    .line 465
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    check-cast v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    .restart local v0    # "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    goto :goto_0
.end method

.method public updateData()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getWeatherListButLocationCity()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 430
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 431
    return-void
.end method
