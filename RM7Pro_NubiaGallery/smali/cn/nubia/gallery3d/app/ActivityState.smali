.class public abstract Lcn/nubia/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field protected static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4

.field public static final KEY_IS_FACESALBUMSET:Ljava/lang/String; = "is-facesalbumset"

.field public static final KEY_IS_HIDE_FACESALBUMSET:Ljava/lang/String; = "is-hide-facesalbumset"

.field public static final KEY_IS_LOCATIONALBUM:Ljava/lang/String; = "is-locationalbum"

.field public static final KEY_IS_LOCATIONALBUMSET:Ljava/lang/String; = "is-locationalbumset"

.field public static final KEY_IS_OTHER_ALBUMSET:Ljava/lang/String; = "is-other-albumset"

.field public static final KEY_IS_TAB:Ljava/lang/String; = "is-tab"

.field public static final KEY_IS_THINGSALBUMSET:Ljava/lang/String; = "is-thingsalbumset"

.field private static final KEY_TRANSITION_IN:Ljava/lang/String; = "transition-in"

.field private static final SCREEN_ON_FLAGS:I = 0x80081


# instance fields
.field protected mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field protected mAllowFadeTexture:Z

.field private mContentPane:Lcn/nubia/gallery3d/ui/GLView;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field private mIntroAnimation:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field protected mIsTab:Z

.field private mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPaused:Z

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 71
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPaused:Z

    .line 72
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPlugged:Z

    .line 73
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 77
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mAllowFadeTexture:Z

    .line 149
    new-instance v0, Lcn/nubia/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/ActivityState$1;-><init>(Lcn/nubia/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/ActivityState;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPlugged:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/app/ActivityState;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public hideHoverView()V
    .locals 0

    return-void
.end method

.method initialize(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 107
    iput-object p2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method isPaused()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPaused:Z

    return v0
.end method

.method public isTab()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIsTab:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/app/StateManager;->finishState(Lcn/nubia/gallery3d/app/ActivityState;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/TransitionStore;->clear()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "is-tab"

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIsTab:Z

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mDestroyed:Z

    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPaused:Z

    .line 216
    iget v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_3

    .line 221
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mContentPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->isRendering()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mAllowFadeTexture:Z

    if-eqz v0, :cond_2

    .line 222
    instance-of v0, p0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcn/nubia/gallery3d/app/CameraPage;

    if-eqz v0, :cond_2

    .line 223
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mContentPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/GLView;Ljava/lang/String;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v2, "transition-in"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/RawTexture;

    .line 298
    iget-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v3, "transition-in"

    invoke-virtual {v1, v3, v2}, Lcn/nubia/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 300
    sget-object v2, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    if-ne v1, v2, :cond_0

    .line 301
    new-instance v1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;-><init>(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIntroAnimation:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    .line 303
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onSelectionCancel()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSelectionDone(Z)V
    .locals 7

    .line 341
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getSelectionManager()Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "uri_result"

    if-eqz p1, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_1

    .line 347
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/RecycledData;

    iget-object v6, v6, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    if-ge v5, v6, :cond_0

    const-string v6, ","

    .line 349
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "_id in (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 356
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 358
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/RecycledData;

    .line 361
    iget-boolean v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    if-eqz v4, :cond_4

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/images/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 364
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/video/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 367
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 372
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onSelectionCancel()V

    :goto_3
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected performHapticFeedback(I)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method protected performLongPressHapticFeedback()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/ActivityState;->performHapticFeedback(I)V

    return-void
.end method

.method public refreshRootPane()V
    .locals 0

    return-void
.end method

.method resume()V
    .locals 4

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPaused:Z

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    move-object v1, v0

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    .line 249
    iget v2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 250
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideAppBar()V

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 252
    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/app/SlideshowPage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getTopState()Lcn/nubia/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppBar()Lcn/nubia/gallery3d/app/GalleryAppBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->showAppBar()V

    .line 255
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mReceivedResults:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 277
    iput-object v2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mReceivedResults:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    .line 278
    iget v2, v0, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v3, v0, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v0, v0, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3, v0}, Lcn/nubia/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 281
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 284
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/ActivityState;->onResume()V

    .line 291
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "transition-in"

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/TransitionStore;->clearTransition(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "resume_animation"

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/TransitionStore;->clearTransition(Ljava/lang/Object;)V

    return-void
.end method

.method protected setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mContentPane:Lcn/nubia/gallery3d/ui/GLView;

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIntroAnimation:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/GLView;->setIntroAnimation(Lcn/nubia/gallery3d/anim/StateTransitionAnimation;)V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mIntroAnimation:Lcn/nubia/gallery3d/anim/StateTransitionAnimation;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/ui/GLRoot;->setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V

    return-void
.end method

.method setScreenOnFlags()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 167
    iget v2, p0, Lcn/nubia/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v3, :cond_0

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80082

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x80081

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 179
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x80081

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 181
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x80082

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iput p1, v0, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 132
    iget-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mResult:Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, p1, Lcn/nubia/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    return-void
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/gallery3d/app/ActivityState;",
            ">;",
            "Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .line 201
    sget-object p1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/ActivityState;->mNextTransition:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;

    return-void
.end method
