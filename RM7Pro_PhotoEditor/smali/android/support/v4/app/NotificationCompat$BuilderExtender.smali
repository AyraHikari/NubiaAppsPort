.class public Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BuilderExtender"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 3

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_3
    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_4
    return-object v1
.end method
