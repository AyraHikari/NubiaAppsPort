.class Lcn/nubia/weather/ui/activity/CityAddActivity$5;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;->checkCTA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 876
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$5;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 878
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "isCTA"

    const/4 v2, 0x1

    .line 878
    invoke-static {v0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 880
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 882
    return-void
.end method
