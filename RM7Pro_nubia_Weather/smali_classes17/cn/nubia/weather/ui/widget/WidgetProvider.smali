.class public abstract Lcn/nubia/weather/ui/widget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field protected static final ALARM_CLOCK_TAB:I = 0x1

.field protected static final DESKCLOCK:Ljava/lang/String; = "android.intent.action.NUBIA.TIMEMANAGER"

.field protected static final DESKCLOCK_NEW:Ljava/lang/String; = "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

.field protected static final MESSAGE_UPDATE_WEATHER:I = 0x14000001

.field private static final TAG:Ljava/lang/String; = "WidgetProvider"

.field protected static final WEATHER_UPDATE:Ljava/lang/String; = "android.intent.action.NUBIA.WEATHER.UPDATE"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected static IsDeskClcokNewInent(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "flag":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 245
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_0
    return v0
.end method

.method public static isFontClassExisted(Ljava/lang/String;)Z
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :goto_0
    return v2

    .line 233
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x7f100161

    .line 252
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 253
    .local v0, "is24HourFormat":Z
    if-eqz v0, :cond_0

    .line 254
    const/16 v1, 0x8

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getWeatherDate(Landroid/content/Context;)V
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 96
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;

    invoke-direct {v0, p0, p4, p1, p3}, Lcn/nubia/weather/ui/widget/WidgetProvider$3;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/os/Bundle;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 123
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 84
    const-string v1, "WidgetProvider"

    const-string v2, "onDeleted"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 86
    .local v0, "appWidgetId":I
    const-string v3, "WidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE WID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "appWidgetId":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 90
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string v0, "WidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "WidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/weather/ui/widget/WidgetProvider$2;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 73
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 50
    const-string v0, "WidgetProvider"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/weather/ui/widget/WidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/content/Context;[I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 58
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 60
    return-void
.end method

.method protected reverseWithRecordedLocs(Landroid/content/Context;[I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 127
    const-string v8, "WidgetProvider"

    const-string v9, " reverseWithRecordedLocs  start "

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    array-length v9, p2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, p2, v8

    .line 129
    .local v0, "appWidgetId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {p1, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "tempLoc":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 131
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "locStrs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "loc1":[I
    const/4 v4, 0x0

    .line 135
    .local v4, "loc2":[I
    const/4 v10, 0x2

    :try_start_0
    new-array v3, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    .line 136
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v3, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v3, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v2    # "loc1":[I
    .local v3, "loc1":[I
    const/4 v10, 0x2

    :try_start_1
    new-array v5, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aget-object v11, v6, v11

    .line 139
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10

    const/4 v10, 0x1

    const/4 v11, 0x3

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "loc2":[I
    .local v5, "loc2":[I
    move-object v4, v5

    .end local v5    # "loc2":[I
    .restart local v4    # "loc2":[I
    move-object v2, v3

    .line 144
    .end local v3    # "loc1":[I
    .restart local v2    # "loc1":[I
    :goto_1
    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x0

    aget v11, v2, v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_0

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_0

    .line 145
    invoke-virtual {p0, p1, v2, v4, v0}, Lcn/nubia/weather/ui/widget/WidgetProvider;->setWidgetColor(Landroid/content/Context;[I[II)V

    .line 128
    .end local v2    # "loc1":[I
    .end local v4    # "loc2":[I
    .end local v6    # "locStrs":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 141
    .restart local v2    # "loc1":[I
    .restart local v4    # "loc2":[I
    .restart local v6    # "locStrs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse widget locs failed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid locs stored in tempLoc for WID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    .end local v2    # "loc1":[I
    .end local v4    # "loc2":[I
    .end local v6    # "locStrs":[Ljava/lang/String;
    :cond_1
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWidgetColor with empty locs for WID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x2

    new-array v11, v11, [I

    invoke-virtual {p0, p1, v10, v11, v0}, Lcn/nubia/weather/ui/widget/WidgetProvider;->setWidgetColor(Landroid/content/Context;[I[II)V

    goto :goto_2

    .line 154
    .end local v0    # "appWidgetId":I
    .end local v7    # "tempLoc":Ljava/lang/String;
    :cond_2
    return-void

    .line 141
    .restart local v0    # "appWidgetId":I
    .restart local v3    # "loc1":[I
    .restart local v4    # "loc2":[I
    .restart local v6    # "locStrs":[Ljava/lang/String;
    .restart local v7    # "tempLoc":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "loc1":[I
    .restart local v2    # "loc1":[I
    goto :goto_3
.end method

.method protected abstract setWidgetColor(Landroid/content/Context;[I[II)V
.end method

.method protected updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 161
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    .line 162
    .local v1, "WeatherCache":Lcn/nubia/weather/ui/widget/WidgetDataCache;
    iget-object v3, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 163
    .local v3, "cityName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090172

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "ellipsis":Ljava/lang/String;
    iget-object v9, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 165
    .local v9, "weatherType":Ljava/lang/String;
    const-string v6, "--"

    .line 166
    .local v6, "noDataSign":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f09018c

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 168
    :cond_0
    const v12, 0x7f10016c

    const v13, 0x7f0900f1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 169
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    const v12, 0x7f10016b

    const/4 v13, -0x1

    .line 172
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v14

    iget-boolean v14, v14, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 171
    invoke-static {v13, v14}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 173
    const v12, 0x7f100165

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    if-eqz v9, :cond_1

    .line 176
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09018d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 181
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 182
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 185
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 186
    .local v4, "cityNameLen":I
    iget-object v12, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 187
    invoke-static {v12}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 186
    invoke-static {v12}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWidgetWeatherType(I)I

    move-result v7

    .line 188
    .local v7, "resid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "weatherTypeStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 190
    .local v10, "weatherTypeLen":I
    const/4 v12, 0x7

    if-ne v4, v12, :cond_4

    .line 191
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    :goto_1
    const v12, 0x7f10016c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    iget-object v12, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v8, ""

    .line 207
    .local v8, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09004a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "centigade":Ljava/lang/String;
    const v12, 0x7f100165

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "C"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 211
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 212
    const v12, 0x7f100165

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    :goto_3
    iget-object v12, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 218
    const v12, 0x7f10016b

    const/4 v13, -0x1

    .line 219
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v14

    iget-boolean v14, v14, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 218
    invoke-static {v13, v14}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 192
    .end local v2    # "centigade":Ljava/lang/String;
    .end local v8    # "tempStr":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x7

    if-le v4, v12, :cond_5

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 201
    :cond_5
    const v12, 0x7f100164

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v12, 0x7f100164

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 205
    :cond_6
    iget-object v8, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    goto/16 :goto_2

    .line 214
    .restart local v2    # "centigade":Ljava/lang/String;
    .restart local v8    # "tempStr":Ljava/lang/String;
    :cond_7
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v12, 0x7f100165

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 221
    :cond_8
    const v12, 0x7f10016b

    .line 222
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v13

    iget-object v13, v13, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-static {v13}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 223
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v14

    iget-boolean v14, v14, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 221
    invoke-static {v13, v14}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method
