.class Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CityAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cityTv:Landroid/widget/TextView;

.field countryTv:Landroid/widget/TextView;

.field nameTv:Landroid/widget/TextView;

.field provinceTv:Landroid/widget/TextView;

.field final synthetic this$1:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;->this$1:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;
    .param p2, "x1"    # Lcn/nubia/weather/ui/activity/CityAddActivity$1;

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;)V

    return-void
.end method
