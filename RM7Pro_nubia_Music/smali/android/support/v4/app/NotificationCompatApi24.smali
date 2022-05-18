.class Landroid/support/v4/app/NotificationCompatApi24;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi24$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 5

    .prologue
    .line 168
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 169
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 170
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 173
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 182
    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    .line 183
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 182
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 185
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 186
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 187
    return-void

    .line 180
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method public static addMessagingStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v0, p1}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-result-object v3

    .line 156
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 157
    new-instance v4, Landroid/app/Notification$MessagingStyle$Message;

    .line 158
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v4, v0, v6, v7, v1}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 159
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 162
    :cond_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 156
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 165
    return-void
.end method
