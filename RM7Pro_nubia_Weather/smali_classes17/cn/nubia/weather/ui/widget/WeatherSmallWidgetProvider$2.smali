.class Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;
.super Landroid/os/AsyncTask;
.source "WeatherSmallWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

.field final synthetic val$iContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->this$0:Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->val$iContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 66
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->val$iContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->val$iContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 69
    .local v0, "appWidgetIds":[I
    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->this$0:Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->val$iContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->reverseWithRecordedLocs(Landroid/content/Context;[I)V

    .line 70
    const/4 v2, 0x0

    return-object v2
.end method
