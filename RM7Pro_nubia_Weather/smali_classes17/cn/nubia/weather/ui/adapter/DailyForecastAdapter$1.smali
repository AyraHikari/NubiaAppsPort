.class Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;
.super Ljava/lang/Object;
.source "DailyForecastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->updateView(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

.field final synthetic val$dailylink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    iput-object p2, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;->val$dailylink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Lcn/nubia/weather/utils/LinkUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$1;->val$dailylink:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 127
    const-string v1, "DAILY"

    invoke-static {v1}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    .line 128
    return-void
.end method
