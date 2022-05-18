.class public Lcn/nubia/improve/slideshow/SlideShowWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SlideShowWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumWidgetProvider"

.field private static rv:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static buildWidget(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    .line 39
    new-instance v0, Landroid/widget/RemoteViews;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0c0047

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppWidget: appWidgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumWidgetProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0047

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/improve/slideshow/SlideShowWidgetProvider;->rv:Landroid/widget/RemoteViews;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/improve/slideshow/SlideShowShortcuts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 68
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 69
    sget-object v0, Lcn/nubia/improve/slideshow/SlideShowWidgetProvider;->rv:Landroid/widget/RemoteViews;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    sget-object p0, Lcn/nubia/improve/slideshow/SlideShowWidgetProvider;->rv:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const-string v0, "AlbumWidgetProvider"

    const-string v1, "onUpdate()"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    array-length v1, p3

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appWidgetIds.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    aget v2, p3, v0

    .line 55
    invoke-static {p1, p2, v2}, Lcn/nubia/improve/slideshow/SlideShowWidgetProvider;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
