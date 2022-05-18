.class Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;
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

.field final synthetic val$con:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    .prologue
    .line 137
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;->this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;->val$con:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;->val$con:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallpaperGrayColor(Landroid/content/Context;)I

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
