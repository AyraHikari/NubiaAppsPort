.class Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;
.super Landroid/os/AsyncTask;
.source "WeatherPressWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->performUpdate(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->access$000(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->access$100(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->access$000(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->access$200(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method
