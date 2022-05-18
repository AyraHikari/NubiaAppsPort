.class public Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;
.super Landroid/app/Activity;
.source "CloudAlbumBackupSetting.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;
    }
.end annotation


# static fields
.field public static final BACK_UP_TOGGLE:Ljava/lang/String; = "back_up_toggle"

.field public static final KEY:Ljava/lang/String; = "CloudAblumBackupSetting"

.field public static final LAST_ACCOUNT:Ljava/lang/String; = "last_account"

.field public static final SET:Ljava/lang/String; = "selectedAlbums"

.field private static final TAG:Ljava/lang/String; = "Cloud_Gallery"


# instance fields
.field private final REMOVE_ALL_VIEW:I

.field private final SHOW_ALBUM:I

.field private actionBarBackImageView:Landroid/widget/ImageView;

.field private actionbarBackupSettingView:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mAlbumGroup:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

.field private mRequestReloadLocalAlbum:Z

.field private mSelectedAlbums:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->SHOW_ALBUM:I

    const/4 v1, 0x1

    .line 54
    iput v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->REMOVE_ALL_VIEW:I

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mAlbumGroup:Landroid/view/ViewGroup;

    .line 56
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    .line 58
    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mSelectedAlbums:Ljava/util/Set;

    .line 62
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    .line 65
    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$1;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/cloud/ui/AlbumInfo;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->showAlbum(Lcn/nubia/cloud/ui/AlbumInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Landroid/view/ViewGroup;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mAlbumGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->addAllAlbums()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Ljava/util/Set;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mSelectedAlbums:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Lcn/nubia/gallery3d/util/ThreadPool;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->getAlbumSetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addAllAlbums()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->reloadCloud()J

    .line 235
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubMediaSetCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 240
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 242
    invoke-direct {p0, v2}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->addOneAlbum(Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized addOneAlbum(Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 4

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 252
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    new-instance v0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;

    invoke-direct {v0, p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/gallery3d/data/MediaSet;)V

    const-string v1, "Cloud_Gallery"

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mLocalAlbumSet addOneAlbum set name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$CoverBitmapLoader;->startLoad()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAlbumSetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initData()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    .line 163
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    const/16 v2, 0x21

    .line 164
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iput-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    .line 166
    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selectedAlbums"

    const/4 v2, 0x0

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mSelectedAlbums:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mSelectedAlbums:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f090048

    .line 129
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mAlbumGroup:Landroid/view/ViewGroup;

    const v0, 0x7f090032

    .line 130
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->actionBarBackImageView:Landroid/widget/ImageView;

    .line 131
    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$3;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$3;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090033

    .line 140
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->actionbarBackupSettingView:Landroid/widget/TextView;

    .line 141
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->actionBarBackImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->actionbarBackupSettingView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$4;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAlbum(Lcn/nubia/cloud/ui/AlbumInfo;)V
    .locals 7

    .line 175
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090041

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090044

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090040

    .line 179
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    invoke-virtual {p1}, Lcn/nubia/cloud/ui/AlbumInfo;->getPath()Ljava/util/List;

    move-result-object v4

    .line 181
    invoke-virtual {p1}, Lcn/nubia/cloud/ui/AlbumInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p1}, Lcn/nubia/cloud/ui/AlbumInfo;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1}, Lcn/nubia/cloud/ui/AlbumInfo;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    new-instance p1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09014b

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x15

    .line 187
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x1

    .line 189
    invoke-virtual {p1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    const/16 v5, 0x118

    .line 190
    invoke-virtual {p1, v5}, Lcn/nubia/commonui/widget/NubiaSwitch;->setWidth(I)V

    const/16 v5, 0x96

    .line 191
    invoke-virtual {p1, v5}, Lcn/nubia/commonui/widget/NubiaSwitch;->setHeight(I)V

    .line 192
    iget-object v5, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 193
    invoke-virtual {p1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;

    invoke-direct {v1, p0, v4}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$5;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$6;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;Lcn/nubia/commonui/widget/NubiaSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    iget-object v4, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mSelectedAlbums:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mAlbumGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->finish()V

    const v0, 0x7f010016

    const v1, 0x7f010017

    .line 158
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->overridePendingTransition(II)V

    return-void
.end method

.method public onContentDirty()V
    .locals 5

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onContentDirty  mRequestReloadLocalAlbum : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud_Gallery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    .line 320
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubMediaSetCount()I

    move-result v2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onContentDirty  mLocalAlbumSet.getSubMediaSetCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 326
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 328
    invoke-direct {p0, v1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->addOneAlbum(Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 86
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->setContentView(I)V

    .line 88
    iput-object p0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->initView()V

    .line 90
    invoke-direct {p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    .line 124
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->removeContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mAlbumGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mRequestReloadLocalAlbum:Z

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$2;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting$2;-><init>(Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudAlbumBackupSetting;->mLocalAlbumSet:Lcn/nubia/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v0, p0}, Lcn/nubia/gallery3d/data/LocalAlbumSet;->addContentListener(Lcn/nubia/gallery3d/data/ContentListener;)V

    return-void
.end method
