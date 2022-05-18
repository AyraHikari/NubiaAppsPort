.class public Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;
.super Landroid/app/Activity;
.source "SlideShowSetAcitivity.java"


# instance fields
.field private actionBarSlideshowSetImageView:Landroid/widget/ImageView;

.field private actionbarSlideshowTitleTextView:Landroid/widget/TextView;

.field private layouVPlayMusic:Landroid/view/View;

.field private layoutVEffic:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

.field private mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private tvDetailsEffic:Landroid/widget/TextView;

.field private tvDetailsPlayMusic:Landroid/widget/TextView;

.field private tvTitleEffic:Landroid/widget/TextView;

.field private tvTitlePlayMusic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->startRingtonePickActivity()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Lcn/nubia/improve/slideshow/SlideShowSetting;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object p0
.end method

.method private addSwitch()V
    .locals 4

    .line 145
    new-instance v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const v0, 0x7f0900be

    .line 146
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x15

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    .line 149
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 151
    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 154
    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$6;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getFilePathFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    .line 304
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    .line 306
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p2, 0x0

    .line 308
    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 309
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method private initData()V
    .locals 3

    .line 57
    new-instance v0, Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-direct {v0, p0}, Lcn/nubia/improve/slideshow/SlideShowSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 59
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getEffectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->FilteringUIName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsEffic:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsPlayMusic:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f0900bb

    .line 69
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layoutVEffic:Landroid/view/View;

    const v0, 0x7f0900bd

    .line 70
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layouVPlayMusic:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layoutVEffic:Landroid/view/View;

    const v1, 0x7f0900bf

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvTitleEffic:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layoutVEffic:Landroid/view/View;

    const v2, 0x7f0900ba

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsEffic:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layouVPlayMusic:Landroid/view/View;

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvTitlePlayMusic:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layouVPlayMusic:Landroid/view/View;

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsPlayMusic:Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->addSwitch()V

    .line 81
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvTitleEffic:Landroid/widget/TextView;

    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvTitlePlayMusic:Landroid/widget/TextView;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layoutVEffic:Landroid/view/View;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$1;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->layouVPlayMusic:Landroid/view/View;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$2;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a0

    .line 100
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->actionBarSlideshowSetImageView:Landroid/widget/ImageView;

    const v0, 0x7f0901a1

    .line 101
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->actionbarSlideshowTitleTextView:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->actionBarSlideshowSetImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/toolbar/TopBarTitleLayout;->setPressStatus(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->actionBarSlideshowSetImageView:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$3;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->actionbarSlideshowTitleTextView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$4;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v1, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity$5;-><init>(Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private isMusicPickExist()Z
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MUSIC_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isNewMusicPickActionExist()Z
    .locals 4

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.NUBIA_MUSIC_PICK"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method private setDetatilsEffic(Ljava/lang/String;)V
    .locals 2

    .line 222
    invoke-static {p1}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->FilteringUIName(Ljava/lang/String;)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsEffic:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->setEffectName(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->Save()V

    return-void
.end method

.method private setDetatilsPlayMusic(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->tvDetailsPlayMusic:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startRingtonePickActivity()V
    .locals 6

    .line 183
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->isNewMusicPickActionExist()Z

    move-result v0

    const-string v1, "URL_VALUE"

    const/16 v2, 0x65

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v3, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "android.intent.action.NUBIA_MUSIC_PICK"

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :goto_0
    iget-object v3, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v3}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eq v4, v5, :cond_1

    .line 193
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "content://media/internal/audio/media/10000"

    .line 198
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0, v2}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 200
    :cond_2
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->isMusicPickExist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MUSIC_PICK"

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v3, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {v3}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 205
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 212
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/*"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0, v2}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v2, :cond_6

    .line 270
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.providers.media.documents"

    .line 271
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 274
    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 276
    array-length v4, p1

    sub-int/2addr v4, p3

    aget-object p1, p1, v4

    aput-object p1, v0, v3

    .line 277
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    .line 278
    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getCr()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "_id=?"

    .line 277
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->getFilePathFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 281
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p2

    if-nez p1, :cond_2

    const p2, 0x7f10020f

    .line 284
    invoke-virtual {p0, p2}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 286
    invoke-virtual {p2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v1

    .line 288
    :goto_0
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p3, p2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->setPlayMusicName(Ljava/lang/String;)V

    .line 289
    iget-object p3, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p3, p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->setPlayMusicUrl(Landroid/net/Uri;)V

    .line 290
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mSlideShowSetting:Lcn/nubia/improve/slideshow/SlideShowSetting;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->Save()V

    .line 292
    invoke-direct {p0, p2}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->setDetatilsPlayMusic(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v2, v1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->setResult(ILandroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->finish()V

    goto :goto_1

    :cond_4
    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_5

    const-string p1, "slideshow_setting_effect"

    .line 259
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->setDetatilsEffic(Ljava/lang/String;)V

    .line 262
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->finish()V

    const v0, 0x7f010011

    const v1, 0x7f010029

    .line 140
    invoke-virtual {p0, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v1, 0x400

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 242
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 247
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0042

    .line 49
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->setContentView(I)V

    .line 50
    iput-object p0, p0, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->mActivity:Landroid/app/Activity;

    .line 51
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetAcitivity;->initData()V

    return-void
.end method
