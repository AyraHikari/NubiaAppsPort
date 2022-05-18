.class Lcom/hpplay/sdk/source/player/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/d;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/player/d;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/player/d;Lcom/hpplay/sdk/source/player/d$1;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/d$a;-><init>(Lcom/hpplay/sdk/source/player/d;)V

    return-void
.end method

.method private a([B)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 764
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/d;->e()V

    .line 765
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->m(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    iget-object v6, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/d;->n(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    .line 768
    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->n(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/d;->o(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v3}, Lcom/hpplay/sdk/source/player/d;->m(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    .line 769
    invoke-static {v4}, Lcom/hpplay/sdk/source/player/d;->p(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/d;->q(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-static/range {v0 .. v5}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->makeAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    .line 773
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    :goto_1
    new-instance v1, Lcom/hpplay/sdk/source/protocol/g;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/protocol/g;-><init>()V

    .line 784
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->E()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    const-string v2, "MediaControl/1.0"

    .line 785
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->n(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->ai(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    .line 787
    invoke-static {v2}, Lcom/hpplay/sdk/source/player/d;->m(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->aa(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;

    .line 788
    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/protocol/g;->R(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/protocol/g;->x()Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v1

    .line 790
    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/g;->ac(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    .line 791
    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->r(Lcom/hpplay/sdk/source/player/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->Y(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 792
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getPushUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->Z(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 793
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->ad(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 794
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getHID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->P(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    .line 795
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->X(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->o:Ljava/lang/String;

    .line 796
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/g;->aj(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/g;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/hpplay/sdk/source/protocol/g;->a(Z)[B

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->a(Lcom/hpplay/sdk/source/player/d;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/player/d$a$1;

    invoke-direct {v2, p0}, Lcom/hpplay/sdk/source/player/d$a$1;-><init>(Lcom/hpplay/sdk/source/player/d$a;)V

    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/j;[[B)V

    .line 837
    :cond_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/d;->b(Lcom/hpplay/sdk/source/player/d;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 778
    :cond_2
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 779
    :catch_0
    move-exception v1

    .line 780
    const-string v2, "LelinkPlayerControl"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 666
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 669
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNetPictureData(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 651
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 653
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 654
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getStreaEncrypt(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;

    .line 655
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    :goto_0
    return-object v0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public run()V
    .locals 9

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 680
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 681
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/d$a;->getNetPictureData(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 736
    :goto_0
    if-nez v1, :cond_6

    .line 737
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    const/4 v1, 0x0

    const v2, 0x33450

    const v3, 0x33451

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/player/d;->a(III)V

    .line 761
    :cond_0
    :goto_1
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 685
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v3, 0x100018

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 686
    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getFileEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 688
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 690
    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    .line 692
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/d$a;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    .line 693
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 694
    const-string v1, "LelinkPlayerControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "8388608<<<<<<<<<<<<<<<<<<<<< use source bitmap >>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/d;->k(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x800000

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->k(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v4, v4, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 698
    const-string v1, "LelinkPlayerControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------------------------------> zoom >>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/player/d$a;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v5

    div-int/lit16 v5, v5, 0x400

    div-int/lit16 v5, v5, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    move-object v1, v0

    .line 720
    goto/16 :goto_0

    .line 700
    :cond_3
    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 701
    if-eqz v1, :cond_2

    .line 702
    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    goto :goto_2

    .line 706
    :catch_0
    move-exception v0

    .line 707
    :goto_3
    :try_start_4
    const-string v4, "LelinkPlayerControl"

    const-string v5, "<<<<<<<<<<<<<<<<<<<<< out of memory zoom bitmap >>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 709
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 713
    :goto_4
    :try_start_6
    const-string v3, "LelinkPlayerControl"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v3, v3, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 710
    :catch_1
    move-exception v3

    .line 711
    const-string v4, "LelinkPlayerControl"

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 718
    :catch_2
    move-exception v0

    .line 719
    :goto_5
    :try_start_7
    const-string v2, "LelinkPlayerControl"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 757
    :catch_3
    move-exception v0

    .line 758
    const-string v1, "LelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 715
    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 716
    :goto_6
    :try_start_8
    const-string v2, "LelinkPlayerControl"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 718
    :catch_5
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    .line 722
    :cond_4
    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_5

    .line 723
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLoaclUri()Landroid/net/Uri;

    move-result-object v2

    .line 724
    if-eqz v2, :cond_9

    .line 725
    if-eqz v2, :cond_9

    .line 726
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->zoomBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 727
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->strEncrpyt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;

    :goto_7
    move-object v1, v0

    .line 730
    goto/16 :goto_0

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/common/utils/PictureUtil;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 732
    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getFileEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    .line 741
    :cond_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 742
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/d;->k:Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    const v3, 0x100018

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 743
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 747
    :goto_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 749
    const-string v4, "LelinkPlayerControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " md5 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/player/d$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    if-eqz v1, :cond_7

    .line 751
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 753
    :cond_7
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/d$a;->a:Lcom/hpplay/sdk/source/player/d;

    invoke-static {v1}, Lcom/hpplay/sdk/source/player/d;->l(Lcom/hpplay/sdk/source/player/d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/player/d$a;->a([B)V

    goto/16 :goto_1

    .line 745
    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    .line 715
    :catch_6
    move-exception v1

    goto/16 :goto_6

    .line 706
    :catch_7
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_7
.end method
