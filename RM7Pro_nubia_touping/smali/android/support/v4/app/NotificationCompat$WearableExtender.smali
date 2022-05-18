.class public final Landroid/support/v4/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBridgeTag:Ljava/lang/String;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDismissalId:Ljava/lang/String;

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3387
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3392
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3393
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3394
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3396
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3406
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 13
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/16 v12, 0x50

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 3408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3387
    iput v10, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3389
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3392
    const v6, 0x800005

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3393
    iput v8, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3394
    iput v9, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3396
    iput v12, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3409
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 3410
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3412
    .local v5, "wearableBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v5, :cond_6

    .line 3413
    const-string v6, "actions"

    .line 3414
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3415
    .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_4

    if-eqz v4, :cond_4

    .line 3416
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/support/v4/app/NotificationCompat$Action;

    .line 3417
    .local v0, "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 3418
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_2

    .line 3420
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    .line 3419
    invoke-static {v6}, Landroid/support/v4/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v6

    aput-object v6, v0, v2

    .line 3417
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3410
    .end local v0    # "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    .end local v2    # "i":I
    .end local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v5    # "wearableBundle":Landroid/os/Bundle;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 3421
    .restart local v0    # "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    .restart local v2    # "i":I
    .restart local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v5    # "wearableBundle":Landroid/os/Bundle;
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_0

    .line 3423
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 3422
    invoke-static {v6}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_2

    .line 3426
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;

    .end local v0    # "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3429
    .end local v2    # "i":I
    :cond_4
    const-string v6, "flags"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3430
    const-string v6, "displayIntent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 3432
    const-string v6, "pages"

    invoke-static {v5, v6}, Landroid/support/v4/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v3

    .line 3434
    .local v3, "pages":[Landroid/app/Notification;
    if-eqz v3, :cond_5

    .line 3435
    iget-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v6, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3438
    :cond_5
    const-string v6, "background"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 3439
    const-string v6, "contentIcon"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 3440
    const-string v6, "contentIconGravity"

    const v7, 0x800005

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3442
    const-string v6, "contentActionIndex"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3444
    const-string v6, "customSizePreset"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3446
    const-string v6, "customContentHeight"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 3447
    const-string v6, "gravity"

    invoke-virtual {v5, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3448
    const-string v6, "hintScreenTimeout"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 3449
    const-string v6, "dismissalId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 3450
    const-string v6, "bridgeTag"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 3452
    .end local v3    # "pages":[Landroid/app/Notification;
    .end local v4    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_6
    return-void
.end method

.method private static getActionFromActionCompat(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/app/Notification$Action;
    .locals 8
    .param p0, "actionCompat"    # Landroid/support/v4/app/NotificationCompat$Action;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 3527
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 3528
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 3529
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3531
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3532
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3536
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_0
    const-string v5, "android.support.allowGeneratedReplies"

    .line 3537
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 3536
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3538
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 3539
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 3541
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 3542
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v3

    .line 3543
    .local v3, "remoteInputCompats":[Landroid/support/v4/app/RemoteInput;
    if-eqz v3, :cond_2

    .line 3544
    invoke-static {v3}, Landroid/support/v4/app/RemoteInput;->fromCompat([Landroid/support/v4/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v4

    .line 3545
    .local v4, "remoteInputs":[Landroid/app/RemoteInput;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v2, v4, v5

    .line 3546
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 3545
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3534
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    .end local v3    # "remoteInputCompats":[Landroid/support/v4/app/RemoteInput;
    .end local v4    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0

    .line 3549
    .restart local v3    # "remoteInputCompats":[Landroid/support/v4/app/RemoteInput;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 4100
    if-eqz p2, :cond_0

    .line 4101
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 4105
    :goto_0
    return-void

    .line 4103
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 3585
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3586
    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 3602
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3603
    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;

    .prologue
    .line 3677
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3678
    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 3692
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3693
    return-object p0
.end method

.method public clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 3612
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3613
    return-object p0
.end method

.method public clearPages()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3703
    return-object p0
.end method

.method public clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 3

    .prologue
    .line 3554
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 3555
    .local v0, "that":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3556
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3557
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 3558
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3559
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 3560
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 3561
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3562
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3563
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3564
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 3565
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3566
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 3567
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 3568
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 3569
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3284
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/16 v6, 0x10

    .line 3461
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3463
    .local v2, "wearableBundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3464
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_11

    .line 3465
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3466
    .local v1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 3467
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    .line 3469
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActionFromActionCompat(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/app/Notification$Action;

    move-result-object v4

    .line 3468
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3470
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_0

    .line 3471
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3474
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_2
    const-string v3, "actions"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3479
    .end local v1    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    :goto_1
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 3480
    const-string v3, "flags"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3482
    :cond_4
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    .line 3483
    const-string v3, "displayIntent"

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3485
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3486
    const-string v4, "pages"

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3487
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/app/Notification;

    .line 3486
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3489
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 3490
    const-string v3, "background"

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3492
    :cond_7
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v3, :cond_8

    .line 3493
    const-string v3, "contentIcon"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3495
    :cond_8
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v4, 0x800005

    if-eq v3, v4, :cond_9

    .line 3496
    const-string v3, "contentIconGravity"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3498
    :cond_9
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    .line 3499
    const-string v3, "contentActionIndex"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3502
    :cond_a
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v3, :cond_b

    .line 3503
    const-string v3, "customSizePreset"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3505
    :cond_b
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v3, :cond_c

    .line 3506
    const-string v3, "customContentHeight"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3508
    :cond_c
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_d

    .line 3509
    const-string v3, "gravity"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3511
    :cond_d
    iget v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v3, :cond_e

    .line 3512
    const-string v3, "hintScreenTimeout"

    iget v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3514
    :cond_e
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 3515
    const-string v3, "dismissalId"

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 3518
    const-string v3, "bridgeTag"

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :cond_10
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3522
    return-object p1

    .line 3476
    :cond_11
    const-string v3, "actions"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3620
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3740
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4096
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    .prologue
    .line 3813
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public getContentIcon()I
    .locals 1

    .prologue
    .line 3755
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    .prologue
    .line 3776
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 1

    .prologue
    .line 3923
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomContentHeight()I
    .locals 1

    .prologue
    .line 3882
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    .prologue
    .line 3860
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4075
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 3663
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 3834
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .locals 1

    .prologue
    .line 4030
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 1

    .prologue
    .line 3985
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .locals 1

    .prologue
    .line 4053
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintHideIcon()Z
    .locals 1

    .prologue
    .line 3942
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    .prologue
    .line 4007
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 1

    .prologue
    .line 3961
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3714
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 1

    .prologue
    .line 3901
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3727
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 3728
    return-object p0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "bridgeTag"    # Ljava/lang/String;

    .prologue
    .line 4087
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 4088
    return-object p0
.end method

.method public setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "actionIndex"    # I

    .prologue
    .line 3794
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3795
    return-object p0
.end method

.method public setContentIcon(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 3747
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 3748
    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "contentIconGravity"    # I

    .prologue
    .line 3765
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3766
    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    .prologue
    .line 3912
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 3913
    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3871
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 3872
    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "sizePreset"    # I

    .prologue
    .line 3847
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3848
    return-object p0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "dismissalId"    # Ljava/lang/String;

    .prologue
    .line 4066
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 4067
    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3654
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 3655
    return-object p0
.end method

.method public setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 3823
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3824
    return-object p0
.end method

.method public setHintAmbientBigPicture(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintAmbientBigPicture"    # Z

    .prologue
    .line 4018
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4019
    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z

    .prologue
    .line 3973
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 3974
    return-object p0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintContentIntentLaunchesActivity"    # Z

    .prologue
    .line 4042
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 4043
    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintHideIcon"    # Z

    .prologue
    .line 3932
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 3933
    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 3996
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 3997
    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z

    .prologue
    .line 3951
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 3952
    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    .prologue
    .line 3891
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 3892
    return-object p0
.end method
