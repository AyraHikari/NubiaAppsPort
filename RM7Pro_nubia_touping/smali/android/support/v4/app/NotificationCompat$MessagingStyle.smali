.class public Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUserDisplayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2089
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2090
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2098
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2099
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 2100
    return-void
.end method

.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 2181
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 2182
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "android.selfDisplayName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2183
    const/4 v2, 0x0

    .line 2192
    .local v2, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :goto_0
    return-object v2

    .line 2186
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_0
    :try_start_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>()V

    .line 2187
    .restart local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2188
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :catch_0
    move-exception v0

    .line 2189
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    .restart local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    goto :goto_0
.end method

.method private findLatestIncomingMessage()Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2254
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2255
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2257
    .local v1, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2265
    .end local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :goto_1
    return-object v1

    .line 2254
    .restart local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2261
    .end local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2263
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-object v1, v2

    goto :goto_1

    .line 2265
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasMessagesWithoutSender()Z
    .locals 3

    .prologue
    .line 2269
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2270
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2271
    .local v1, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2272
    const/4 v2, 0x1

    .line 2275
    .end local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :goto_1
    return v2

    .line 2269
    .restart local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2275
    .end local v1    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 6
    .param p1, "color"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2304
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "message"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .prologue
    .line 2279
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    .line 2280
    .local v1, "bidi":Landroid/support/v4/text/BidiFormatter;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2281
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1

    const/4 v0, 0x1

    .line 2282
    .local v0, "afterLollipop":Z
    :goto_0
    if-eqz v0, :cond_2

    const/high16 v2, -0x1000000

    .line 2283
    .local v2, "color":I
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2284
    .local v3, "replyName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2285
    iget-object v7, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-nez v7, :cond_3

    const-string v3, ""

    .line 2287
    :goto_2
    if-eqz v0, :cond_0

    iget-object v7, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2288
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v2

    .line 2291
    :cond_0
    invoke-virtual {v1, v3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2292
    .local v5, "senderText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2293
    invoke-direct {p0, v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v7

    .line 2294
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 2295
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    .line 2293
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2297
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v6, ""

    .line 2298
    .local v6, "text":Ljava/lang/CharSequence;
    :goto_3
    const-string v7, "  "

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2299
    return-object v4

    .line 2281
    .end local v0    # "afterLollipop":Z
    .end local v2    # "color":I
    .end local v3    # "replyName":Ljava/lang/CharSequence;
    .end local v5    # "senderText":Ljava/lang/CharSequence;
    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2282
    .restart local v0    # "afterLollipop":Z
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 2285
    .restart local v2    # "color":I
    .restart local v3    # "replyName":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    goto :goto_2

    .line 2297
    .restart local v5    # "senderText":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_3
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2309
    invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2310
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 2311
    const-string v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2313
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2314
    const-string v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2316
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.messages"

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2317
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    .line 2316
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2319
    :cond_2
    return-void
.end method

.method public addMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .prologue
    .line 2157
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 2159
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2161
    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 2146
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2148
    :cond_0
    return-object p0
.end method

.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 13
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2201
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v8, v10, :cond_3

    .line 2202
    new-instance v8, Landroid/app/Notification$MessagingStyle;

    iget-object v9, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    invoke-direct {v8, v9}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2204
    invoke-virtual {v8, v9}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-result-object v7

    .line 2205
    .local v7, "style":Landroid/app/Notification$MessagingStyle;
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2206
    .local v5, "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 2208
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 2209
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v10

    .line 2210
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 2211
    .local v1, "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2212
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 2214
    :cond_0
    invoke-virtual {v7, v1}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_0

    .line 2216
    .end local v1    # "frameworkMessage":Landroid/app/Notification$MessagingStyle$Message;
    .end local v5    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_1
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2250
    .end local v7    # "style":Landroid/app/Notification$MessagingStyle;
    :cond_2
    :goto_1
    return-void

    .line 2218
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->findLatestIncomingMessage()Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v3

    .line 2220
    .local v3, "latestIncomingMessage":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    .line 2221
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v10, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2226
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 2227
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v8, :cond_9

    .line 2228
    invoke-direct {p0, v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2227
    :goto_3
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2232
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v8, v10, :cond_2

    .line 2233
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2234
    .local v0, "completeMessage":Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-nez v8, :cond_6

    .line 2235
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->hasMessagesWithoutSender()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    const/4 v6, 0x1

    .line 2236
    .local v6, "showNames":Z
    :goto_4
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_c

    .line 2237
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 2239
    .restart local v5    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v6, :cond_b

    invoke-direct {p0, v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2240
    .local v4, "line":Ljava/lang/CharSequence;
    :goto_6
    iget-object v8, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_7

    .line 2241
    const-string v8, "\n"

    invoke-virtual {v0, v9, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2243
    :cond_7
    invoke-virtual {v0, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2236
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 2222
    .end local v0    # "completeMessage":Landroid/text/SpannableStringBuilder;
    .end local v2    # "i":I
    .end local v4    # "line":Ljava/lang/CharSequence;
    .end local v5    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v6    # "showNames":Z
    :cond_8
    if-eqz v3, :cond_4

    .line 2223
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 2229
    :cond_9
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    .restart local v0    # "completeMessage":Landroid/text/SpannableStringBuilder;
    :cond_a
    move v6, v9

    .line 2235
    goto :goto_4

    .line 2239
    .restart local v2    # "i":I
    .restart local v5    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .restart local v6    # "showNames":Z
    :cond_b
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_6

    .line 2245
    .end local v5    # "message":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_c
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v9, 0x0

    .line 2246
    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 2247
    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto/16 :goto_1
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2125
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2327
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2328
    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 2329
    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2330
    const-string v1, "android.messages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 2331
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2332
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;

    .line 2334
    :cond_0
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .locals 0
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 2116
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 2117
    return-object p0
.end method
