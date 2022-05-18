.class Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;
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

.field final synthetic val$con:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->val$con:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->val$con:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallpaperGrayColor(Landroid/content/Context;)I

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
