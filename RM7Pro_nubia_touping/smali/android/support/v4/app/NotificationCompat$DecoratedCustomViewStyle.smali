.class public Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2625
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2626
    return-void
.end method

.method private createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "innerView"    # Landroid/widget/RemoteViews;
    .param p2, "showActions"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2697
    const/4 v6, 0x1

    sget v7, Landroid/support/compat/R$layout;->notification_template_custom_big:I

    invoke-virtual {p0, v6, v7, v0}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 2699
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    sget v6, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2700
    const/4 v1, 0x0

    .line 2701
    .local v1, "actionsVisible":Z
    if-eqz p2, :cond_0

    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 2702
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2703
    .local v4, "numActions":I
    if-lez v4, :cond_0

    .line 2704
    const/4 v1, 0x1

    .line 2705
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2706
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {p0, v6}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 2707
    .local v2, "button":Landroid/widget/RemoteViews;
    sget v6, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2705
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2711
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    .end local v4    # "numActions":I
    :cond_0
    if-eqz v1, :cond_1

    .line 2712
    .local v0, "actionVisibility":I
    :goto_1
    sget v6, Landroid/support/compat/R$id;->actions:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2713
    sget v6, Landroid/support/compat/R$id;->action_divider:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2714
    invoke-virtual {p0, v5, p1}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2715
    return-object v5

    .line 2711
    .end local v0    # "actionVisibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private generateActionButton(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 2719
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 2720
    .local v1, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    sget v2, Landroid/support/compat/R$layout;->notification_action_tombstone:I

    :goto_1
    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2723
    .local v0, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/compat/R$id;->action_image:I

    .line 2724
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/compat/R$color;->notification_action_color_filter:I

    .line 2725
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2724
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2723
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2726
    sget v2, Landroid/support/compat/R$id;->action_text:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2727
    if-nez v1, :cond_0

    .line 2728
    sget v2, Landroid/support/compat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2730
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 2731
    sget v2, Landroid/support/compat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 2733
    :cond_1
    return-object v0

    .line 2719
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v1    # "tombstone":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2720
    .restart local v1    # "tombstone":Z
    :cond_3
    sget v2, Landroid/support/compat/R$layout;->notification_action:I

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2635
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2637
    :cond_0
    return-void
.end method

.method public makeBigContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2662
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 2674
    :cond_0
    :goto_0
    return-object v2

    .line 2666
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2667
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 2670
    .local v1, "innerView":Landroid/widget/RemoteViews;
    :goto_1
    if-eqz v1, :cond_0

    .line 2674
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    .line 2667
    .end local v1    # "innerView":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2669
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1
.end method

.method public makeContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2645
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-object v0

    .line 2649
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2653
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method public makeHeadsUpContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2683
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 2693
    :cond_0
    :goto_0
    return-object v2

    .line 2687
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2688
    .local v0, "headsUp":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 2689
    .local v1, "innerView":Landroid/widget/RemoteViews;
    :goto_1
    if-eqz v0, :cond_0

    .line 2693
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    .line 2688
    .end local v1    # "innerView":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1
.end method
