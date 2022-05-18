.class public Lcn/nubia/image3d/Image3dPlayerActivity;
.super Landroid/app/Activity;
.source "Image3dPlayerActivity.java"

# interfaces
.implements Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;
    }
.end annotation


# static fields
.field public static final KEY_CAMERA_SCREEN_BRIGHTNESS:Ljava/lang/String; = "camera_screen_light"

.field private static final TAG:Ljava/lang/String; = "Image3dPlayerActivity"


# instance fields
.field private layoutActionBar:Landroid/widget/RelativeLayout;

.field private layoutContainer:Landroid/widget/RelativeLayout;

.field private mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

.field private mContext:Landroid/content/Context;

.field private mDecoderCompleted:Z

.field private mDirection:I

.field private mDisplayActionEnd:Z

.field private mHandler:Landroid/os/Handler;

.field private mOpenSensorControl:Z

.field private mPath:Ljava/lang/String;

.field private mPlayController:Lcn/nubia/image3d/Image3dPlayController;

.field private mReader:Lcn/nubia/image3d/Image3DFileReader;

.field private mRotaion:I

.field private mSensor:Lcn/nubia/image3d/GyroscopeSensor;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    .line 33
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    .line 34
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDecoderCompleted:Z

    .line 36
    iput-boolean v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mOpenSensorControl:Z

    .line 37
    iput-boolean v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDisplayActionEnd:Z

    .line 38
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPath:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoWidth:I

    .line 44
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoHeight:I

    .line 45
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDirection:I

    .line 46
    iput v1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mRotaion:I

    .line 48
    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mContext:Landroid/content/Context;

    .line 343
    new-instance v0, Lcn/nubia/image3d/Image3dPlayerActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/image3d/Image3dPlayerActivity$3;-><init>(Lcn/nubia/image3d/Image3dPlayerActivity;)V

    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3DFileReader;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/image3d/Image3dPlayerActivity;Lcn/nubia/image3d/Image3DFileReader;)Lcn/nubia/image3d/Image3DFileReader;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/image3d/Image3dPlayerActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDecoderCompleted:Z

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/image3d/Image3dPlayerActivity;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDecoderCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/image3d/Image3dPlayerActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/image3d/Image3dPlayerActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/image3d/Image3dPlayerActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcn/nubia/image3d/Image3dPlayerActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/image3d/Image3dPlayerActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->closeActivity()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/image3d/Image3dPlayerActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDirection:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/image3d/Image3dPlayerActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDirection:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/image3d/Image3dPlayerActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mRotaion:I

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/image3d/Image3dPlayerActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mRotaion:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/image3d/Image3dPlayerActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDisplayActionEnd:Z

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDisplayActionEnd:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/GyroscopeSensor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/image3d/Image3dPlayerActivity;)Lcn/nubia/image3d/Image3dPlayController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/image3d/Image3dPlayerActivity;Lcn/nubia/image3d/Image3dPlayController;)Lcn/nubia/image3d/Image3dPlayController;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    return-object p1
.end method

.method static synthetic access$702(Lcn/nubia/image3d/Image3dPlayerActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mOpenSensorControl:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/image3d/Image3dPlayerActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->updateActionBar()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/image3d/Image3dPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method private closeActivity()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->finish()V

    return-void
.end method

.method private doNavigationJob()V
    .locals 2

    .line 83
    new-instance v0, Lcn/nubia/commonui/app/AdjustNavUtils;

    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Lcn/nubia/image3d/Image3dPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcn/nubia/commonui/app/AdjustNavUtils;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    .line 84
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->showNavigationBar()V

    return-void
.end method

.method private hideNavigationBar()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    new-instance v1, Lcn/nubia/image3d/Image3dPlayerActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/image3d/Image3dPlayerActivity$1;-><init>(Lcn/nubia/image3d/Image3dPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    new-instance v1, Lcn/nubia/image3d/Image3dPlayerActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/image3d/Image3dPlayerActivity$2;-><init>(Lcn/nubia/image3d/Image3dPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showNavigationBar()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateActionBar()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->showNavigationBar()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->hideNavigationBar()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0035

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPath:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "az---path:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Image3dPlayerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "camera_screen_light"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    .line 60
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/app/ScreenBrightness;->set(Landroid/app/Activity;F)V

    const p1, 0x7f0900cc

    .line 61
    invoke-virtual {p0, p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0900b2

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/image3d/Image3dPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutActionBar:Landroid/widget/RelativeLayout;

    .line 63
    new-instance p1, Lcn/nubia/image3d/GyroscopeSensor;

    invoke-direct {p1, p0}, Lcn/nubia/image3d/GyroscopeSensor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    .line 64
    invoke-virtual {p1, p0}, Lcn/nubia/image3d/GyroscopeSensor;->setListener(Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;)V

    .line 66
    new-instance p1, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;

    invoke-direct {p1, p0, p0}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;-><init>(Lcn/nubia/image3d/Image3dPlayerActivity;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcn/nubia/image3d/Image3dPlayerActivity$Image3dVideoView;->setClickable(Z)V

    .line 69
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->layoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->setListener()V

    .line 71
    invoke-direct {p0}, Lcn/nubia/image3d/Image3dPlayerActivity;->doNavigationJob()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mAdjustNavUtils:Lcn/nubia/commonui/app/AdjustNavUtils;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AdjustNavUtils;->removeGlobalLayoutListerner()V

    return-void
.end method

.method public onGyroscopeSensorChanged(FFFFFF)V
    .locals 0

    .line 311
    iget-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDecoderCompleted:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mOpenSensorControl:Z

    if-eqz p1, :cond_3

    .line 315
    iget-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDisplayActionEnd:Z

    if-nez p1, :cond_0

    .line 316
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3DFileReader;->closeDisplayAction()V

    .line 317
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Lcn/nubia/image3d/GyroscopeSensor;->setSensorEventOmegaMagnitude(F)V

    .line 318
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    iget-object p2, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    invoke-virtual {p2}, Lcn/nubia/image3d/Image3DFileReader;->getCurrentIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/image3d/Image3dPlayController;->setCurrentFrameIndex(I)V

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mDisplayActionEnd:Z

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    invoke-virtual {p1}, Lcn/nubia/image3d/Image3dPlayController;->getCurrentFrameIndex()I

    move-result p1

    .line 324
    iget-object p3, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mPlayController:Lcn/nubia/image3d/Image3dPlayController;

    invoke-virtual {p3, p2, p4}, Lcn/nubia/image3d/Image3dPlayController;->getIndexFromAngle(FF)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    if-gt p2, p1, :cond_2

    :goto_0
    if-lt p1, p2, :cond_3

    .line 332
    iget-object p3, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    invoke-virtual {p3, p2}, Lcn/nubia/image3d/Image3DFileReader;->seekTo(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, p2, :cond_3

    .line 337
    iget-object p3, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mReader:Lcn/nubia/image3d/Image3DFileReader;

    invoke-virtual {p3, p2}, Lcn/nubia/image3d/Image3DFileReader;->seekTo(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    invoke-virtual {v0}, Lcn/nubia/image3d/GyroscopeSensor;->closeSensor()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object v0, p0, Lcn/nubia/image3d/Image3dPlayerActivity;->mSensor:Lcn/nubia/image3d/GyroscopeSensor;

    invoke-virtual {v0}, Lcn/nubia/image3d/GyroscopeSensor;->openSensor()V

    return-void
.end method
