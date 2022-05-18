.class public Lcn/nubia/commonui/widget/VideoForceTouchWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RemoteViews;

.field private b:Landroid/appwidget/AppWidgetManager;

.field private c:[I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/widget/VideoForceTouchWidget;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->c:[I

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/list/app/a;

    .line 2
    new-instance v0, Lb/a/b/c/b/o;

    invoke-direct {v0, p1}, Lb/a/b/c/b/o;-><init>(Lcn/nubia/video/list/app/a;)V

    const/4 p1, 0x0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, p1, v1}, Lb/a/b/c/b/o;->h(II)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090171

    const-string v1, "ACTION_CLICK_OPEN_APP"

    .line 2
    invoke-direct {p0, v1, v0, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->k(ILandroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->c:[I

    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->e(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/list/app/a;

    .line 7
    new-instance v1, Lcn/nubia/commonui/widget/a;

    iget-object v2, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d:Ljava/util/ArrayList;

    new-instance v3, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;

    invoke-direct {v3, p0, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;-><init>(Lcn/nubia/commonui/widget/VideoForceTouchWidget;Landroid/content/Context;)V

    invoke-direct {v1, v2, v0, v3}, Lcn/nubia/commonui/widget/a;-><init>(Ljava/util/ArrayList;Lcn/nubia/video/list/app/a;Lcn/nubia/commonui/widget/a$c;)V

    .line 8
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/a;->i()V

    :goto_0
    return-void
.end method

.method private g(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_CLICK_IMG1"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->l(ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_CLICK_IMG2"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->l(ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_CLICK_IMG3"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->l(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v0, "ACTION_CLICK_OPEN_CAMERA"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2}, Lb/a/b/d/e;->Q(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "ACTION_CLICK_OPEN_APP"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->m(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v0, "ACTION_CLICK_MORE"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->m(Landroid/content/Context;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private h(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    const-string v0, "ACTION_CLICK_IMG1"

    const v1, 0x7f09003b

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v0, "ACTION_CLICK_IMG2"

    const v1, 0x7f09003c

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v0, "ACTION_CLICK_IMG3"

    const v1, 0x7f09003d

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v0, "ACTION_CLICK_MORE"

    const v1, 0x7f090177

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->j(Ljava/lang/String;ILandroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private j(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 3
    invoke-static {p3, p1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 4
    iget-object p3, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private l(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->e(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/c/b/m;

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-class p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/video/list/app/VideoListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected i(ZIII)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    iget-object p2, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3
    iget-object p2, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method protected k(ILandroid/content/Context;)V
    .locals 6

    const v0, 0x7f090174

    const v1, 0x7f090171

    const v2, 0x7f090176

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    const v0, 0x7f0f00f5

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    const v0, 0x7f0f00f7

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 10
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 12
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    const v0, 0x7f0f00f6

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    const v0, 0x7f0f00f8

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 19
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p1, 0x7f090038

    const p2, 0x7f09003e

    const v0, 0x7f09003b

    .line 21
    invoke-virtual {p0, v4, p1, p2, v0}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    const p1, 0x7f090039

    const p2, 0x7f09003f

    const v0, 0x7f09003c

    .line 22
    invoke-virtual {p0, v4, p1, p2, v0}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    const p1, 0x7f09003a

    const p2, 0x7f090040

    const v0, 0x7f09003d

    .line 23
    invoke-virtual {p0, v4, p1, p2, v0}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    .line 24
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    const p2, 0x7f090177

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p2, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->g(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    iput-object p2, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b:Landroid/appwidget/AppWidgetManager;

    .line 3
    iput-object p3, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->c:[I

    .line 4
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a:Landroid/widget/RemoteViews;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->h(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->f(Landroid/content/Context;)V

    return-void
.end method
