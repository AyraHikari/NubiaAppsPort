.class public Lcn/nubia/music/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findColor(Landroid/view/ViewGroup;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 59
    .line 60
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 61
    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 62
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 63
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v4, v2

    move v3, v1

    .line 64
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 65
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    :goto_2
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    goto :goto_2

    :cond_2
    move v1, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return v1
.end method

.method private static getNotificationColor(Landroid/content/Context;)I
    .locals 5

    .prologue
    const v4, 0x1020016

    .line 40
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "channel_title"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 45
    invoke-static {p0, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 55
    :goto_1
    return v0

    .line 47
    :cond_0
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lcn/nubia/music/utils/NotificationUtil;->findColor(Landroid/view/ViewGroup;)I

    move-result v0

    goto :goto_1
.end method

.method public static isDarkNotificationTheme()Z
    .locals 2

    .prologue
    .line 23
    const/high16 v0, -0x1000000

    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-static {v1}, Lcn/nubia/music/utils/NotificationUtil;->getNotificationColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/utils/NotificationUtil;->isSimilarColor(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSimilarColor(II)Z
    .locals 5

    .prologue
    const/high16 v1, -0x1000000

    .line 27
    or-int v0, p0, v1

    .line 28
    or-int/2addr v1, p1

    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 32
    mul-int v1, v2, v2

    mul-int v2, v3, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 33
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
