.class public Lcn/nubia/music/activity/MediaPlaybackActivity;
.super Lcn/nubia/music/activity/BaseFragmentActivity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/MediaPlaybackActivity$c;,
        Lcn/nubia/music/activity/MediaPlaybackActivity$b;,
        Lcn/nubia/music/activity/MediaPlaybackActivity$a;
    }
.end annotation


# static fields
.field private static final CANCLE_TIMER_END_CLOSE:I = 0x0

.field private static final FIFTEEN_MINUTES:J = 0xdbba0L

.field private static final MENU_COMMOND_ADD_TO_PLAYLIST:I = 0x1

.field private static final MENU_COMMOND_DELETE_ITEM:I = 0x5

.field private static final MENU_COMMOND_ENDTIME_CLOSE_PLAYER:I = 0x0

.field private static final MENU_COMMOND_MUSIC_INFO:I = 0x3

.field private static final MENU_COMMOND_PLAYMANAGER:I = 0x4

.field private static final MENU_COMMOND_SET_TONE:I = 0x2

.field private static final MODE_ALL_REPEAT:I = 0x3

.field private static final MODE_SHUFFLE:I = 0x1

.field private static final MODE_SINGLE_REPEAT:I = 0x2

.field private static final MODE_SORT:I = 0x0

.field private static final NUBIA_BROWSER_SEARCH_ACTION:Ljava/lang/String; = "com.nubia.browser.serach.view"

.field private static final NUBIA_BROWSER_SEARCH_KEYWORD:Ljava/lang/String; = "external_url"

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final TIMER_END_CLOSE_FIFTEEN:I = 0x1

.field private static final TIMER_END_CLOSE_FIFTEEN2:I = 0x2

.field private static final TIMER_END_CLOSE_FIFTEEN3:I = 0x3

.field private static final TIMER_END_CLOSE_FIFTEEN4:I = 0x4

.field private static final TIMER_END_CLOSE_FIFTEEN6:I = 0x5


# instance fields
.field private MAP:[I

.field private builder:Lcn/nubia/commonui/app/AlertDialog;

.field private items:[Ljava/lang/String;

.field private mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

.field private mBackMenu:Landroid/widget/ImageView;

.field private mBufferProgress:F

.field private mContext:Landroid/content/Context;

.field private mCtsManager:Lcn/nubia/music/utils/CtsManager;

.field private mCurrentId:J

.field private mCurrentPos:J

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mDoubleSimBuilder:Lcn/nubia/commonui/app/AlertDialog;

.field private mDuration:J

.field private mFav_Btn:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoBuilder:Lcn/nubia/commonui/app/AlertDialog;

.field private mIntentDeRegistered:Z

.field private mIsLike:Z

.field private mLikeObserver:Lcn/nubia/music/activity/MediaPlaybackActivity$a;

.field private mMoreMenu:Landroid/widget/ImageView;

.field private mMusicPath:Ljava/lang/String;

.field private mNext_Btn:Landroid/widget/ImageView;

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mNubiaMorePopupListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mPaused:Z

.field private mPlayMode:I

.field private mPlayModeBtn:Landroid/widget/ImageView;

.field private mPlay_Btn:Landroid/widget/ImageView;

.field private mPopAdapter:Lcn/nubia/music/activity/MediaPlaybackActivity$b;

.field private mPopListView:Landroid/widget/ListView;

.field private mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

.field private mPrev_Btn:Landroid/widget/ImageView;

.field private mProgressListener:Lcn/nubia/music/app/listener/IProgressLister;

.field private mQuitBuilder:Lcn/nubia/commonui/app/AlertDialog;

.field private mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

.field private mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

.field private mSongName:Ljava/lang/String;

.field private mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTimeChooseListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTimeHandler:Landroid/os/Handler;

.field private mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

.field private mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

.field private musicInfo:[Ljava/lang/String;

.field private onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

.field private final sHandler:Landroid/os/Handler;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private setRingListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;-><init>()V

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 104
    iput-boolean v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIntentDeRegistered:Z

    .line 108
    iput-wide v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentPos:J

    .line 113
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    .line 114
    iput-wide v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mBufferProgress:F

    .line 117
    iput-boolean v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIsLike:Z

    .line 127
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMusicPath:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->items:[Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$1;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    .line 376
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$12;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->sHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$13;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 453
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$14;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 480
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$15;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mProgressListener:Lcn/nubia/music/app/listener/IProgressLister;

    .line 604
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$16;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    .line 767
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$17;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 930
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$2;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopupListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 1199
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$7;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1541
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$9;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1554
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$10;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeChooseListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/utils/CtsManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initContent()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$c;)Lcn/nubia/music/activity/MediaPlaybackActivity$c;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1402(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/app/MusicPlayer$ServiceToken;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavView()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIntentDeRegistered:Z

    return v0
.end method

.method static synthetic access$2002(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIntentDeRegistered:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mQuitBuilder:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mQuitBuilder:Lcn/nubia/commonui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->updatePlayBtn()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/ui/SeekCircleView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    return-object v0
.end method

.method static synthetic access$2500(Lcn/nubia/music/activity/MediaPlaybackActivity;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentPos:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcn/nubia/music/activity/MediaPlaybackActivity;J)J
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentPos:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcn/nubia/music/activity/MediaPlaybackActivity;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initPlayMode()V

    return-void
.end method

.method static synthetic access$2800(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavorButtonImage()V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setBottomChangeView()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->creatMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPlayModeButtonImage()V

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/music/activity/MediaPlaybackActivity;)[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->MAP:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->popupMoreMenu(I)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMusicPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcn/nubia/music/activity/MediaPlaybackActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isDRMFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcn/nubia/music/activity/MediaPlaybackActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isHasVerifyRights(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->showMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    return-object v0
.end method

.method static synthetic access$4000(Lcn/nubia/music/activity/MediaPlaybackActivity;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setRingtoneForCard(I)V

    return-void
.end method

.method static synthetic access$4200(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMoreMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPopAdapter:Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$b;)Lcn/nubia/music/activity/MediaPlaybackActivity$b;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPopAdapter:Lcn/nubia/music/activity/MediaPlaybackActivity$b;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/MediaPlaybackActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopupListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPopListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPopListView:Landroid/widget/ListView;

    return-object p1
.end method

.method private canBeShared(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1299
    .line 1300
    if-eqz p1, :cond_0

    .line 1301
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->isDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->canTransfer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1303
    :cond_0
    return v0
.end method

.method private creatMenu()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 940
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 941
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 985
    :cond_1
    :goto_0
    return v7

    .line 944
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 945
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 948
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v7

    const-string v0, "size"

    aput-object v0, v2, v6

    const-string v0, "duration"

    aput-object v0, v2, v8

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string v5, "artist"

    aput-object v5, v2, v0

    const/4 v0, 0x5

    const-string v5, "parent_path"

    aput-object v5, v2, v0

    .line 953
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 954
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 955
    new-array v0, v9, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->MAP:[I

    .line 960
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->items:[Ljava/lang/String;

    .line 961
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    .line 962
    invoke-direct {p0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getMusicInfo(Landroid/database/Cursor;)V

    .line 964
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 965
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b008e

    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v3}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 966
    const-string v0, "album"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 968
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    :cond_3
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b008d

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMenu----------mPopListView == null is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPopListView:Landroid/widget/ListView;

    if-nez v0, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 978
    :goto_2
    if-eqz v1, :cond_4

    .line 979
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->items:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->items:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v7, v6

    .line 985
    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 973
    goto :goto_1

    .line 976
    :cond_6
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00af

    invoke-static {v0, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_2

    .line 955
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private doUmeng()V
    .locals 3

    .prologue
    .line 1630
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album_tab"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method private getBuilder([Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Z)Lcn/nubia/commonui/app/AlertDialog;
    .locals 7

    .prologue
    const v6, 0x7f0b0027

    const/4 v5, 0x1

    const/16 v4, 0x3c

    .line 1064
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1106
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1070
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1071
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1073
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1077
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1078
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1079
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1080
    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1081
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1082
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$3;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 1086
    invoke-virtual {v0, v6, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1094
    if-eqz p4, :cond_3

    .line 1095
    const/4 v1, -0x2

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcn/nubia/music/activity/MediaPlaybackActivity$4;

    invoke-direct {v3, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$4;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1105
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private getMusicInfo(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/high16 v7, 0x44800000    # 1024.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const v5, 0x7f0b0094

    .line 1149
    const-string v0, "parent_path"

    .line 1150
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {p0, v5}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1154
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0091

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1156
    const-string v1, "data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    invoke-virtual {p0, v5}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    .line 1163
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0090

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1165
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 1166
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b008f

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1168
    const-string v0, "size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1170
    invoke-virtual {p0, v5}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    :goto_1
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0092

    invoke-virtual {p0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1177
    return-void

    .line 1160
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1172
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v7

    div-float/2addr v0, v7

    .line 1173
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getPlayMode(II)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 638
    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_1

    .line 640
    :cond_0
    iput v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 648
    :goto_0
    return-void

    .line 641
    :cond_1
    if-ne p1, v0, :cond_2

    .line 642
    iput v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    goto :goto_0

    .line 643
    :cond_2
    if-ne p1, v1, :cond_3

    .line 644
    iput v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    goto :goto_0

    .line 646
    :cond_3
    iput v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    goto :goto_0
.end method

.method private getTimeEndDialog([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1144
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    .line 1116
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1130
    :cond_1
    :goto_1
    invoke-virtual {v1, p1, v0, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1131
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcn/nubia/music/activity/MediaPlaybackActivity$5;

    invoke-direct {v2, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$5;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 1143
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 1118
    :cond_2
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1119
    const/4 v0, 0x1

    goto :goto_1

    .line 1120
    :cond_3
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1121
    const/4 v0, 0x2

    goto :goto_1

    .line 1122
    :cond_4
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/32 v4, 0x2932e0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1123
    const/4 v0, 0x3

    goto :goto_1

    .line 1124
    :cond_5
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1125
    const/4 v0, 0x4

    goto :goto_1

    .line 1126
    :cond_6
    sget-wide v2, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    const-wide/32 v4, 0x5265c0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1127
    const/4 v0, 0x5

    goto :goto_1
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    const-class v0, Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1639
    const-class v0, Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActionbar()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 204
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    .line 205
    return-void
.end method

.method private initContent()V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->sHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 802
    return-void
.end method

.method private initPlayMode()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 651
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_1

    .line 652
    const-string v0, "repeatmode"

    invoke-static {v3, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 654
    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 659
    :cond_0
    const-string v2, "shufflemode"

    invoke-static {v3, v2, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 661
    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 665
    :goto_0
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getPlayMode(II)V

    .line 686
    :goto_1
    return-void

    .line 668
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getRepeatMode()I

    move-result v0

    .line 669
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getShuffleMode()I

    move-result v2

    .line 670
    invoke-direct {p0, v0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getPlayMode(II)V

    .line 672
    iget v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 674
    :pswitch_0
    invoke-static {v3}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 675
    invoke-static {v4}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    goto :goto_1

    .line 678
    :pswitch_1
    invoke-static {v3}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 679
    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    goto :goto_1

    .line 682
    :pswitch_2
    invoke-static {v4}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 683
    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 208
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initActionbar()V

    .line 209
    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 210
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/SeekCircleView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    .line 213
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mProgressListener:Lcn/nubia/music/app/listener/IProgressLister;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setOnProgressLister(Lcn/nubia/music/app/listener/IProgressLister;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setColor(I)V

    .line 215
    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    .line 218
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPrev_Btn:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlay_Btn:Landroid/widget/ImageView;

    .line 224
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNext_Btn:Landroid/widget/ImageView;

    .line 225
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPrev_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlay_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNext_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMoreMenu:Landroid/widget/ImageView;

    .line 230
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMoreMenu:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/activity/MediaPlaybackActivity$11;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$11;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 264
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0, p0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    const v0, 0x7f100048

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mBackMenu:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mBackMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlay_Btn:Landroid/widget/ImageView;

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020098

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0, v2}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initPlayMode()V

    .line 282
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->replaceFragment()V

    .line 284
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setBottomChangeView()V

    .line 286
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 287
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 288
    return-void

    .line 275
    :cond_2
    const v0, 0x7f020099

    goto :goto_0
.end method

.method private isDRMFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    .line 1292
    if-eqz p1, :cond_0

    .line 1293
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->isDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1295
    :cond_0
    return v0
.end method

.method private isHasVerifyRights(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1307
    const/4 v0, 0x0

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHasVerifyRights path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1309
    if-eqz p1, :cond_0

    .line 1310
    invoke-static {p0, p1}, Lcn/nubia/music/utils/NewDrmProxy;->bSetAsRingtone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHasVerifyRights  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1314
    return v0
.end method

.method private popupMoreMenu(I)V
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 994
    packed-switch p1, :pswitch_data_0

    .line 1059
    :goto_0
    return-void

    .line 996
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeChooseListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getTimeEndDialog([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    .line 998
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timer_close"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1003
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/PlayManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1004
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1005
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play_manager"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    new-array v2, v1, [J

    iget-wide v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    aput-wide v4, v2, v6

    .line 1014
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1015
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    const-string v3, "description"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v1, "items"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1018
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1019
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1020
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1022
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete_music"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->musicInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v6, v1, v6}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getBuilder([Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Z)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mInfoBuilder:Lcn/nubia/commonui/app/AlertDialog;

    .line 1030
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "musicInfo"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :pswitch_4
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isDoubleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f0b0029

    .line 1037
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1039
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00e0

    .line 1040
    invoke-virtual {p0, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->setRingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1039
    invoke-static {v2, v0, v1, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->createDialogForRingtone(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDoubleSimBuilder:Lcn/nubia/commonui/app/AlertDialog;

    .line 1044
    :goto_1
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set_ringtone"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :cond_0
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->getCard2State(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setRingtoneForCard(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 1048
    :pswitch_5
    new-array v0, v1, [J

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    aput-wide v2, v0, v6

    .line 1051
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1052
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1053
    const-string v2, "audioslist"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1054
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1055
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_to_playlist"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private queueNextRefresh(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 590
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 591
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->refreshNow()J

    .line 592
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPaused:Z

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private refreshNow()J
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x3e8

    .line 551
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 586
    :goto_0
    return-wide v0

    .line 554
    :cond_0
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentPos:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_2

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->position()J

    move-result-wide v0

    .line 555
    :goto_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->duration()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    .line 556
    const-wide/16 v4, 0x190

    const-wide/16 v6, 0x64

    rem-long v6, v0, v6

    add-long/2addr v4, v6

    .line 557
    cmp-long v6, v0, v8

    if-ltz v6, :cond_4

    iget-wide v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 558
    iget-wide v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 560
    rem-long v6, v0, v2

    const-wide/16 v8, 0x35c

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_1

    .line 561
    iget-object v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    div-long v8, v0, v2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/music/ui/SeekCircleView;->setCurrentTime(Ljava/lang/String;)V

    .line 563
    :cond_1
    iget-object v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    div-long v8, v0, v2

    invoke-static {v8, v9}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/music/ui/SeekCircleView;->setCurrentTime(Ljava/lang/String;)V

    .line 568
    :goto_2
    iget-object v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget-wide v8, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    div-long v2, v8, v2

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcn/nubia/music/ui/SeekCircleView;->setEndTime(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    long-to-float v0, v0

    iget-wide v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    long-to-float v1, v6

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcn/nubia/music/ui/SeekCircleView;->setProgress(F)V

    .line 581
    :goto_3
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getBufferingPrecent()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mBufferProgress:F

    .line 582
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mBufferProgress:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setBufferProgress(F)V

    move-wide v0, v4

    .line 586
    goto :goto_0

    .line 554
    :cond_2
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentPos:J

    goto :goto_1

    .line 565
    :cond_3
    iget-object v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget-wide v8, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v8, v2

    invoke-static {v8, v9}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/music/ui/SeekCircleView;->setCurrentTime(Ljava/lang/String;)V

    goto :goto_2

    .line 572
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setCurrentTime(Ljava/lang/String;)V

    .line 573
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setEndTime(Ljava/lang/String;)V

    .line 578
    :goto_4
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setProgress(F)V

    goto :goto_3

    .line 576
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget-wide v6, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    div-long v2, v6, v2

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setEndTime(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setBottomChangeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavView()V

    .line 294
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPlayModeButtonImage()V

    .line 297
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPrev_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method private setFavSong()V
    .locals 4

    .prologue
    .line 360
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v0

    .line 364
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 368
    iget-boolean v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIsLike:Z

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;->unLike(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;->like(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFavView()V
    .locals 4

    .prologue
    .line 302
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v0

    .line 306
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 307
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;->isLike(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setFavorButtonImage()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavView()V

    .line 516
    return-void
.end method

.method private setPlayMode()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 715
    iget v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    packed-switch v0, :pswitch_data_0

    .line 741
    iput v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 742
    invoke-static {v2}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 743
    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 744
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_repeat"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPlayModeButtonImage()V

    .line 749
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setBottomChangeView()V

    .line 750
    return-void

    .line 720
    :pswitch_1
    iput v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 721
    invoke-static {v3}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 722
    invoke-static {v2}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 723
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "single_repeat"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :pswitch_2
    iput v4, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 728
    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 729
    invoke-static {v2}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 730
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_repeat"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :pswitch_3
    iput v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    .line 735
    invoke-static {v3}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 736
    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 737
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setPlayModeButtonImage()V
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayMode:I

    packed-switch v0, :pswitch_data_0

    .line 765
    :goto_0
    return-void

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 759
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlayModeBtn:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRingtoneForCard(I)V
    .locals 2

    .prologue
    .line 1182
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMusicPath:Ljava/lang/String;

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRingtoneForCard -- mMusicPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMusicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMusicPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1186
    :cond_0
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity$6;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1319
    return-void
.end method

.method private startPlayback()V
    .locals 3

    .prologue
    .line 689
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 691
    const-string v1, ""

    .line 692
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 695
    const-string v1, "uri not null"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 697
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 702
    :goto_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->stop()V

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 704
    invoke-static {v0}, Lcn/nubia/music/app/MusicPlayer;->openFile(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->play()V

    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 708
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->updateTrackInfo()V

    .line 709
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    .line 710
    invoke-direct {p0, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 712
    return-void

    .line 700
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePlayBtn()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "play"

    const-string v1, "--->updatePlayBtn"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlay_Btn:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPlay_Btn:Landroid/widget/ImageView;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTrackInfo()V
    .locals 6

    .prologue
    .line 519
    const-string v0, "play"

    const-string v1, "--->updateTrackInfo"

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    .line 528
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCurrentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSongName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_2
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v1, v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavorButtonImage()V

    .line 540
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setBottomChangeView()V

    .line 541
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    .line 543
    iget-wide v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSeekCircleView:Lcn/nubia/music/ui/SeekCircleView;

    iget-wide v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcn/nubia/music/utils/MusicUtils;->makeTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkCta()V
    .locals 2

    .prologue
    .line 805
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$18;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$18;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    invoke-static {p0, v0}, Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 824
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initContent()V

    goto :goto_0

    .line 810
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method

.method public createSearchLyricDialog()V
    .locals 5

    .prologue
    .line 1326
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.browser.serach.view"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1327
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 1330
    const-string v3, "external_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1643
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 1644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1645
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1648
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1284
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->finish()V

    .line 1285
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->overridePendingTransition(II)V

    .line 1287
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 319
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isFastClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 352
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPlayMode()V

    goto :goto_0

    .line 328
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setFavSong()V

    .line 329
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_music"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pre"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play_pause"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x7f100048
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1270
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1272
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setContentView(I)V

    .line 1273
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initView()V

    .line 1274
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1275
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPlayModeButtonImage()V

    .line 1276
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->updatePlayBtn()V

    .line 1277
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->dismiss()V

    .line 1280
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 167
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 168
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    iput-object p0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 171
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setContentView(I)V

    .line 172
    new-instance v0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;-><init>(Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPresenter(Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;)V

    .line 173
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initView()V

    .line 174
    new-instance v0, Lcn/nubia/music/utils/CtsManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/CtsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    .line 175
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity$a;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mLikeObserver:Lcn/nubia/music/activity/MediaPlaybackActivity$a;

    .line 176
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mLikeObserver:Lcn/nubia/music/activity/MediaPlaybackActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1213
    const-string v0, "menu"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1214
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 850
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onDestroy()V

    .line 852
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->a()V

    .line 854
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    .line 858
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mQuitBuilder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mQuitBuilder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 862
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->builder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->builder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 864
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->builder:Lcn/nubia/commonui/app/AlertDialog;

    .line 865
    const-string v0, "dismiss builder"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 868
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mInfoBuilder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 869
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mInfoBuilder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 872
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDoubleSimBuilder:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 873
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mDoubleSimBuilder:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 876
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v0, :cond_5

    .line 877
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->dismiss()V

    .line 878
    iput-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 881
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mLikeObserver:Lcn/nubia/music/activity/MediaPlaybackActivity$a;

    if-eqz v0, :cond_6

    .line 882
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mLikeObserver:Lcn/nubia/music/activity/MediaPlaybackActivity$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 884
    :cond_6
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mMoreMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1223
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MediaPlaybackActivity$8;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 1247
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1250
    :cond_0
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 889
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onPause()V

    .line 890
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->c()V

    .line 893
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 910
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 911
    const/4 v1, 0x1

    .line 912
    array-length v3, p3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget v4, p3, v2

    .line 913
    if-eqz v4, :cond_0

    .line 918
    :goto_1
    if-eqz v0, :cond_1

    .line 919
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initContent()V

    .line 928
    :goto_2
    return-void

    .line 912
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    :cond_1
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->initContent()V

    .line 927
    :cond_2
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    goto :goto_2

    .line 924
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->finish()V

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 897
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onResume()V

    .line 898
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->sHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 900
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;-><init>(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/activity/MediaPlaybackActivity$1;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    .line 902
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mTimeThread:Lcn/nubia/music/activity/MediaPlaybackActivity$c;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity$c;->start()V

    .line 905
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 794
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onStart()V

    .line 795
    const-string v0, "onStart"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->checkCta()V

    .line 797
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 828
    iput-boolean v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPaused:Z

    .line 829
    iget-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIntentDeRegistered:Z

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 839
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mScreenTimeoutListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 843
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/MusicPlayer;->unbindFromService(Lcn/nubia/music/app/MusicPlayer$ServiceToken;)V

    .line 844
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;->stop()V

    .line 845
    invoke-super {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->onStop()V

    .line 846
    return-void

    .line 840
    :catch_0
    move-exception v0

    goto :goto_1

    .line 833
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public replaceFragment()V
    .locals 4

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->doUmeng()V

    .line 1258
    invoke-virtual {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1259
    const v1, 0x7f10004d

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mSongName:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mArtistNameTextView:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 1260
    invoke-virtual {v3}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-static {v2, v3}, Lcn/nubia/music/fragment/CoverFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/music/fragment/CoverFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1262
    invoke-direct {p0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setBottomChangeView()V

    .line 1264
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public setLikeOrNot(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mIsLike:Z

    .line 146
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mFav_Btn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200de

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    return-void

    .line 146
    :cond_0
    const v0, 0x7f020138

    goto :goto_0
.end method

.method public setPresenter(Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity;->mPresenter:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    .line 141
    return-void
.end method

.method public bridge synthetic setPresenter(Lcn/nubia/music/base/BasePresenter;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->setPresenter(Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;)V

    return-void
.end method
