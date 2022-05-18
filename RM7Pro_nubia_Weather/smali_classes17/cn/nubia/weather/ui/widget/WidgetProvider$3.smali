.class Lcn/nubia/weather/ui/widget/WidgetProvider$3;
.super Landroid/os/AsyncTask;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
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
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

.field final synthetic val$appWidgetId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newOptions:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/os/Bundle;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WidgetProvider;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$newOptions:Landroid/os/Bundle;

    iput-object p3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$context:Landroid/content/Context;

    iput p4, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$appWidgetId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "location1":[I
    const/4 v2, 0x0

    .line 103
    .local v2, "location2":[I
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$newOptions:Landroid/os/Bundle;

    const-string v4, "point_left_top"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 104
    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$newOptions:Landroid/os/Bundle;

    const-string v4, "point_right_bottom"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    :goto_0
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_1
    return-object v9

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WidgetProvider"

    const-string v4, "exception in getIntArray"

    invoke-static {v3, v4, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    aget v3, v2, v7

    aget v4, v1, v7

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    aget v3, v2, v8

    aget v4, v1, v8

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 115
    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefStringByCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "WidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$appWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onAppWidgetOptionsChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

    iget-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$context:Landroid/content/Context;

    iget v5, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->val$appWidgetId:I

    invoke-virtual {v3, v4, v1, v2, v5}, Lcn/nubia/weather/ui/widget/WidgetProvider;->setWidgetColor(Landroid/content/Context;[I[II)V

    goto/16 :goto_1
.end method
