.class Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;
.super Landroid/os/AsyncTask;
.source "WeatherVerticalWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
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

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/os/Bundle;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$newOptions:Landroid/os/Bundle;

    iput-object p3, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$appWidgetId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "location1":[I
    const/4 v3, 0x0

    .line 46
    .local v3, "location2":[I
    :try_start_0
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$newOptions:Landroid/os/Bundle;

    const-string v1, "point_left_top"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 47
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$newOptions:Landroid/os/Bundle;

    const-string v1, "point_right_bottom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    :goto_0
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_1
    return-object v9

    .line 48
    :catch_0
    move-exception v6

    .line 49
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "WeatherVerticalWidgetProvider"

    const-string v1, "exception in getIntArray"

    invoke-static {v0, v1, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 54
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    aget v0, v3, v5

    aget v1, v2, v5

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    aget v0, v3, v8

    aget v1, v2, v8

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$appWidgetId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v2, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v3, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v3, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefStringByCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "WeatherVerticalWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WID"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$appWidgetId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v2, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " onAppWidgetOptionsChanged"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v3, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v3, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$context:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->val$appWidgetId:I

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->setWidgetColor(Landroid/content/Context;[I[IIZ)V

    goto/16 :goto_1
.end method
