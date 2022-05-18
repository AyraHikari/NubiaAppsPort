.class public Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "CloudAlbumSettingActivity.java"

# interfaces
.implements Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudAlbumSettingActivity"


# instance fields
.field private final COLOR_BLACK:I

.field private final COLOR_BLACK_NIGHT:I

.field private final COLOR_DISABLED:I

.field private final COLOR_DISABLED_NIGHT:I

.field private final COLOR_GRAY:I

.field private final COMPLETE_STATE:I

.field private final ERROR_END_STATE:I

.field private final IDLE_STATE:I

.field private final NOT_START_BY_BATTERY_LEVEL_STATE:I

.field private final NOT_START_BY_DATA_CONNECTION_STATE:I

.field private final NOT_START_BY_WLAN_CONNECTION_STATE:I

.field private final UPDATE_BACKUP_TEXTVIEW:I

.field private final UPLOADING_STATE:I

.field private mActionBarBackImageView:Landroid/widget/ImageView;

.field private mActionbarTitleTextView:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBackup:Lcn/nubia/cloud/backup/Backup;

.field private mBackupLayout:Landroid/view/View;

.field private mBackupState:I

.field private mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mBackupSwitchValue:Z

.field private mBackupTextView:Landroid/widget/TextView;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mCurrentAccountName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastAccountName:Ljava/lang/String;

.field private mNeedBackupFilesCount:I

.field private mSettingAlbumLayout:Landroid/view/View;

.field private mSettingImageView:Landroid/widget/ImageView;

.field private mTaskFailedCount:I

.field private privacyLayout:Landroid/view/View;

.field private privacyText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    .line 49
    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupState:I

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mLastAccountName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mCurrentAccountName:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mNeedBackupFilesCount:I

    .line 56
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mTaskFailedCount:I

    .line 57
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->UPDATE_BACKUP_TEXTVIEW:I

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->UPLOADING_STATE:I

    const/4 v1, 0x2

    .line 59
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COMPLETE_STATE:I

    const/4 v1, 0x3

    .line 60
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->IDLE_STATE:I

    const/4 v1, 0x4

    .line 61
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->NOT_START_BY_DATA_CONNECTION_STATE:I

    const/4 v1, 0x5

    .line 62
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->NOT_START_BY_WLAN_CONNECTION_STATE:I

    const/4 v1, 0x6

    .line 63
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->ERROR_END_STATE:I

    const/4 v1, 0x7

    .line 64
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->NOT_START_BY_BATTERY_LEVEL_STATE:I

    .line 65
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwitchValue:Z

    const v0, 0x20202020

    .line 66
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COLOR_DISABLED:I

    const/high16 v0, -0x1000000

    .line 67
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COLOR_BLACK:I

    const v0, -0x7f000001

    .line 68
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COLOR_DISABLED_NIGHT:I

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COLOR_BLACK_NIGHT:I

    const/high16 v0, -0x6f000000

    .line 70
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->COLOR_GRAY:I

    .line 72
    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$1;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mNeedBackupFilesCount:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mTaskFailedCount:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mTaskFailedCount:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Lcn/nubia/cloud/backup/Backup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$502(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwitchValue:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupState:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupState:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setTextAccordingToState(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setViewsEnabled(Z)V

    return-void
.end method

.method private addSwitch()V
    .locals 4

    .line 186
    new-instance v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    const v0, 0x7f09004d

    .line 187
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    .line 190
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 192
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 193
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private adjustTOFullScreen()V
    .locals 7

    .line 198
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/16 v2, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 200
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->needToAdjustUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    .line 202
    invoke-static {v6, v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 201
    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 204
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 207
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->needToAdjustUI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private clearCloudAlbumCache()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    if-eqz v1, :cond_0

    .line 225
    check-cast v0, Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    const/16 v1, 0x8

    .line 226
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 227
    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->clearCache()V

    :cond_0
    return-void
.end method

.method private clearCloudTaskDatabase()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method private getBooleanPref(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private initBackupSetting()V
    .locals 5

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    .line 423
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "selectedAlbums"

    .line 425
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "back_up_toggle"

    .line 427
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->addDefaultBucket()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private setBackupSwitch()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    const-string v1, "back_up_toggle"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getBooleanPref(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    return-void
.end method

.method private setBooleanPref(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActionBarBackImageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$2;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActionbarTitleTextView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$3;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$4;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingImageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$5;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$6;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupLayout:Landroid/view/View;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$7;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->privacyLayout:Landroid/view/View;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity$8;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTextAccordingToState(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    .line 389
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 386
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 371
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 368
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 380
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setViewsEnabled(Z)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    const v0, 0x7f090156

    .line 348
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    const p1, -0x7f000001

    .line 352
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 354
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const p1, 0x20202020

    .line 358
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    const/high16 p1, -0x1000000

    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 325
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 326
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->finish()V

    const v0, 0x7f010016

    const v1, 0x7f010017

    .line 327
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackupSizeChanged(I)V
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onBackupSizeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mNeedBackupFilesCount:I

    if-lez p1, :cond_1

    .line 405
    iget v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 407
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    .line 408
    iput v0, p1, Landroid/os/Message;->what:I

    .line 409
    iget v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mNeedBackupFilesCount:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 410
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 412
    iget-boolean p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwitchValue:Z

    if-nez p1, :cond_2

    .line 413
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/backup/Backup;->setBackupState(I)V

    .line 418
    :goto_0
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    invoke-virtual {p1}, Lcn/nubia/cloud/backup/Backup;->unbindService()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBackupStateChanged(I)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setTextAccordingToState(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->adjustTOFullScreen()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getGalleryActionBar()Lcn/nubia/gallery3d/app/GalleryActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryActionBar;->hide()V

    const p1, 0x7f0c0022

    .line 129
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setContentView(I)V

    .line 130
    iput-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    const p1, 0x7f090155

    .line 135
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingAlbumLayout:Landroid/view/View;

    const p1, 0x7f09012a

    .line 136
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->privacyLayout:Landroid/view/View;

    const p1, 0x7f09012b

    .line 137
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->privacyText:Landroid/widget/TextView;

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->adjustTOFullScreen()V

    const p1, 0x7f090032

    .line 140
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActionBarBackImageView:Landroid/widget/ImageView;

    const p1, 0x7f090117

    .line 141
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f09004d

    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupLayout:Landroid/view/View;

    const p1, 0x7f090157

    .line 144
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mSettingImageView:Landroid/widget/ImageView;

    const p1, 0x7f090035

    .line 145
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActionbarTitleTextView:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActionBarBackImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->addSwitch()V

    .line 148
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->initBackupSetting()V

    .line 149
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setBackupSwitch()V

    .line 151
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setListener()V

    .line 152
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    .line 153
    invoke-virtual {p1, p0}, Lcn/nubia/cloud/backup/Backup;->addOnBackupStateChangedListener(Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Lcn/nubia/cloud/backup/Backup;->removeOnBackupStateChangedListener(Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, v0}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    move-result v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNubiaAccountExist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudAlbumSettingActivity"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v1, :cond_0

    .line 163
    invoke-static {p0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 165
    :cond_0
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackup:Lcn/nubia/cloud/backup/Backup;

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getBackupState()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupState:I

    .line 169
    invoke-direct {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setTextAccordingToState(I)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->getBackupFileCount()I

    const/4 v0, 0x0

    const-string v1, "back_up_toggle"

    .line 172
    invoke-direct {p0, v1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->getBooleanPref(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwitchValue:Z

    .line 173
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwicth:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 174
    iget-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->mBackupSwitchValue:Z

    invoke-direct {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumSettingActivity;->setViewsEnabled(Z)V

    return-void
.end method
