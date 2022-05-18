.class Lcn/nubia/weather/ui/widget/WidgetDataCache$2;
.super Landroid/os/AsyncTask;
.source "WidgetDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WidgetDataCache;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WidgetDataCache;

    .prologue
    .line 227
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->this$0:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->val$context:Landroid/content/Context;

    const-string v1, "widget_cache_init_time_long"

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLongByCommit(Landroid/content/Context;Ljava/lang/String;J)V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method
