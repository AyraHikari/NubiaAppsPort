.class Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;
.super Landroid/os/AsyncTask;
.source "WeatherVerticalWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

.field final synthetic val$iContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->val$iContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 157
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->val$iContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->val$iContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 161
    .local v0, "appWidgetIds":[I
    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->val$iContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->reverseWithRecordedLocs(Landroid/content/Context;[IZ)V

    .line 162
    const/4 v2, 0x0

    return-object v2
.end method
