.class Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbMuiltSelected:Landroid/widget/CheckBox;

.field imageCityWeather:Landroid/widget/ImageView;

.field imageDrag:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

.field tvCityName:Landroid/widget/TextView;

.field tvCityTemperature:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/ui/activity/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p2, "x1"    # Lcn/nubia/weather/ui/activity/CityListActivity$1;

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    return-void
.end method
