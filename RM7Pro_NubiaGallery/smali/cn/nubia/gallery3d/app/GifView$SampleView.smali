.class Lcn/nubia/gallery3d/app/GifView$SampleView;
.super Lpl/droidsonroids/gif/GifImageView;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcn/nubia/gallery3d/app/GifView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GifView;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    .line 137
    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 138
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;->setBackgroundColor(I)V

    .line 139
    iput-object p2, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;->setFocusable(Z)V

    .line 144
    invoke-direct {p0, p3}, Lcn/nubia/gallery3d/app/GifView$SampleView;->initData(Landroid/net/Uri;)V

    return-void
.end method

.method private initData(Landroid/net/Uri;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/nubia/improve/drm/DrmUtil;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/nubia/improve/drm/DrmUtil;->isProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {v0}, Lcn/nubia/improve/drm/DrmUtil;->createMovie(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/app/GifView;->access$002(Lcn/nubia/gallery3d/app/GifView;Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;

    .line 154
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GifView;->access$000(Lcn/nubia/gallery3d/app/GifView;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 155
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {v0}, Lcn/nubia/improve/drm/DrmUtil;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/app/GifView;->access$102(Lcn/nubia/gallery3d/app/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "file"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    new-instance v2, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v3, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/GifView;->access$002(Lcn/nubia/gallery3d/app/GifView;Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;

    goto :goto_1

    .line 160
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    new-instance v2, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/GifView;->access$002(Lcn/nubia/gallery3d/app/GifView;Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 172
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GifView;->access$000(Lcn/nubia/gallery3d/app/GifView;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 173
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GifView;->access$000(Lcn/nubia/gallery3d/app/GifView;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 174
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GifView;->access$100(Lcn/nubia/gallery3d/app/GifView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    .line 175
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    const/16 v1, 0x12c

    invoke-static {v0, v1, v1}, Lcn/nubia/gallery3d/common/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/GifView;->access$102(Lcn/nubia/gallery3d/app/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 177
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$SampleView;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/GifView;->access$100(Lcn/nubia/gallery3d/app/GifView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/GifView$SampleView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    return-void
.end method
