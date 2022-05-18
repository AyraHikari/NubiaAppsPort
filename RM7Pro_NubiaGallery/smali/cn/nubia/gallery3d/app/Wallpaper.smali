.class public Lcn/nubia/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final IMAGE_TYPE:Ljava/lang/String; = "*/*"

.field public static final IS_LAUNCHER_START:Ljava/lang/String; = "is_launcher_start"

.field public static final IS_SAVE_DATA:Ljava/lang/String; = "issavedata"

.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field private static final KEY_STATE:Ljava/lang/String; = "activity-state"

.field private static final REQUEST_VIDEO_EDIT:I = 0x8

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PHOTO_PICKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpaper"

.field public static final WALLPAPER_TASK_INFO:Ljava/lang/String; = "wallpapertaskinfo"


# instance fields
.field private filePath:Ljava/lang/String;

.field private isImage:Z

.field private mContext:Landroid/content/Context;

.field protected mIsSupportCTADialog:Z

.field private mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

.field private mPermissionsNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->isImage:Z

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionsNames:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 82
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mIsSupportCTADialog:Z

    .line 83
    iput-object v1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/Wallpaper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->dismissPermissionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/Wallpaper;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/Wallpaper;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->dismissPermissionGuide()V

    return-void
.end method

.method private dismissPermissionDialog()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissPermissionGuide()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const v0, 0x7f100159

    const/4 v1, 0x0

    .line 384
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/Wallpaper;->setResult(I)V

    .line 386
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V

    return-void
.end method

.method private processIntent()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Wallpaper"

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "issavedata"

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "wallpapertaskinfo"

    .line 198
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 199
    iget v8, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    const-string v9, "*/*"

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    if-eq v8, v10, :cond_2

    goto/16 :goto_2

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcn/nubia/gallery3d/app/DialogPicker;

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "get_multi_content"

    .line 208
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {v1, v0, v10}, Lcn/nubia/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 212
    :cond_1
    iput v10, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    .line 216
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 218
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    .line 220
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 223
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 224
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 225
    invoke-virtual {v0, v13, v11}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 227
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 229
    iget v14, v12, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    int-to-float v15, v13

    div-float/2addr v14, v15

    .line 230
    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    int-to-float v15, v11

    div-float/2addr v12, v15

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v10, "is_launcher_start"

    if-eqz v15, :cond_3

    .line 235
    invoke-virtual {v15, v10, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    goto :goto_0

    :cond_3
    move v15, v4

    :goto_0
    const-string v4, "com.android.wallpapercropper"

    .line 237
    invoke-static {v1, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isWallpaperInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPickedItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 241
    invoke-static {v3, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->file2Content(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x2000000

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "outputX"

    .line 249
    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "outputY"

    .line 250
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "aspectX"

    .line 251
    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "aspectY"

    .line 252
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "spotlightX"

    .line 253
    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "spotlightY"

    .line 254
    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "scale"

    const/4 v4, 0x1

    .line 255
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "scaleUpIfNeeded"

    .line 256
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "noFaceDetection"

    .line 257
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "set-as-wallpaper"

    .line 258
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 259
    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    invoke-virtual {v8, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "cn.nubia.gallery3d"

    .line 262
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    :goto_1
    :try_start_1
    iget-boolean v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->isImage:Z

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {v1, v8}, Lcn/nubia/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V

    goto :goto_2

    .line 269
    :cond_5
    iget-object v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->IsNeedCutVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 271
    iget-object v0, v1, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setFilePath(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 272
    invoke-static {v1, v1, v2}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setLiveWallpaper(Landroid/content/Context;Landroid/app/Activity;I)V

    goto :goto_2

    .line 274
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v2, v1, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "playertype"

    const/4 v3, 0x1

    .line 276
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "isWallPaper"

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-class v2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V

    const/16 v2, 0x8

    .line 280
    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 283
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100298

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 288
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private showPermissionGuide(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 352
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "\n"

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1001a9

    .line 360
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 362
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000f3

    new-instance v1, Lcn/nubia/gallery3d/app/Wallpaper$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/gallery3d/app/Wallpaper$4;-><init>(Lcn/nubia/gallery3d/app/Wallpaper;Landroid/content/Context;)V

    .line 363
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance v0, Lcn/nubia/gallery3d/app/Wallpaper$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/Wallpaper$3;-><init>(Lcn/nubia/gallery3d/app/Wallpaper;)V

    .line 371
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    .line 377
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionUserGuideDialog(Landroid/content/Context;)V
    .locals 8

    .line 330
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    sget-object v0, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 335
    invoke-static {p1, v5}, Lcn/nubia/gallery3d/permission/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    invoke-static {p0, v5}, Lcn/nubia/gallery3d/permission/PermissionUtil;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 337
    iget-object v5, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcn/nubia/gallery3d/permission/PermissionUtil;->REQUIRED_PERMISSIONS_NAME:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 343
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionsNames:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/app/Wallpaper;->showPermissionGuide(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const p1, 0x7f100159

    .line 345
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 346
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public createPermissionDialogForCTA()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mIsSupportCTADialog:Z

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 132
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f1100b4

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f0c004f

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    const v1, 0x7f090065

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090115

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 143
    new-instance v2, Lcn/nubia/gallery3d/app/Wallpaper$1;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/app/Wallpaper$1;-><init>(Lcn/nubia/gallery3d/app/Wallpaper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 151
    new-instance v1, Lcn/nubia/gallery3d/app/Wallpaper$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/Wallpaper$2;-><init>(Lcn/nubia/gallery3d/app/Wallpaper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 297
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/app/Wallpaper;->setResult(I)V

    .line 298
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->finish()V

    return-void

    .line 301
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 303
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string p1, "is_image"

    .line 304
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->isImage:Z

    const-string p1, "file_path"

    .line 305
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->filePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "isWallPaper"

    const/4 p2, 0x0

    .line 309
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p1, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setFilePath(Ljava/lang/String;)V

    .line 311
    invoke-static {p0, p0, p2}, Lcn/nubia/gallery3d/dynamicwallpaper/util/WallpaperUtil;->setLiveWallpaper(Landroid/content/Context;Landroid/app/Activity;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "activity-state"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    const-string v0, "picked-item"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() mPickedItem:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 394
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 321
    invoke-static {p3}, Lcn/nubia/gallery3d/permission/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0, p0}, Lcn/nubia/gallery3d/app/Wallpaper;->showPermissionUserGuideDialog(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPermissionGuideAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->createPermissionDialogForCTA()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Wallpaper;->processIntent()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    iget v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mState:I

    const-string v1, "activity-state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v1, "picked-item"

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
