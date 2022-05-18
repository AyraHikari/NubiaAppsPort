.class final Lcn/nubia/music/utils/imageloader/a;
.super Ljava/lang/Object;
.source "GlideImageFetcher.java"

# interfaces
.implements Lcn/nubia/music/utils/imageloader/IFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/imageloader/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcn/nubia/music/utils/imageloader/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcn/nubia/music/utils/imageloader/a;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/a;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/imageloader/a;->a:Lcn/nubia/music/utils/imageloader/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V
    .locals 8

    .prologue
    .line 212
    if-nez p3, :cond_0

    .line 213
    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefault()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object p3

    .line 215
    :cond_0
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v4

    .line 216
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v6

    .line 217
    invoke-virtual {p5}, Lcom/bumptech/glide/d;->d()Lcom/bumptech/glide/b;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object v7

    .line 219
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 220
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/a;

    .line 222
    :cond_1
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->f()Z

    move-result v3

    .line 223
    new-instance v0, Lcn/nubia/music/utils/imageloader/a$3;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcn/nubia/music/utils/imageloader/a$3;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/ImageView;ZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V

    .line 271
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    if-lez v1, :cond_2

    .line 272
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/bumptech/glide/a;->a(II)Lcom/bumptech/glide/a;

    .line 274
    :cond_2
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    if-lez v1, :cond_3

    .line 275
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->c(I)Lcom/bumptech/glide/a;

    .line 277
    :cond_3
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    if-lez v1, :cond_4

    .line 278
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->b(I)Lcom/bumptech/glide/a;

    .line 280
    :cond_4
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    if-lez v1, :cond_6

    .line 282
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->a(I)Lcom/bumptech/glide/a;

    .line 288
    :cond_5
    :goto_0
    invoke-virtual {v7, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/b/i;)Lcom/bumptech/glide/request/b/i;

    .line 289
    return-void

    .line 284
    :cond_6
    invoke-virtual {v7}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V
    .locals 7

    .prologue
    .line 292
    if-nez p3, :cond_0

    .line 293
    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefault()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object p3

    .line 295
    :cond_0
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v3

    .line 296
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v5

    .line 297
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p5, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v6

    .line 298
    new-instance v0, Lcn/nubia/music/utils/imageloader/a$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/a$4;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V

    .line 331
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 332
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    .line 334
    :cond_1
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    if-lez v1, :cond_2

    .line 335
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    .line 337
    :cond_2
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    if-lez v1, :cond_3

    .line 338
    invoke-virtual {p3}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    .line 340
    :cond_3
    invoke-virtual {v6, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/request/b/i;)Lcom/bumptech/glide/request/b/i;

    .line 341
    return-void
.end method


# virtual methods
.method public clearDiskCache(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 345
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->f()V

    .line 346
    return-void
.end method

.method public displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 8

    .prologue
    .line 129
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 130
    if-nez p4, :cond_0

    .line 131
    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefault()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object p4

    .line 133
    :cond_0
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v4

    .line 134
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v6

    .line 135
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->d()Lcom/bumptech/glide/b;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object v7

    .line 137
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 138
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/a;

    .line 140
    :cond_1
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->f()Z

    move-result v3

    .line 141
    new-instance v0, Lcn/nubia/music/utils/imageloader/a$2;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/music/utils/imageloader/a$2;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/app/Notification$Builder;ZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V

    .line 180
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    if-lez v1, :cond_2

    .line 181
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/bumptech/glide/a;->a(II)Lcom/bumptech/glide/a;

    .line 183
    :cond_2
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    if-lez v1, :cond_3

    .line 184
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->c(I)Lcom/bumptech/glide/a;

    .line 186
    :cond_3
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    if-lez v1, :cond_4

    .line 187
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->b(I)Lcom/bumptech/glide/a;

    .line 189
    :cond_4
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    if-lez v1, :cond_6

    .line 191
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bumptech/glide/a;->a(I)Lcom/bumptech/glide/a;

    .line 196
    :cond_5
    :goto_0
    invoke-virtual {v7, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/b/i;)Lcom/bumptech/glide/request/b/i;

    .line 197
    return-void

    .line 193
    :cond_6
    invoke-virtual {v7}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    goto :goto_0
.end method

.method public displayGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 207
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 208
    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/a;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V

    .line 209
    return-void
.end method

.method public displayImage(Landroid/content/Context;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 201
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v5

    .line 202
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V

    .line 203
    return-void
.end method

.method public displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 6

    .prologue
    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 46
    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;Lcom/bumptech/glide/d;)V

    .line 47
    return-void
.end method

.method public displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
    .locals 9

    .prologue
    .line 52
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 53
    if-nez p4, :cond_0

    .line 54
    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getDefault()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object p4

    .line 56
    :cond_0
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v5

    .line 57
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v7

    .line 58
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->d()Lcom/bumptech/glide/b;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/a;

    move-result-object v8

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 61
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/a;

    .line 63
    :cond_1
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->f()Z

    move-result v4

    .line 64
    new-instance v0, Lcn/nubia/music/utils/imageloader/a$1;

    const v3, 0x7f100081

    move-object v1, p0

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcn/nubia/music/utils/imageloader/a$1;-><init>(Lcn/nubia/music/utils/imageloader/a;Landroid/widget/RemoteViews;IZILcn/nubia/music/utils/imageloader/ImageLoaderListener;I)V

    .line 106
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    if-lez v1, :cond_2

    .line 107
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->a()I

    move-result v1

    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->b()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lcom/bumptech/glide/a;->a(II)Lcom/bumptech/glide/a;

    .line 109
    :cond_2
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    if-lez v1, :cond_3

    .line 110
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->d()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/a;->c(I)Lcom/bumptech/glide/a;

    .line 112
    :cond_3
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    if-lez v1, :cond_4

    .line 113
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->c()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/a;->b(I)Lcom/bumptech/glide/a;

    .line 115
    :cond_4
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    if-lez v1, :cond_6

    .line 117
    invoke-virtual {p4}, Lcn/nubia/music/utils/imageloader/DisplayOptions;->h()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/a;->a(I)Lcom/bumptech/glide/a;

    .line 123
    :cond_5
    :goto_0
    invoke-virtual {v8, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/request/b/i;)Lcom/bumptech/glide/request/b/i;

    .line 124
    return-void

    .line 119
    :cond_6
    invoke-virtual {v8}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    goto :goto_0
.end method

.method public downloadOnly(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    if-lez p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 351
    if-lez p4, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 352
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    .line 354
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/d;->c(II)Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 356
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    :cond_1
    move v1, v2

    .line 351
    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public pause(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->b()V

    .line 35
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->c()V

    .line 40
    return-void
.end method
