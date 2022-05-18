.class Lcn/nubia/weather/ui/widget/WidgetDataCache$1;
.super Lcn/nubia/weather/persistent/QueryCallback;
.source "WidgetDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataAsync(Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WidgetDataCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WidgetDataCache;

    .prologue
    .line 183
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->this$0:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->val$listener:Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;

    invoke-direct {p0}, Lcn/nubia/weather/persistent/QueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryWeatherByIDComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 194
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->this$0:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 196
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->val$listener:Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;->val$context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;->onDataQueryComplete(Landroid/content/Context;)V

    .line 197
    return-void
.end method
