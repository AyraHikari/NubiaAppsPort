.class public Lcn/nubia/touping/WiredlessAndWiredSettingActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "WiredlessAndWiredSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WiredlessAndWiredSettingActivity"


# instance fields
.field private currentNum:I

.field private leftImageView:Landroid/widget/ImageView;

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private pic3_imag:Landroid/widget/ImageView;

.field private rightImageView:Landroid/widget/ImageView;

.field private settings_back:Landroid/view/View;

.field private settings_help:Landroid/widget/RelativeLayout;

.field private settings_usbmirror:Landroid/widget/RelativeLayout;

.field private settings_wired:Landroid/widget/RelativeLayout;

.field private settings_wiredless:Landroid/widget/RelativeLayout;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    return-void
.end method

.method private addPlayListener(Landroid/widget/VideoView;)V
    .locals 1
    .param p1, "videoView"    # Landroid/widget/VideoView;

    .prologue
    .line 166
    new-instance v0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;-><init>(Lcn/nubia/touping/WiredlessAndWiredSettingActivity;Landroid/widget/VideoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 180
    return-void
.end method

.method private addVideoViewBackground()V
    .locals 6

    .prologue
    .line 148
    :try_start_0
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e00fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    .line 149
    .local v1, "videoView1":Landroid/widget/VideoView;
    const v4, 0x7f0c000f

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 150
    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 152
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e0100

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    .line 153
    .local v2, "videoView2":Landroid/widget/VideoView;
    const v4, 0x7f0c000f

    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 154
    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V

    .line 156
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e0101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    .line 157
    .local v3, "videoView3":Landroid/widget/VideoView;
    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 158
    invoke-virtual {v3}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "videoView1":Landroid/widget/VideoView;
    .end local v2    # "videoView2":Landroid/widget/VideoView;
    .end local v3    # "videoView3":Landroid/widget/VideoView;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initNavData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040040

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "view1":Landroid/view/View;
    const v4, 0x7f040041

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "view2":Landroid/view/View;
    const v4, 0x7f040042

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, "view3":Landroid/view/View;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    .line 97
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f0e00b1

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_back:Landroid/view/View;

    .line 53
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_usbmirror:Landroid/widget/RelativeLayout;

    .line 54
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_wiredless:Landroid/widget/RelativeLayout;

    .line 55
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_wired:Landroid/widget/RelativeLayout;

    .line 56
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_help:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_back:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_usbmirror:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_wiredless:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_wired:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_help:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isSupportWiredScreenProjection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->settings_wired:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    :cond_0
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 71
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->initNavData()V

    .line 72
    new-instance v0, Lcn/nubia/touping/View/ViewPager2PlayVedio/ShowNavPagerAdapter;

    iget-object v1, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcn/nubia/touping/View/ViewPager2PlayVedio/ShowNavPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 73
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 76
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->leftImageView:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->rightImageView:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pic3_imag:Landroid/widget/ImageView;

    .line 79
    return-void
.end method

.method private oprateImagView()V
    .locals 4

    .prologue
    const v3, 0x7f020074

    const v2, 0x7f020073

    .line 205
    iget v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pic3_imag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pic3_imag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->pic3_imag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private oprateVideoView()V
    .locals 7

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "id":I
    const/4 v2, 0x0

    .line 185
    .local v2, "uri":Landroid/net/Uri;
    iget v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    if-nez v4, :cond_0

    .line 186
    const v0, 0x7f0e00fe

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    :goto_0
    iget-object v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->viewList:Ljava/util/List;

    iget v5, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    .line 196
    .local v3, "videoView":Landroid/widget/VideoView;
    invoke-direct {p0, v3}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->addPlayListener(Landroid/widget/VideoView;)V

    .line 197
    const-string v4, "WiredlessAndWiredSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "mMediaController":Landroid/widget/MediaController;
    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 200
    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 201
    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 202
    return-void

    .line 188
    .end local v1    # "mMediaController":Landroid/widget/MediaController;
    .end local v3    # "videoView":Landroid/widget/VideoView;
    :cond_0
    iget v4, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 189
    const v0, 0x7f0e0100

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    const v0, 0x7f0e0101

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070003

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private setCurrenView()V
    .locals 1

    .prologue
    .line 83
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->oprateVideoView()V

    .line 84
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->oprateImagView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 122
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->finish()V

    goto :goto_0

    .line 107
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcn/nubia/touping/USBMirrorSettingActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "USBsettings":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0    # "USBsettings":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/nubia/touping/SettingActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v2, "settings":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v2    # "settings":Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcn/nubia/touping/WiredSettingsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcn/nubia/touping/HelpActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00b1 -> :sswitch_0
        0x7f0e00d9 -> :sswitch_1
        0x7f0e00da -> :sswitch_2
        0x7f0e00db -> :sswitch_3
        0x7f0e00dc -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->initView()V

    .line 49
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 222
    iput p1, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->currentNum:I

    .line 223
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->setCurrenView()V

    .line 224
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onPause()V

    .line 142
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->addVideoViewBackground()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 136
    invoke-direct {p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->setCurrenView()V

    .line 137
    return-void
.end method
